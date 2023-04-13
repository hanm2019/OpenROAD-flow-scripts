export PLATFORM               = asap7

export DESIGN_NAME            = ArrayGemmini

export VERILOG_FILES          = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))
export SDC_FILE               = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export DIE_AREA               = 0 0 220 220
export CORE_AREA              = 10 10 210 210
export PLACE_DENSITY          = 0.35
