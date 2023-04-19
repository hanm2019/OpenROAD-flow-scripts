import os
import math
import subprocess


PLATFORM = 'asap7'
DESIGN_NAME = 'ArrayTest'
BLOCK_DESIGN_NAME = 'PETest'
DESIGN_DIR = 'designs/{}/{}'.format(PLATFORM, DESIGN_NAME)
SRC_DIR = 'designs/src/{}'.format(DESIGN_NAME)

subprocess.run('python3 {}/{}/cfg.py'.format(DESIGN_DIR, BLOCK_DESIGN_NAME), shell=True).check_returncode()



### set number of PEs ###
N_PE_ROW = 8

### consistent with marco block ###
PE_DIE = 12
PE_DIE_MARGIN = 0.48
PE_PIN_INTERVAL_SIZE = PE_DIE - 2 * PE_DIE_MARGIN

PE_GAP = PE_DIE
PE_GAP_TO_EDGE = PE_GAP * 2



# config.mk

DIE = PE_DIE * N_PE_ROW + PE_GAP * (N_PE_ROW - 1) + PE_GAP_TO_EDGE * 2
DIE_MARGIN = PE_GAP
PLACE_DENSITY = 0.5

with open(os.path.join(DESIGN_DIR, 'config.mk'), 'w') as f:
    def export(name, value):
        f.write('export {} = {}\n'.format(name, value))

    export('PLATFORM', '{}'.format(PLATFORM))

    export('DESIGN_NAME', '{}'.format(DESIGN_NAME))
    export('DESIGN_NICKNAME', '{}'.format(DESIGN_NAME))


    export('VERILOG_FILES', '{}/{}.v'.format(SRC_DIR, DESIGN_NAME))
    export('SDC_FILE', '{}/constraint.sdc'.format(DESIGN_DIR))
    export('IO_CONSTRAINTS', '{}/io.tcl'.format(DESIGN_DIR))

    f.write('BLOCKS = {}\n'.format(BLOCK_DESIGN_NAME))
    export('VERILOG_FILES_BLACKBOX', '{}/{}.v'.format(SRC_DIR, BLOCK_DESIGN_NAME))
    export('MACRO_PLACEMENT_TCL', '{}/mp.tcl'.format(DESIGN_DIR))
    export('MACRO_PLACE_HALO', '1 1')
    export('GDS_ALLOW_EMPTY', '{}'.format(BLOCK_DESIGN_NAME))

    export('DIE_AREA', '0 0 {} {}'.format(DIE, DIE))
    export('CORE_AREA', '{} {} {} {}'.format(DIE_MARGIN, DIE_MARGIN, DIE - DIE_MARGIN, DIE - DIE_MARGIN))
    
    export('PLACE_DENSITY', '{}'.format(PLACE_DENSITY))



# compute PE left-bottom positions and pin intervals
pe_pos_list = []
pe_interval_list = []
for r in range(N_PE_ROW):
    pos_list = []
    interval_list = []
    y = (N_PE_ROW - r - 1) * (PE_DIE + PE_GAP) + PE_GAP_TO_EDGE
    yc = y + PE_DIE / 2
    y_interval = (yc - PE_PIN_INTERVAL_SIZE / 2, yc + PE_PIN_INTERVAL_SIZE / 2)

    for c in range(N_PE_ROW):
        x = PE_GAP_TO_EDGE + c * (PE_DIE + PE_GAP)
        xc = x + PE_DIE / 2
        x_interval = (xc - PE_PIN_INTERVAL_SIZE / 2, xc + PE_PIN_INTERVAL_SIZE / 2)
        pos_list.append((x, y))
        interval_list.append((x_interval, y_interval))

    pe_pos_list.append(pos_list)
    pe_interval_list.append(interval_list)
# print(pe_pos_list)
# print(pe_interval_list)
        

# io.tcl

WIDTH = 16

def get_pin_list(prefix, N):
    pin_list = []
    pin = []
    for n in range(N):
        sub_pin = ['{}_{}_data[{}]'.format(prefix, n, i) for i in range(WIDTH)]
        pin_list.append(sub_pin)
        pin.extend(sub_pin)
    return pin_list, pin

