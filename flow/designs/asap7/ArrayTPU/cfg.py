import os
import math

### Global ###
class Global:
    PLATFORM = 'asap7'

    ArrayTPU = 'ArrayTPU'
    PEWS = 'PEWS'

    SRC_DIR = 'designs/src/{}'.format(ArrayTPU)
    CFG_DIR = 'designs/{}/{}'.format(PLATFORM, ArrayTPU)

    WIDTH = 16

### PEWS ###
class PEWS:
    DIE_SIZE = (18, 18)
    DIE_MARGIN = 0
    PLACE_DENSITY = 0.9
    PIN_INT = (1, min(DIE_SIZE) - 1)

### ArrayTPU ###
class ArrayTPU:
    N_PE = (32, 32)
    PE_GAP = 8
    PE_GAP_TO_EDGE = PE_GAP

    DIE_SIZE = (
        PEWS.DIE_SIZE[0] * N_PE[0] + PE_GAP * (N_PE[0] - 1) + PE_GAP_TO_EDGE * 2,
        PEWS.DIE_SIZE[1] * N_PE[1] + PE_GAP * (N_PE[1] - 1) + PE_GAP_TO_EDGE * 2,
    )
    DIE_MARGIN = 0
    PLACE_DENSITY = 0.5

    PE_POS_MAT = []
    for r in range(N_PE[1]):
        pos_list = []
        y = PE_GAP_TO_EDGE + (N_PE[1] - r - 1) * (PEWS.DIE_SIZE[1] + PE_GAP)
        for c in range(N_PE[0]):
            x = PE_GAP_TO_EDGE + c * (PEWS.DIE_SIZE[0] + PE_GAP)
            pos_list.append((x, y))
        PE_POS_MAT.append(pos_list)

    PE_PIN_INT_X_LIST = []
    for c in range(N_PE[0]):
        x, _ = PE_POS_MAT[0][c]
        x_int = (x + PEWS.PIN_INT[0], x + PEWS.PIN_INT[1])
        PE_PIN_INT_X_LIST.append(x_int)

    PE_PIN_INT_Y_LIST = []
    for r in range(N_PE[1]):
        _, y = PE_POS_MAT[r][0]
        y_int = (y + PEWS.PIN_INT[0], y + PEWS.PIN_INT[1])
        PE_PIN_INT_Y_LIST.append(y_int)



### ArrayTPU/PEWS/config.mk ###
file_path = os.path.join(Global.CFG_DIR, Global.PEWS, 'config.mk')
platform = Global.PLATFORM
design_name = Global.PEWS
design_nickname = '{}_{}'.format(Global.ArrayTPU, Global.PEWS)
verilog_files = os.path.join(Global.SRC_DIR, '{}.v'.format(Global.PEWS))
sdc_file = os.path.join(Global.CFG_DIR, 'constraint.sdc')
io_constraints = os.path.join(Global.CFG_DIR, Global.PEWS, 'io.tcl')
die_area = (0, 0, PEWS.DIE_SIZE[0], PEWS.DIE_SIZE[1])
core_area = (PEWS.DIE_MARGIN, PEWS.DIE_MARGIN, PEWS.DIE_SIZE[0] - PEWS.DIE_MARGIN, PEWS.DIE_SIZE[1] - PEWS.DIE_MARGIN)
place_density = PEWS.PLACE_DENSITY
with open(file_path, 'w') as f:
    def export(name, value):
        f.write('export {} = {}\n'.format(name, value))

    export('PLATFORM', '{}'.format(platform))
    export('DESIGN_NAME', '{}'.format(design_name))
    export('DESIGN_NICKNAME', '{}'.format(design_nickname))
    export('VERILOG_FILES', '{}'.format(verilog_files))
    export('SDC_FILE', '{}'.format(sdc_file))
    export('IO_CONSTRAINTS', '{}'.format(io_constraints))
    export('DIE_AREA', '{} {} {} {}'.format(die_area[0], die_area[1], die_area[2], die_area[3]))
    export('CORE_AREA', '{} {} {} {}'.format(core_area[0], core_area[1], core_area[2], core_area[3]))
    export('PLACE_DENSITY', '{}'.format(place_density))
    
    # export('MACRO_PLACE_HALO', '1 1')    
    # export('GPL_TIMING_DRIVEN', '0')
    # export('GPL_ROUTABLILITY_DRIVEN', '0')

    export('MACRO_PLACE_HALO', '1 1')    
    export('GPL_TIMING_DRIVEN', '0')
    export('GPL_ROUTABLILITY_DRIVEN', '1')
    export('SYNTH_HIERARCHICAL', '1')
    export('HAS_IO_CONSTRAINTS', '1')
    export('ENABLE_DP0', '1')
    export('ABC_AREA', '1')

