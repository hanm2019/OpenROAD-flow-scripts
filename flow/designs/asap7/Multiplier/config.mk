export PLATFORM = asap7
export DESIGN_NAME = Multiplier
export DESIGN_NICKNAME = Multiplier
export VERILOG_FILES = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))
export SDC_FILE = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc
export DIE_AREA = 0 0 14 14
export CORE_AREA = 0.48 0.48 13.52 13.52
export PLACE_DENSITY = 0.9