pin_left_list, pin_left = get_pin_list('io_left', N_PE_ROW)
pin_right_list, pin_right = get_pin_list('io_right', N_PE_ROW)
pin_top_list, pin_top = get_pin_list('io_top', N_PE_ROW)
pin_bottom_list, pin_bottom = get_pin_list('io_bottom', N_PE_ROW)

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
            location = '{' + str(pos) + ' ' + str(DIE - d_to_edge) + '}'
        elif edge == 'bottom':
            location = '{' + str(pos) + ' ' + str(d_to_edge) + '}'
        elif edge == 'left':
            location = '{' + str(d_to_edge) + ' ' + str(pos) + '}'
        else:
            location = '{' + str(DIE - d_to_edge) + ' ' + str(pos) + '}'

        if ftdb == True:
            ftdb = '-force_to_die_boundary'
        else:
            ftdb = ''
        f.write('place_pin -pin_name {} -layer {} -location {} -pin_size {} {}\n'.format(pin, layer_name, location, pin_size, ftdb))

    def evenly_place_pins(pins, edge, interval=(2, DIE - 2), layers=(0, 1, 2)):
        n = math.ceil(len(pins) / len(layers))
        for layer_id, layer in enumerate(layers):
            sub_pins = pins[layer_id * n: (layer_id + 1) * n]
            d = (interval[1] - interval[0]) / (len(sub_pins) - 1)
            for i, pin in enumerate(sub_pins):
                pos = interval[0] + i * d
                place_pin(pin, layer, edge, pos)

    def reverse_list(lst):
        return [i for i in reversed(lst)]

    for r in range(N_PE_ROW):
        _, y_interval = pe_interval_list[r][0]
        evenly_place_pins(pin_left_list[r], 'left', interval=y_interval, layers=(1,))
        evenly_place_pins(pin_right_list[r], 'right', interval=y_interval, layers=(1,))
    for c in range(N_PE_ROW):
        x_interval, _ = pe_interval_list[0][c]
        evenly_place_pins(pin_top_list[c], 'top', interval=x_interval, layers=(1,))
        evenly_place_pins(pin_bottom_list[c], 'bottom', interval=x_interval, layers=(1,))
    place_pin('clk', 1, 'left', DIE / 2 - 0.5)
    place_pin('reset', 1, 'left', DIE / 2 + 0.5)



# constraint.sdc

clk_name = 'clk'
clk_port_name = clk_name
clk_period = round(1 / 0.7 * 1000)
clk_io_pct = 0.2

with open(os.path.join(DESIGN_DIR, 'constraint.sdc'), 'w') as f:
    def sdc_set(name, value):
        f.write('set {} {}\n'.format(name, value))
    
    def sdc_line(cmd, s):
        f.write('{} {}\n'.format(cmd, s))

    sdc_line('current_design', '{}'.format(DESIGN_NAME))

    sdc_set('clk_name', '{}'.format(clk_name))
    sdc_set('clk_port_name', '{}'.format(clk_port_name))
    sdc_set('clk_period', '{}'.format(clk_period))
    sdc_set('clk_io_pct', '{}'.format(clk_io_pct))
    
    sdc_set('clk_port', r'[get_ports $clk_port_name]')
    sdc_line('create_clock', r'-name $clk_name -period $clk_period  $clk_port')
    sdc_set('non_clock_inputs', r'[lsearch -inline -all -not -exact [all_inputs] $clk_port]')
    sdc_line('set_input_delay', r'[expr $clk_period * $clk_io_pct] -clock $clk_name $non_clock_inputs')
    sdc_line('set_output_delay', r'[expr $clk_period * $clk_io_pct] -clock $clk_name [all_outputs]')



# mp.tcl

with open(os.path.join(DESIGN_DIR, 'mp.tcl'), 'w') as f:
    def write(s):
        f.write('{}\n'.format(s))

    def set_pos(name, x, y):
        write('set inst [$block findInst "{}"]'.format(name))
        write('$inst setOrient R0')
        write('$inst setOrigin {} {}'.format(round(x * 1000), round(y * 1000)))
        write('$inst setPlacementStatus FIRM')

    write('set block [ord::get_db_block]')

    for r in range(N_PE_ROW):
        for c in range(N_PE_ROW):
            name = 'pe_{}_{}'.format(r, c)
            x, y = pe_pos_list[r][c]
            set_pos(name, x, y)