### ArrayTPU/PEWS/io.tcl ###
def get_io(prefix, suffix_list):
    lst = ['{}_data[{}]'.format(prefix, i) for i in range(Global.WIDTH)] + \
          ['{}_{}'.format(prefix, suffix) for suffix in suffix_list]
    return lst
pin_left = get_io('io_in_r', ['stop_weight', 'stall'])
pin_right = get_io('io_out_r', ['stop_weight', 'stall'])
pin_top = get_io('io_in_c', ['is_weight'])
pin_bottom = get_io('io_out_c', ['is_weight'])

file_path = os.path.join(Global.CFG_DIR, Global.PEWS, 'io.tcl')
edge_top = PEWS.DIE_SIZE[1]
edge_right = PEWS.DIE_SIZE[0]
d_to_edge = 0
with open(file_path, 'w') as f:
    def place_pin(pin, layer, edge, pos, ftdb=True):
        assert layer in {0, 1, 2}
        assert edge in {'top', 'bottom', 'left', 'right'}
        layer_name = 'M{}'.format(layer * 2 + 2 if edge in {'left', 'right'} else layer * 2 + 3)
        min_width = [0.018, 0.024, 0.032][layer]
        pin_size = '{' + str(min_width) + ' ' + str(min_width) + '}'
        if edge == 'top':
            location = '{' + str(pos) + ' ' + str(edge_top - d_to_edge) + '}'
        elif edge == 'bottom':
            location = '{' + str(pos) + ' ' + str(d_to_edge) + '}'
        elif edge == 'left':
            location = '{' + str(d_to_edge) + ' ' + str(pos) + '}'
        else:
            location = '{' + str(edge_right - d_to_edge) + ' ' + str(pos) + '}'
        ftdb = '-force_to_die_boundary' if ftdb else ''
        f.write('place_pin -pin_name {} -layer {} -location {} -pin_size {} {}\n'.format(pin, layer_name, location, pin_size, ftdb))

    def evenly_place_pins(pins, edge, interval, layers):
        n = math.ceil(len(pins) / len(layers))
        for layer_id, layer in enumerate(layers):
            sub_pins = pins[layer_id * n: (layer_id + 1) * n]
            d = (interval[1] - interval[0]) / (len(sub_pins) - 1)
            for i, pin in enumerate(sub_pins):
                pos = interval[0] + i * d
                place_pin(pin, layer, edge, pos)

    evenly_place_pins(pin_left, 'left', PEWS.PIN_INT, (1, ))
    evenly_place_pins(pin_right, 'right', PEWS.PIN_INT, (1, ))
    evenly_place_pins(pin_top, 'top', PEWS.PIN_INT, (1, ))
    evenly_place_pins(pin_bottom, 'bottom', PEWS.PIN_INT, (1, ))
    # place_pin('clk', 1, 'top', 0.5)



### ArrayTPU/config.mk ###
file_path = os.path.join(Global.CFG_DIR, 'config.mk')
platform = Global.PLATFORM
design_name = Global.ArrayTPU
design_nickname = design_name
# verilog_files = os.path.join(Global.SRC_DIR, '{}.v'.format(Global.ArrayTPU))
# verilog_files = os.path.join(Global.SRC_DIR, '*.v')
verilog_files = os.path.join(Global.SRC_DIR, '{}_{}x{}.v'.format(Global.ArrayTPU, ArrayTPU.N_PE[1], ArrayTPU.N_PE[0]))
sdc_file = os.path.join(Global.CFG_DIR, 'constraint.sdc')
io_constraints = os.path.join(Global.CFG_DIR, 'io.tcl')
die_area = (0, 0, 
            ArrayTPU.DIE_SIZE[0], ArrayTPU.DIE_SIZE[1])
