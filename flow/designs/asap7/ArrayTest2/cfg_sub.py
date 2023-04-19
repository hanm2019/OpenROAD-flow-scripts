import os
import math
import subprocess
import setting as CFG

subprocess.run('python3 designs/asap7/ArrayTest2/cfg_pe.py', shell=True).check_returncode()


PLATFORM = CFG.PLATFORM
DESIGN_NAME = CFG.SubArrayTest2
DESIGN_NICKNAME = '{}_{}'.format(CFG.ArrayTest2, DESIGN_NAME)
BLOCK_DESIGN_NAME = CFG.PETest

DESIGN_DIR = 'designs/{}/{}/{}'.format(PLATFORM, CFG.ArrayTest2, DESIGN_NAME)
TOP_DESIGN_DIR = CFG.DESIGN_DIR
SRC_DIR = CFG.SRC_DIR

N_PE = CFG.N_PE_PER_SUB
DIE_SIZE = CFG.SUB_DIE_SIZE
DIE_MARGIN = CFG.SUB_DIE_MARGIN


# config.mk

PLACE_DENSITY = 0.5

with open(os.path.join(DESIGN_DIR, 'config.mk'), 'w') as f:
    def export(name, value):
        f.write('export {} = {}\n'.format(name, value))

    export('PLATFORM', '{}'.format(PLATFORM))

    export('DESIGN_NAME', '{}'.format(DESIGN_NAME))
    export('DESIGN_NICKNAME', '{}'.format(DESIGN_NICKNAME))

    export('VERILOG_FILES', '{}/{}.v'.format(SRC_DIR, DESIGN_NAME))
    # export('VERILOG_FILES', '{}/*.v'.format(SRC_DIR))
    export('SDC_FILE', '{}/constraint.sdc'.format(TOP_DESIGN_DIR))
    export('IO_CONSTRAINTS', '{}/io.tcl'.format(DESIGN_DIR))

    f.write('BLOCKS = {}\n'.format(BLOCK_DESIGN_NAME))
    export('VERILOG_FILES_BLACKBOX', '{}/{}.v'.format(SRC_DIR, BLOCK_DESIGN_NAME))
    export('MACRO_PLACEMENT_TCL', '{}/mp.tcl'.format(DESIGN_DIR))
    export('GDS_ALLOW_EMPTY', '{}'.format(BLOCK_DESIGN_NAME))

    export('MACRO_PLACE_HALO', '1 1')
    export('GPL_TIMING_DRIVEN', '0')
    export('GPL_ROUTABLILITY_DRIVEN', '0')

    export('DIE_AREA', '0 0 {} {}'.format(DIE_SIZE, DIE_SIZE))
    export('CORE_AREA', '{} {} {} {}'.format(DIE_MARGIN, DIE_MARGIN, DIE_SIZE - DIE_MARGIN, DIE_SIZE - DIE_MARGIN))
    
    export('PLACE_DENSITY', '{}'.format(PLACE_DENSITY))


# io.tcl

WIDTH = CFG.WIDTH
PE_PIN_INT_X_LIST = CFG.SUB_PE_PIN_INT_X_LIST
PE_PIN_INT_Y_LIST = CFG.SUB_PE_PIN_INT_Y_LIST

def get_pin_list(edge, N):
    pin_list = []
    for n in range(N):
        sub_pin = ['io_{}_data_{}_data[{}]'.format(edge, n, i) for i in range(WIDTH)]
        pin_list.append(sub_pin)
    return pin_list

pin_left_list = get_pin_list('left', N_PE)
pin_right_list = get_pin_list('right', N_PE)
pin_top_list = get_pin_list('top', N_PE)
pin_bottom_list = get_pin_list('bottom', N_PE)

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

    def reverse_list(lst):
        return [i for i in reversed(lst)]

    for r, interval in enumerate(PE_PIN_INT_Y_LIST):
        evenly_place_pins(pin_left_list[r], 'left', interval=interval, layers=(1,))
        evenly_place_pins(pin_right_list[r], 'right', interval=interval, layers=(1,))
    for c, interval in enumerate(PE_PIN_INT_X_LIST):
        evenly_place_pins(pin_top_list[c], 'top', interval=interval, layers=(1,))
        evenly_place_pins(pin_bottom_list[c], 'bottom', interval=interval, layers=(1,))
    place_pin('clk', 1, 'left', DIE_SIZE / 2)


# mp.tcl

PE_POS_MAT = CFG.SUB_PE_POS_MAT

with open(os.path.join(DESIGN_DIR, 'mp.tcl'), 'w') as f:
    def write(s):
        f.write('{}\n'.format(s))

    def set_pos(name, x, y):
        write('set inst [$block findInst "{}"]'.format(name))
        write('$inst setOrient R0')
        write('$inst setOrigin {} {}'.format(round(x * 1000), round(y * 1000)))
        write('$inst setPlacementStatus FIRM')

    write('set block [ord::get_db_block]')

    for r in range(N_PE):
        for c in range(N_PE):
            name = 'pe_{}_{}'.format(r, c)
            x, y = PE_POS_MAT[r][c]
            set_pos(name, x, y)
