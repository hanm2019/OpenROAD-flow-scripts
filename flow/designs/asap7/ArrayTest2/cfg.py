import os
import math
import subprocess
import setting as CFG

subprocess.run('python3 designs/asap7/ArrayTest2/cfg_sub.py', shell=True).check_returncode()


PLATFORM = CFG.PLATFORM
DESIGN_NAME = CFG.ArrayTest2
DESIGN_NICKNAME = DESIGN_NAME
BLOCK_DESIGN_NAME = CFG.SubArrayTest2

DESIGN_DIR = CFG.DESIGN_DIR
TOP_DESIGN_DIR = CFG.DESIGN_DIR
SRC_DIR = CFG.SRC_DIR

N_PE_PER_SUB = CFG.N_SUB
N_SUB = CFG.N_SUB
DIE_SIZE = CFG.TOP_DIE_SIZE
DIE_MARGIN = CFG.TOP_DIE_MARGIN


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
    # export('VERILOG_FILES_BLACKBOX', '{}/*.v'.format(SRC_DIR))
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
SUB_PIN_INT_X_LIST = CFG.TOP_SUB_PIN_INT_X_LIST
SUB_PIN_INT_Y_LIST = CFG.TOP_SUB_PIN_INT_Y_LIST

def get_pin_list(edge):
    pin_list = []
    for nsub in range(N_SUB):
        pin_sub = []
        for npe in range(N_PE_PER_SUB):
            pin_pe = ['io_{}_{}_data_{}_data[{}]'.format(edge, nsub, npe, i) for i in range(WIDTH)]
            pin_sub.append(pin_pe)
        pin_list.append(pin_sub)
    return pin_list

pin_left_list = get_pin_list('left')
pin_right_list = get_pin_list('right')
pin_top_list = get_pin_list('top')
pin_bottom_list = get_pin_list('bottom')

with open(os.path.join(DESIGN_DIR, 'io.tcl'), 'w') as f:
    def place_pin(pin, layer, edge, pos, ftdb=True):
        assert layer in {0, 1, 2}
        assert edge in {'top', 'bottom', 'left', 'right'}
        layer_name = 'M{}'.format(layer * 2 + 2 if edge in {'left', 'right'} else layer * 2 + 3)
        min_width = [0.018, 0.024, 0.032][layer]
        pin_size = '{' + str(min_width) + ' ' + str(min_width) + '}'

        # d_to_edge = max(0.5, 0.5 * DIE_MARGIN)
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

    for nsub in range(N_SUB):
        for npe in range(N_PE_PER_SUB):
            interval = SUB_PIN_INT_Y_LIST[nsub][npe]
            evenly_place_pins(pin_left_list[nsub][npe], 'left', interval=interval, layers=(1,))
            evenly_place_pins(pin_right_list[nsub][npe], 'right', interval=interval, layers=(1,))
    for nsub in range(N_SUB):
        for npe in range(N_PE_PER_SUB):
            interval = SUB_PIN_INT_X_LIST[nsub][npe]
            evenly_place_pins(pin_top_list[nsub][npe], 'top', interval=interval, layers=(1,))
            evenly_place_pins(pin_bottom_list[nsub][npe], 'bottom', interval=interval, layers=(1,))
    place_pin('clk', 1, 'left', DIE_SIZE / 2)


# mp.tcl

SUB_POS_MAT = CFG.TOP_SUB_POS_MAT

with open(os.path.join(DESIGN_DIR, 'mp.tcl'), 'w') as f:
    def write(s):
        f.write('{}\n'.format(s))

    def set_pos(name, x, y):
        write('set inst [$block findInst "{}"]'.format(name))
        write('$inst setOrient R0')
        write('$inst setOrigin {} {}'.format(round(x * 1000), round(y * 1000)))
        write('$inst setPlacementStatus FIRM')

    write('set block [ord::get_db_block]')

    for r in range(N_PE_PER_SUB):
        for c in range(N_PE_PER_SUB):
            name = 'sub_{}_{}'.format(r, c)
            x, y = SUB_POS_MAT[r][c]
            set_pos(name, x, y)


# constraint.sdc

CLK_NAME = 'clk'
CLK_PORT_NAME = CLK_NAME
CLK_PERIOD = round(1 / 0.7 * 1000)
CLK_IO_PCT = 0

with open(os.path.join(DESIGN_DIR, 'constraint.sdc'), 'w') as f:
    def sdc_set(name, value):
        f.write('set {} {}\n'.format(name, value))
    
    def sdc_line(cmd, s):
        f.write('{} {}\n'.format(cmd, s))

    sdc_line('current_design', '{}'.format(DESIGN_NAME))

    sdc_set('clk_name', '{}'.format(CLK_NAME))
    sdc_set('clk_port_name', '{}'.format(CLK_PORT_NAME))
    sdc_set('clk_period', '{}'.format(CLK_PERIOD))
    sdc_set('clk_io_pct', '{}'.format(CLK_IO_PCT))
    
    sdc_set('clk_port', r'[get_ports $clk_port_name]')
    sdc_line('create_clock', r'-name $clk_name -period $clk_period  $clk_port')
    sdc_set('non_clock_inputs', r'[lsearch -inline -all -not -exact [all_inputs] $clk_port]')
    sdc_line('set_input_delay', r'[expr $clk_period * $clk_io_pct] -clock $clk_name $non_clock_inputs')
    sdc_line('set_output_delay', r'[expr $clk_period * $clk_io_pct] -clock $clk_name [all_outputs]')