core_area = (die_area[0] + ArrayTPU.DIE_MARGIN, die_area[1] + ArrayTPU.DIE_MARGIN, 
             die_area[2] - ArrayTPU.DIE_MARGIN, die_area[3] - ArrayTPU.DIE_MARGIN)
place_density = ArrayTPU.PLACE_DENSITY
blocks = Global.PEWS
verilog_files_blackbox = os.path.join(Global.SRC_DIR, '{}.v'.format(Global.PEWS))
macro_placement_tcl = os.path.join(Global.CFG_DIR, 'mp.tcl')
with open(file_path, 'w') as f:
    def export(name, value):
        f.write('export {} = {}\n'.format(name, value))

    export('PLATFORM', '{}'.format(platform))
    export('DESIGN_NAME', '{}'.format(design_name))
    export('DESIGN_NICKNAME', '{}'.format(design_nickname))
    export('VERILOG_FILES', '{}'.format(verilog_files))
    export('SDC_FILE', '{}'.format(sdc_file))
    export('IO_CONSTRAINTS', '{}'.format(io_constraints))
    export('DIE_AREA', '{} {} {} {}'.format(die_area[0], die_area[1], die_area[2], die_area[3]))
    export('CORE_AREA', '{} {} {} {}'.format(core_area[0], core_area[1], core_area[2], core_area[3]))
    export('PLACE_DENSITY', '{}'.format(place_density))
    
    # f.write('BLOCKS = {}\n'.format(blocks))
    # export('VERILOG_FILES_BLACKBOX', '{}'.format(verilog_files_blackbox))
    # export('MACRO_PLACEMENT_TCL', '{}'.format(macro_placement_tcl))
    # export('GDS_ALLOW_EMPTY', '{}'.format(blocks))

    # export('MACRO_PLACE_HALO', '1 1')    
    # export('GPL_TIMING_DRIVEN', '0')
    # export('GPL_ROUTABLILITY_DRIVEN', '0')

    export('MACRO_PLACE_HALO', '1 1')    
    export('GPL_TIMING_DRIVEN', '0')
    export('GPL_ROUTABLILITY_DRIVEN', '1')
    export('SYNTH_HIERARCHICAL', '1')
    export('HAS_IO_CONSTRAINTS', '1')
    export('ENABLE_DP0', '1')
    export('ABC_AREA', '1')

### ArrayTPU/io.tcl ###
def get_io(prefix, n_pe, suffix_list):
    lst = []
    for n in range(n_pe):
        lst.append(['{}_{}_data[{}]'.format(prefix, n, i) for i in range(Global.WIDTH)] + \
                   ['{}_{}_{}'.format(prefix, n, suffix) for suffix in suffix_list])
    return lst
pin_left = get_io('io_in_r', ArrayTPU.N_PE[1], ['stop_weight', 'stall'])
pin_right = get_io('io_out_r', ArrayTPU.N_PE[1], ['stop_weight', 'stall'])
pin_top = get_io('io_in_c', ArrayTPU.N_PE[0], ['is_weight'])
pin_bottom = get_io('io_out_c', ArrayTPU.N_PE[0], ['is_weight'])

