export DESIGN_NAME = atbs_core_floating_window_board
export VERILOG_FOLDER = atbs_core_floating_window

export PLATFORM = ihp-sg13g2

export VERILOG_FILES  = $(FLOW_HOME)/../../verilog/$(VERILOG_FOLDER)/rtl/$(DESIGN_NAME).v
export SDC_FILE       = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NAME)/constraint.sdc
export IO_CONSTRAINTS = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NAME)/io.tcl

export USE_FILL = 1

export PLACE_DENSITY ?= 0.88
export CORE_UTILIZATION = 60
export TNS_END_PERCENT = 100

# Suppress errors due to empty cells (see https://github.com/iic-jku/IIC-OSIC-TOOLS/issues/80)
export GDS_ALLOW_EMPTY=$(DESIGN_NAME)_DEF_FILL