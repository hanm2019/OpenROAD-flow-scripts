export PLATFORM               = asap7

export DESIGN_NAME            = CellSARA

export VERILOG_FILES          = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))
export SDC_FILE               = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc



# export DIE_AREA               = 0 0 220 220
# export CORE_AREA              = 10 10 210 210
export DIE_AREA               = 0 0 320 320
export CORE_AREA              = 10 10 310 310
export PLACE_DENSITY          = 0.35
