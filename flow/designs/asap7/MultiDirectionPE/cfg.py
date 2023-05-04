import os
import math

# config.mk

PLATFORM = 'asap7'
DESIGN_NAME = 'MultiDirectionPE'
os.chdir("./designs/{}/{}".format(PLATFORM, DESIGN_NAME))

DIE = 21
DIE_MARGIN = 0

PLACE_DENSITY = 0.9

with open('config.mk', 'w') as f:
    def export(name, value):
        f.write('export {} = {}\n'.format(name, value))
    
    export('PLATFORM', '{}'.format(PLATFORM))

    export('DESIGN_NAME', '{}'.format(DESIGN_NAME))
    export('DESIGN_NICKNAME', '{}'.format(DESIGN_NAME))  # the name of the source folder in ./designs/src

    export('VERILOG_FILES', r'$(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))')
    export('SDC_FILE', r'./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc')
    export('IO_CONSTRAINTS', r'./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/io.tcl')
    # export('PDN_TCL', r'./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/pdn.tcl')

    export('DIE_AREA', '0 0 {} {}'.format(DIE, DIE))
    export('CORE_AREA', '{} {} {} {}'.format(DIE_MARGIN, DIE_MARGIN, DIE - DIE_MARGIN, DIE - DIE_MARGIN))
    
    export('PLACE_DENSITY', '{}'.format(PLACE_DENSITY))

    export('SYNTH_HIERARCHICAL', 'true')
    export('HAS_IO_CONSTRAINTS', 'true')
    export('ENABLE_DP0', 'true')
    export('GPL_ROUTABILITY_DRIVEN', 'true')
    export('ABC_AREA', 'true')



# io.tcl

DATA_WIDTH = 16


def create_pin(edge):
    assert edge in {'Top', 'Bottom', 'Left', 'Right'}

    def f(prefix, io, suffix, width=1):
        assert io in {'In', 'Out'} and width >= 1
        if width == 1:
            return ['{}{}{}'.format(prefix, io, suffix)]
        return ['{}{}{}[{}]'.format(prefix, io, suffix, i) for i in range(width)]

    prefix = 'io_data{}'.format(edge)
    pin_data_in = f(prefix, 'In', '', DATA_WIDTH)
    pin_data_out = f(prefix, 'Out', '', DATA_WIDTH)
    
    prefix = 'io_control{}'.format(edge)
    pin_ctrl_in = f(prefix, 'In', '_valid') + \
                  f(prefix, 'In', '_payload_MR', 2) + \
                  f(prefix, 'In', '_payload_CR_sel', 5) + \
                  f(prefix, 'In', '_payload_CR_dataflow', 2) + \
                  f(prefix, 'In', '_payload_CtR', 7)
    pin_ctrl_out = f(prefix, 'Out', '_valid') + \
                   f(prefix, 'Out', '_payload_MR', 2) + \
                   f(prefix, 'Out', '_payload_CR_sel', 5) + \
                   f(prefix, 'Out', '_payload_CR_dataflow', 2) + \
                   f(prefix, 'Out', '_payload_CtR', 7)
    return pin_ctrl_in + pin_data_in + pin_data_out + pin_ctrl_out

pin_left = create_pin('Left')
pin_right = create_pin('Right')
pin_top = create_pin('Top')
pin_bottom  = create_pin('Bottom')

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

    def place_pin(pin, layer, edge, pos, ftdb=True):
        assert layer in {0, 1, 2}
        assert edge in {'top', 'bottom', 'left', 'right'}
        layer_name = 'M{}'.format(layer * 2 + 2 if edge in {'left', 'right'} else layer * 2 + 3)
        min_width = [0.018, 0.024, 0.032][layer]
        pin_size = '{' + str(min_width) + ' ' + str(min_width) + '}'

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

    def io_line(cmd, s):
        f.write('{} {}\n'.format(cmd, s))
    
    def evenly_place_pins(pins, edge, layers=(0, 1, 2)):
        d_to_corner = 1
        n = math.ceil(len(pins) / len(layers))
        for layer_id, layer in enumerate(layers):
            sub_pins = pins[layer_id * n: (layer_id + 1) * n]
            d = (DIE - 2 * d_to_corner) / (len(sub_pins) - 1)
            for i, pin in enumerate(sub_pins):
                pos = d_to_corner + i * d
                place_pin(pin, layer, edge, pos)

    evenly_place_pins(pin_left, 'left', layers=(1,))
    evenly_place_pins(pin_right, 'right', layers=(1,))
    evenly_place_pins(pin_top, 'top', layers=(1,))
    evenly_place_pins(pin_bottom, 'bottom', layers=(1,))



# constraint.sdc

clk_name = 'clk'
clk_port_name = clk_name
clk_period = round(1 / 0.7 * 1000)
clk_io_pct = 0.0

with open('constraint.sdc', 'w') as f:
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
