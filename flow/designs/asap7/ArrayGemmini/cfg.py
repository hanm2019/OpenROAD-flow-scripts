import os
import math

### Global ###
class Global:
    PLATFORM = 'asap7'

    ArrayGemmini = 'ArrayGemmini'
    PEWSOS = 'PEWSOS'

    SRC_DIR = 'designs/src/{}'.format(ArrayGemmini)
    CFG_DIR = 'designs/{}/{}'.format(PLATFORM, ArrayGemmini)

    WIDTH = 16

### PEWSOS ###
class PEWSOS:
    DIE_SIZE = (24, 24)
    DIE_MARGIN = 0
    PLACE_DENSITY = 0.9
    PIN_INT = (1, min(DIE_SIZE) - 1)

### ArrayGemmini ###
class ArrayGemmini:
    N_PE = (32, 32)
    PE_GAP = 12
    PE_GAP_TO_EDGE = PE_GAP

    DIE_SIZE = (
        PEWSOS.DIE_SIZE[0] * N_PE[0] + PE_GAP * (N_PE[0] - 1) + PE_GAP_TO_EDGE * 2,
        PEWSOS.DIE_SIZE[1] * N_PE[1] + PE_GAP * (N_PE[1] - 1) + PE_GAP_TO_EDGE * 2,
    )
    DIE_MARGIN = 0
    PLACE_DENSITY = 0.3

    PE_POS_MAT = []
    for r in range(N_PE[1]):
        pos_list = []
        y = PE_GAP_TO_EDGE + (N_PE[1] - r - 1) * (PEWSOS.DIE_SIZE[1] + PE_GAP)
        for c in range(N_PE[0]):
            x = PE_GAP_TO_EDGE + c * (PEWSOS.DIE_SIZE[0] + PE_GAP)
            pos_list.append((x, y))
        PE_POS_MAT.append(pos_list)

    PE_PIN_INT_X_LIST = []
    for c in range(N_PE[0]):
        x, _ = PE_POS_MAT[0][c]
        x_int = (x + PEWSOS.PIN_INT[0], x + PEWSOS.PIN_INT[1])
        PE_PIN_INT_X_LIST.append(x_int)

    PE_PIN_INT_Y_LIST = []
    for r in range(N_PE[1]):
        _, y = PE_POS_MAT[r][0]
        y_int = (y + PEWSOS.PIN_INT[0], y + PEWSOS.PIN_INT[1])
        PE_PIN_INT_Y_LIST.append(y_int)



### config.mk ###
file_path = os.path.join(Global.CFG_DIR, 'config.mk')
platform = Global.PLATFORM
design_name = Global.ArrayGemmini
design_nickname = design_name
verilog_files = os.path.join(Global.SRC_DIR, '{}_{}x{}.v'.format(Global.ArrayGemmini, ArrayGemmini.N_PE[1], ArrayGemmini.N_PE[0]))
sdc_file = os.path.join(Global.CFG_DIR, 'constraint.sdc')
io_constraints = os.path.join(Global.CFG_DIR, 'io.tcl')
die_area = (0, 0, 
            ArrayGemmini.DIE_SIZE[0], ArrayGemmini.DIE_SIZE[1])
core_area = (die_area[0] + ArrayGemmini.DIE_MARGIN, die_area[1] + ArrayGemmini.DIE_MARGIN, 
             die_area[2] - ArrayGemmini.DIE_MARGIN, die_area[3] - ArrayGemmini.DIE_MARGIN)
place_density = ArrayGemmini.PLACE_DENSITY
blocks = Global.PEWSOS
verilog_files_blackbox = os.path.join(Global.SRC_DIR, '{}.v'.format(Global.PEWSOS))
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

### io.tcl ###
def get_io(prefix, n_pe, suffix_list):
    lst = []
    for n in range(n_pe):
        lst.append(['{}_{}_data[{}]'.format(prefix, n, i) for i in range(Global.WIDTH)] + \
                   ['{}_{}_{}'.format(prefix, n, suffix) for suffix in suffix_list])
    return lst
pin_left = get_io('io_in_r', ArrayGemmini.N_PE[1], ['load_store','df_is_ws', 'stall'])
pin_right = get_io('io_out_r', ArrayGemmini.N_PE[1], ['load_store','df_is_ws', 'stall'])
pin_top = get_io('io_in_c', ArrayGemmini.N_PE[0], ['is_stationary'])
pin_bottom = get_io('io_out_c', ArrayGemmini.N_PE[0], ['is_stationary'])

file_path = os.path.join(Global.CFG_DIR, 'io.tcl')
edge_top = ArrayGemmini.DIE_SIZE[1]
edge_right = ArrayGemmini.DIE_SIZE[0]
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

    for r, interval in enumerate(ArrayGemmini.PE_PIN_INT_Y_LIST):
        evenly_place_pins(pin_left[r], 'left', interval, (1, ))
        evenly_place_pins(pin_right[r], 'right', interval, (1, ))
    for c, interval in enumerate(ArrayGemmini.PE_PIN_INT_X_LIST):
        evenly_place_pins(pin_top[c], 'top', interval, (1, ))
        evenly_place_pins(pin_bottom[c], 'bottom', interval, (1, ))
    place_pin('clk', 1, 'top', ArrayGemmini.DIE_SIZE[0] / 2 + 0.05)

### constraint.sdc ###
file_path = os.path.join(Global.CFG_DIR, 'constraint.sdc')
current_design = '{}'.format(Global.ArrayGemmini)
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
