import os
import math
import subprocess
import setting as CFG


PLATFORM = CFG.PLATFORM
DESIGN_NAME = CFG.PETest
DESIGN_NICKNAME = '{}_{}_{}'.format(CFG.ArrayTest2, CFG.SubArrayTest2, DESIGN_NAME)

DESIGN_DIR = 'designs/{}/{}/{}/{}'.format(PLATFORM, CFG.ArrayTest2, CFG.SubArrayTest2, DESIGN_NAME)
TOP_DESIGN_DIR = CFG.DESIGN_DIR
SRC_DIR = CFG.SRC_DIR

DIE_SIZE = CFG.PE_DIE_SIZE
DIE_MARGIN = CFG.PE_DIE_MARGIN


# config.mk

PLACE_DENSITY = 0.9

with open(os.path.join(DESIGN_DIR, 'config.mk'), 'w') as f:
    def export(name, value):
        f.write('export {} = {}\n'.format(name, value))

    export('PLATFORM', '{}'.format(PLATFORM))

    export('DESIGN_NAME', '{}'.format(DESIGN_NAME))
    export('DESIGN_NICKNAME', '{}'.format(DESIGN_NICKNAME))

    export('VERILOG_FILES', '{}/{}.v'.format(SRC_DIR, DESIGN_NAME))
    export('SDC_FILE', '{}/constraint.sdc'.format(TOP_DESIGN_DIR))
    export('IO_CONSTRAINTS', '{}/io.tcl'.format(DESIGN_DIR))

    export('DIE_AREA', '0 0 {} {}'.format(DIE_SIZE, DIE_SIZE))
    export('CORE_AREA', '{} {} {} {}'.format(DIE_MARGIN, DIE_MARGIN, DIE_SIZE - DIE_MARGIN, DIE_SIZE - DIE_MARGIN))
    
    export('PLACE_DENSITY', '{}'.format(PLACE_DENSITY))

    export('MACRO_PLACE_HALO', '1 1')    
    export('GPL_TIMING_DRIVEN', '0')
    export('GPL_ROUTABLILITY_DRIVEN', '0')


# io.tcl

WIDTH = CFG.WIDTH
INTERVAL = CFG.PE_PIN_INT

def get_pin(prefix):
    return ['{}_data[{}]'.format(prefix, i) for i in range(WIDTH)]

pin_left = get_pin('io_left')
pin_right = get_pin('io_right')
pin_top = get_pin('io_top')
pin_bottom = get_pin('io_bottom')

with open(os.path.join(DESIGN_DIR, 'io.tcl'), 'w') as f:
    def place_pin(pin, layer, edge, pos, ftdb=True):
        assert layer in {0, 1, 2}
        assert edge in {'top', 'bottom', 'left', 'right'}
        layer_name = 'M{}'.format(layer * 2 + 2 if edge in {'left', 'right'} else layer * 2 + 3)
        min_width = [0.018, 0.024, 0.032][layer]
        pin_size = '{' + str(min_width) + ' ' + str(min_width) + '}'

        d_to_edge = 0
        if edge == 'top':
            location = '{' + str(pos) + ' ' + str(DIE_SIZE - d_to_edge) + '}'
        elif edge == 'bottom':
            location = '{' + str(pos) + ' ' + str(d_to_edge) + '}'
        elif edge == 'left':
            location = '{' + str(d_to_edge) + ' ' + str(pos) + '}'
        else:
            location = '{' + str(DIE_SIZE - d_to_edge) + ' ' + str(pos) + '}'

        if ftdb == True:
            ftdb = '-force_to_die_boundary'
        else:
            ftdb = ''
        f.write('place_pin -pin_name {} -layer {} -location {} -pin_size {} {}\n'.format(pin, layer_name, location, pin_size, ftdb))

    def evenly_place_pins(pins, edge, interval=(2, DIE_SIZE - 2), layers=(0, 1, 2)):
        n = math.ceil(len(pins) / len(layers))
        for layer_id, layer in enumerate(layers):
            sub_pins = pins[layer_id * n: (layer_id + 1) * n]
            d = (interval[1] - interval[0]) / (len(sub_pins) - 1)
            for i, pin in enumerate(sub_pins):
                pos = interval[0] + i * d
                place_pin(pin, layer, edge, pos)

    evenly_place_pins(pin_left, 'left', interval=INTERVAL, layers=(1,))
    evenly_place_pins(pin_right, 'right', interval=INTERVAL, layers=(1,))
    evenly_place_pins(pin_top, 'top', interval=INTERVAL, layers=(1,))
    evenly_place_pins(pin_bottom, 'bottom', interval=INTERVAL, layers=(1,))
    place_pin('clk', 1, 'left', 0.1)


subprocess.run('cp -r designs/asap7/ArrayTest2/SubArrayTest2/* designs/asap7/ArrayTest2_SubArrayTest2/', shell=True).check_returncode()