file_path = os.path.join(Global.CFG_DIR, 'io.tcl')
edge_top = ArrayTPU.DIE_SIZE[1]
edge_right = ArrayTPU.DIE_SIZE[0]
d_to_edge = 0
with open(file_path, 'w') as f:
    def place_pin(pin, layer, edge, pos, ftdb=True):
        assert layer in {0, 1, 2}
        assert edge in {'top', 'bottom', 'left', 'right'}
        layer_name = 'M{}'.format(layer * 2 + 2 if edge in {'left', 'right'} else layer * 2 + 3)
        min_width = [0.018, 0.024, 0.032][layer]
        pin_size = '{' + str(min_width) + ' ' + str(min_width) + '}'
        if edge == 'top':
            location = '{' + str(pos) + ' ' + str(edge_top - d_to_edge) + '}'
        elif edge == 'bottom':
            location = '{' + str(pos) + ' ' + str(d_to_edge) + '}'
        elif edge == 'left':
            location = '{' + str(d_to_edge) + ' ' + str(pos) + '}'
        else:
            location = '{' + str(edge_right - d_to_edge) + ' ' + str(pos) + '}'
        ftdb = '-force_to_die_boundary' if ftdb else ''
        f.write('place_pin -pin_name {} -layer {} -location {} -pin_size {} {}\n'.format(pin, layer_name, location, pin_size, ftdb))

    def evenly_place_pins(pins, edge, interval, layers):
        n = math.ceil(len(pins) / len(layers))
        for layer_id, layer in enumerate(layers):
            sub_pins = pins[layer_id * n: (layer_id + 1) * n]
            d = (interval[1] - interval[0]) / (len(sub_pins) - 1)
            for i, pin in enumerate(sub_pins):
                pos = interval[0] + i * d
                place_pin(pin, layer, edge, pos)

    for r, interval in enumerate(ArrayTPU.PE_PIN_INT_Y_LIST):
        evenly_place_pins(pin_left[r], 'left', interval, (1, ))
        evenly_place_pins(pin_right[r], 'right', interval, (1, ))
    for c, interval in enumerate(ArrayTPU.PE_PIN_INT_X_LIST):
        evenly_place_pins(pin_top[c], 'top', interval, (1, ))
        evenly_place_pins(pin_bottom[c], 'bottom', interval, (1, ))
    place_pin('clk', 1, 'top', ArrayTPU.DIE_SIZE[0] / 2 + 0.05)

### ArrayTPU/mp.tcl ###
file_path = os.path.join(Global.CFG_DIR, 'mp.tcl')
instance = 'pe_mat'
with open(file_path, 'w') as f:
    def write(s):
        f.write('{}\n'.format(s))

    def set_pos(name, x, y):
        write('set inst [$block findInst "{}"]'.format(name))
        write('$inst setOrient R0')
        write('$inst setOrigin {} {}'.format(round(x * 1000), round(y * 1000)))
        write('$inst setPlacementStatus FIRM')

    write('set block [ord::get_db_block]')
    for r in range(ArrayTPU.N_PE[1]):
        for c in range(ArrayTPU.N_PE[0]):
            name = '{}_{}_{}'.format(instance, r, c)
            x, y = ArrayTPU.PE_POS_MAT[r][c]
            set_pos(name, x, y)

### ArrayTPU/constraint.sdc ###
file_path = os.path.join(Global.CFG_DIR, 'constraint.sdc')
current_design = '{}'.format(Global.ArrayTPU)
clk_name = 'clk'
clk_port_name = clk_name
clk_period = round(1 / 0.7 * 1000)  # 700MHz
clk_io_pct = 0
with open(file_path, 'w') as f:
    def sdc_set(name, value):
        f.write('set {} {}\n'.format(name, value))
    
    def sdc_line(cmd, s):
        f.write('{} {}\n'.format(cmd, s))

    sdc_line('current_design', '{}'.format(current_design))
    sdc_set('clk_name', '{}'.format(clk_name))
    sdc_set('clk_port_name', '{}'.format(clk_port_name))
    sdc_set('clk_period', '{}'.format(clk_period))
    sdc_set('clk_io_pct', '{}'.format(clk_io_pct))
    
    sdc_set('clk_port', r'[get_ports $clk_port_name]')
    sdc_line('create_clock', r'-name $clk_name -period $clk_period  $clk_port')
    sdc_set('non_clock_inputs', r'[lsearch -inline -all -not -exact [all_inputs] $clk_port]')
    sdc_line('set_input_delay', r'[expr $clk_period * $clk_io_pct] -clock $clk_name $non_clock_inputs')
    sdc_line('set_output_delay', r'[expr $clk_period * $clk_io_pct] -clock $clk_name [all_outputs]')
