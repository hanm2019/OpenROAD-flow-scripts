import os
import math
from functools import reduce

# config.mk

platform = 'asap7'
design_name = 'PESARA2'
os.chdir("./designs/{}/{}".format(platform, design_name))

core_utilization = 2
core_aspect_ratio = 1
core_margin = 1

die = 61  # minimal die = 61
# die = 60
margin = 1

place_density = 0.8  # near maximal density
# place_density = 0.2

with open('config.mk', 'w') as f:
    def export(name, value):
        f.write('export {} = {}\n'.format(name, value))
    
    export('PLATFORM', '{}'.format(platform))

    export('DESIGN_NAME', '{}'.format(design_name))
    export('DESIGN_NICKNAME', '{}'.format(design_name))  # the name of the source folder in ./designs/src

    export('VERILOG_FILES', r'$(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))')
    export('SDC_FILE', r'./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc')
    export('IO_CONSTRAINTS', r'./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/io.tcl')
    # export('PDN_TCL', r'./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/pdn.tcl')

    # export('CORE_UTILIZATION', '{}'.format(core_utilization))
    # export('CORE_ASPECT_RATIO', '{}'.format(core_aspect_ratio))
    # export('CORE_MARGIN', '{}'.format(core_margin))

    export('DIE_AREA', '0 0 {} {}'.format(die, die))
    export('CORE_AREA', '{} {} {} {}'.format(margin, margin, die - margin, die - margin))
    
    export('PLACE_DENSITY', '{}'.format(place_density))

    # export('HAS_IO_CONSTRAINTS', '1')
    # export('GUI_NO_TIMING', '1')
    # export('ENABLE_DP0', '1')
    # export('IO_PLACER_H', '{M3 M5}')
    # export('IO_PLACER_V', '{M2 M4}')




# io.tcl

data_width = 16
bypass = 32

prefix = ''
suffix_list = []

def create_pin():
    pin_data = ['{}_data_{}'.format(prefix, suffix) for suffix in suffix_list]
    pin_bypass_list = []
    for bp in range(bypass):
        pin_bypass_list.append(['{}_input_from_bypass[{}]'.format(prefix, bp)] + \
                               ['{}_bypass_{}_{}'.format(prefix, bp, suffix) for suffix in suffix_list])
    pin = []
    pin.extend(pin_data)
    for pin_bypass in pin_bypass_list:
        pin.extend(pin_bypass)
    return pin_data, pin_bypass_list, pin

prefix = 'io_in_r'
suffix_list = ['load_store', 'df_is_ws', 'stall'] + ['data[{}]'.format(i) for i in range(data_width)]
pin_left_data, pin_left_bypass_list, pin_left = create_pin()

prefix = 'io_out_r'
pin_right_data, pin_right_bypass_list, pin_right = create_pin()

prefix = 'io_in_c'
suffix_list = ['is_stationary'] + ['data[{}]'.format(i) for i in range(data_width)]
pin_top_data, pin_top_bypass_list, pin_top = create_pin()

prefix = 'io_out_c'
pin_bottom_data, pin_bottom_bypass_list, pin_bottom = create_pin()

