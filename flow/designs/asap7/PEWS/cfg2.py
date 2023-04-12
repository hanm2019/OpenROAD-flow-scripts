import os

# config.mk

platform = 'asap7'
design_name = 'PEWS'
os.chdir("./designs/{}/{}".format(platform, design_name))

# core_utilization = 60
core_utilization = 40
core_aspect_ratio = 1
core_margin = 1

die = 15
margin = 1

place_density = 0.9

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



# io.tcl

data_width = 16
pin_left = \
    ['io_in_r_stop_weight', 'io_in_r_stall'] + \
    ['io_in_r_data[{}]'.format(i) for i in range(data_width)]
pin_right = \
    ['io_out_r_stop_weight', 'io_out_r_stall'] + \
    ['io_out_r_data[{}]'.format(i) for i in range(data_width)]
pin_top = \
    ['io_in_c_is_weight'] + \
    ['io_in_c_data[{}]'.format(i) for i in range(data_width)]
pin_bottom  = \
    ['io_out_c_is_weight'] + \
    ['io_out_c_data[{}]'.format(i) for i in range(data_width)]

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
    
    def set_io_pin_constraint(pin, edge):
        pin_names_str = pin_list_to_str(pin)
        assert edge in {'top', 'bottom', 'left', 'right'}
        f.write('set_io_pin_constraint -pin_names {} -region {}:*\n'.format(pin_names_str, edge))
        f.write('set_io_pin_constraint -pin_names {} -group -order\n'.format(pin_names_str))

    def set_io_pin_constraint_mirror(pin0, pin1):
        pin_names_str = pin_list_to_str_mirror(pin0, pin1)
        f.write('set_io_pin_constraint -mirrored_pins {}\n'.format(pin_names_str))

    def io_line(cmd, s):
        f.write('{} {}\n'.format(cmd, s))
    
    # io_line('place_pins', r'-hor_layers M4 -ver_layers M3')
    # set_io_pin_constraint(pin_left, 'left')
    # set_io_pin_constraint_mirror(pin_left, pin_right)
    # set_io_pin_constraint(pin_top, 'top')
    # set_io_pin_constraint_mirror(pin_top, pin_bottom)
    # set_io_pin_constraint(['clk', 'reset'], 'top')

    # TEST function: place_pin, available [M2-M7]
    # io_line('place_pin', r'-pin_name clk -layer M2 -location {0.1 10} -pin_size {0.018 0.018} -force_to_die_boundary')
    # io_line('place_pin', r'-pin_name clk -layer M3 -location {10 0.1} -pin_size {0.018 0.018} -force_to_die_boundary')
    # io_line('place_pin', r'-pin_name clk -layer M4 -location {0.1 10} -pin_size {0.024 0.024} -force_to_die_boundary')
    # io_line('place_pin', r'-pin_name clk -layer M5 -location {10 0.1} -pin_size {0.024 0.024} -force_to_die_boundary')
    # io_line('place_pin', r'-pin_name clk -layer M6 -location {0.1 10} -pin_size {0.032 0.032} -force_to_die_boundary')
    # io_line('place_pin', r'-pin_name clk -layer M7 -location {10 0.1} -pin_size {0.032 0.032} -force_to_die_boundary')

    # io_line('place_pin', r'-pin_name clk -layer M8 -location {0.1 10} -pin_size {0.04 0.04} -force_to_die_boundary')

    # TEST overlap multiple io in different layers
    io_line('place_pin', r'-pin_name clk -layer M2 -location {0.1 10} -pin_size {0.018 0.018} -force_to_die_boundary')
    io_line('place_pin', r'-pin_name io_in_r_stop_weight -layer M4 -location {0.1 10} -pin_size {0.024 0.024} -force_to_die_boundary')
    io_line('place_pin', r'-pin_name io_in_r_stall -layer M6 -location {0.1 10} -pin_size {0.032 0.032} -force_to_die_boundary')



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
