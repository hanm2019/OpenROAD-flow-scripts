import os
import math

# config.mk

PLATFORM = 'asap7'
DESIGN_NAME = 'Multiplier'
os.chdir("./designs/{}/{}".format(PLATFORM, DESIGN_NAME))

DIE = 14
DIE_MARGIN = 0.48

PLACE_DENSITY = 0.9

with open('config.mk', 'w') as f:
    def export(name, value):
        f.write('export {} = {}\n'.format(name, value))
    
    export('PLATFORM', '{}'.format(PLATFORM))

    export('DESIGN_NAME', '{}'.format(DESIGN_NAME))
    export('DESIGN_NICKNAME', '{}'.format(DESIGN_NAME))  # the name of the source folder in ./designs/src

    export('VERILOG_FILES', r'$(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))')
    export('SDC_FILE', r'./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc')
    # export('IO_CONSTRAINTS', r'./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/io.tcl')

    export('DIE_AREA', '0 0 {} {}'.format(DIE, DIE))
    export('CORE_AREA', '{} {} {} {}'.format(DIE_MARGIN, DIE_MARGIN, DIE - DIE_MARGIN, DIE - DIE_MARGIN))
    
    export('PLACE_DENSITY', '{}'.format(PLACE_DENSITY))



# io.tcl

DATA_WIDTH = 16

pin_left = ['io_a[{}]'.format(i) for i in range(DATA_WIDTH)]
pin_top = ['io_b[{}]'.format(i) for i in range(DATA_WIDTH)]
pin_bottom = ['io_c[{}]'.format(i) for i in range(DATA_WIDTH)]

with open('io.tcl', 'w') as f:
    def io_line(cmd, s):
        f.write('{} {}\n'.format(cmd, s))

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
    
    def evenly_place_pins(pins, edge, interval=(1, DIE - 1), layers=(1,)):
        n = math.ceil(len(pins) / len(layers))
        for layer_id, layer in enumerate(layers):
            sub_pins = pins[layer_id * n: (layer_id + 1) * n]
            d = (interval[1] - interval[0]) / (len(sub_pins) - 1)
            for i, pin in enumerate(sub_pins):
                pos = interval[0] + i * d
                place_pin(pin, layer, edge, pos)

    evenly_place_pins(pin_left, 'left')
    evenly_place_pins(pin_top, 'top')
    evenly_place_pins(pin_bottom, 'bottom')



# constraint.sdc

CLK_NAME = 'clk'
CLK_PORT_NAME = CLK_NAME
CLK_PERIOD = round(1 / 0.7 * 1000)  # 700MHz
CLK_IO_PCT = 0

with open('constraint.sdc', 'w') as f:
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