with open('io.tcl', 'w') as f:
    def pin_list_to_str(pin):
        pin_names_str = '{'
        for p in pin:
            pin_names_str += p + ' '
        pin_names_str += '}'
        return pin_names_str
    
    def pin_list_to_str_mirror(pin0, pin1):
        assert len(pin0) == len(pin1)
        pin_names_str = '{'
        for i in range(len(pin0)):
            pin_names_str += pin0[i] + ' ' + pin1[i] + ' '
        pin_names_str += '}'
        return pin_names_str

    def set_io_pin_constraint(pin, edge, interval='*'):
        pin_names_str = pin_list_to_str(pin)
        assert edge in {'top', 'bottom', 'left', 'right'}
        if isinstance(interval, tuple):
            interval = '{}-{}'.format(interval[0], interval[1])
        f.write('set_io_pin_constraint -region {}:{} -pin_names {}\n'.format(edge, interval, pin_names_str))
        f.write('set_io_pin_constraint -group -order -pin_names {}\n'.format(pin_names_str))

    def set_io_pin_constraint_mirror(pin0, pin1):
        pin_names_str = pin_list_to_str_mirror(pin0, pin1)
        f.write('set_io_pin_constraint -mirrored_pins {}\n'.format(pin_names_str))

    def place_pin(pin, layer, edge, pos, ftdb=True):
        assert layer in {0, 1, 2}
        assert edge in {'top', 'bottom', 'left', 'right'}
        layer_name = 'M{}'.format(layer * 2 + 2 if edge in {'left', 'right'} else layer * 2 + 3)
        min_width = [0.018, 0.024, 0.032][layer]
        pin_size = '{' + str(min_width) + ' ' + str(min_width) + '}'

        d_to_edge = min(0.1, 0.5 * margin)
        if edge == 'top':
            location = '{' + str(pos) + ' ' + str(die - d_to_edge) + '}'
        elif edge == 'bottom':
            location = '{' + str(pos) + ' ' + str(d_to_edge) + '}'
        elif edge == 'left':
            location = '{' + str(d_to_edge) + ' ' + str(pos) + '}'
        else:
            location = '{' + str(die - d_to_edge) + ' ' + str(pos) + '}'

        if ftdb == True:
            ftdb = '-force_to_die_boundary'
        else:
            ftdb = ''
        f.write('place_pin -pin_name {} -layer {} -location {} -pin_size {} {}\n'.format(pin, layer_name, location, pin_size, ftdb))

    def evenly_place_pins(pins, edge, interval=(2, die - 2), layers=(0, 1, 2)):
        n = math.ceil(len(pins) / len(layers))
        for layer_id, layer in enumerate(layers):
            sub_pins = pins[layer_id * n: (layer_id + 1) * n]
            d = (interval[1] - interval[0]) / (len(sub_pins) - 1)
            for i, pin in enumerate(sub_pins):
                pos = interval[0] + i * d
                place_pin(pin, layer, edge, pos)

    def mlist(l_list):
        return reduce(lambda x, y: x + y, l_list)

    pin_left = [pin_left_data] + pin_left_bypass_list
    pin_right = [pin_right_data] + pin_right_bypass_list
    pin_top = [pin_top_data] + pin_top_bypass_list
    pin_bottom = [pin_bottom_data] + pin_bottom_bypass_list
    away_from_corner = 0.2
    interval = (margin + away_from_corner, die - margin - away_from_corner)
    group_len = math.ceil((bypass + 1) / 3)
    for i in {0, 1, 2}:
        evenly_place_pins(mlist(pin_left[i * group_len: (i + 1) * group_len]), 'left', interval, (i,))
        evenly_place_pins(mlist(pin_right[i * group_len: (i + 1) * group_len]), 'right', interval, (i,))
        evenly_place_pins(mlist(pin_top[i * group_len: (i + 1) * group_len]), 'top', interval, (i,))
        evenly_place_pins(mlist(pin_bottom[i * group_len: (i + 1) * group_len]), 'bottom', interval, (i,))



# constraint.sdc

clk_name = 'clk'
clk_port_name = clk_name
clk_period = round(1 / 0.7 * 1000)
clk_io_pct = 0.2

with open('constraint.sdc', 'w') as f:
    def sdc_set(name, value):
        f.write('set {} {}\n'.format(name, value))
    
    def sdc_line(cmd, s):
        f.write('{} {}\n'.format(cmd, s))

    sdc_line('current_design', '{}'.format(design_name))

    sdc_set('clk_name', '{}'.format(clk_name))
    sdc_set('clk_port_name', '{}'.format(clk_port_name))
    sdc_set('clk_period', '{}'.format(clk_period))
    sdc_set('clk_io_pct', '{}'.format(clk_io_pct))
    
    sdc_set('clk_port', r'[get_ports $clk_port_name]')
    sdc_line('create_clock', r'-name $clk_name -period $clk_period  $clk_port')
    sdc_set('non_clock_inputs', r'[lsearch -inline -all -not -exact [all_inputs] $clk_port]')
    sdc_line('set_input_delay', r'[expr $clk_period * $clk_io_pct] -clock $clk_name $non_clock_inputs')
    sdc_line('set_output_delay', r'[expr $clk_period * $clk_io_pct] -clock $clk_name [all_outputs]')




# pdn.tcl

with open('pdn.tcl', 'w') as f:
    def pdn_line(cmd, s):
        f.write('{} {}\n'.format(cmd, s))

    pdn_line('add_global_connection', r'-net {VDD} -inst_pattern {.*} -pin_pattern {^VDD$} -power')
    pdn_line('add_global_connection', r'-net {VSS} -inst_pattern {.*} -pin_pattern {^VSS$} -ground')

    pdn_line('set_voltage_domain', r'-name {CORE} -power {VDD} -ground {VSS}')

    pdn_line('define_pdn_grid', r'-name {top} -voltage_domains {CORE}')

    pdn_line('add_pdn_stripe', r'-grid {top} -layer {M1} -width {0.018} -pitch {0.54} -offset {0} -followpins')
    pdn_line('add_pdn_stripe', r'-grid {top} -layer {M2} -width {0.018} -pitch {0.54} -offset {0} -followpins')
    pdn_line('add_pdn_stripe', r'-grid {top} -layer {M5} -width {0.12} -spacing {0.072} -pitch {6} -offset {0.300}')
    pdn_line('add_pdn_stripe', r'-grid {top} -layer {M6} -width {0.288} -spacing {0.096} -pitch {6} -offset {0.513}')
    pdn_line('add_pdn_connect', r'-grid {top} -layers {M1 M2}')
    pdn_line('add_pdn_connect', r'-grid {top} -layers {M2 M5}')
    pdn_line('add_pdn_connect', r'-grid {top} -layers {M5 M6}')
