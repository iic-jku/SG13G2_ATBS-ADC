# settings.mk is not under source control. Put variables into this
# file to avoid having to adding the to the make command line.
-include settings.mk

# ==============================================================================
# Uncomment or add the design to run
# ==============================================================================

# Default design (exported in run_orfs.sh)
DESIGN_CONFIG ?= ./designs/ihp-sg13g2/atbs_core_floating_window_board/config.mk
# DESIGN_CONFIG ?= ./designs/ihp-sg13g2/atbs_core_fixed_window_board/config.mk

# Include design and platform configuration before setting default options
# in this file. This allows the DESIGN_CONFIG to set different defaults than
# this file.
include $(DESIGN_CONFIG)

# If we are running headless use offscreen rendering for save_image
ifeq ($(DISPLAY),)
export QT_QPA_PLATFORM ?= offscreen
endif

# ==============================================================================
#  ____  _____ _____ _   _ ____
# / ___|| ____|_   _| | | |  _ \
# \___ \|  _|   | | | | | | |_) |
#  ___) | |___  | | | |_| |  __/
# |____/|_____| |_|  \___/|_|
#
# ==============================================================================

# Disable make's implicit rules
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:

#-------------------------------------------------------------------------------
# Default target when invoking without specific target.
.DEFAULT_GOAL := finish

#-------------------------------------------------------------------------------
# Proper way to initiate SHELL for make
SHELL          := /usr/bin/env bash
.SHELLFLAGS    := -o pipefail -c

#-------------------------------------------------------------------------------
# Setup variables to point to root / head of the OpenROAD directory
# - the following settings allowed user to point OpenROAD binaries to different
#   location
# - default is current install / clone directory
ifeq ($(origin FLOW_HOME), undefined)
FLOW_HOME := $(abspath $(dir $(firstword $(MAKEFILE_LIST))))
endif
export FLOW_HOME

#-------------------------------------------------------------------------------
# Setup variables to point to other location for the following sub directory
# - designs - default is under current directory
# - platforms - default is under current directory
# - work home - default is current directory
# - utils, scripts, test - default is under current directory
export DESIGN_HOME   ?= $(FLOW_HOME)/designs
export PLATFORM_HOME ?= $(FLOW_HOME)/platforms
export WORK_HOME     ?= .

export UTILS_DIR     ?= $(FLOW_HOME)/util
export SCRIPTS_DIR   ?= $(FLOW_HOME)/scripts
export TEST_DIR      ?= $(FLOW_HOME)/test

PUBLIC=nangate45 sky130hd sky130hs asap7 ihp-sg13g2 gf180

ifneq ($(wildcard $(PLATFORM_HOME)/$(PLATFORM)),)
  export PLATFORM_DIR = $(PLATFORM_HOME)/$(PLATFORM)
else ifneq ($(findstring $(PLATFORM),$(PUBLIC)),)
  export PLATFORM_DIR = ./platforms/$(PLATFORM)
else ifneq ($(wildcard ../../$(PLATFORM)),)
  export PLATFORM_DIR = ../../$(PLATFORM)
else
  $(error [ERROR][FLOW] Platform '$(PLATFORM)' not found.)
endif

include $(PLATFORM_DIR)/config.mk

# __SPACE__ is a workaround for whitespace hell in "foreach"; there
# is no way to escape space in defaults.py and get "foreach" to work.
$(foreach line,$(shell $(SCRIPTS_DIR)/defaults.py),$(eval export $(subst __SPACE__, ,$(line))))

# If the design, nor $(PLATFORM_DIR)/config.mk provided a default, provide one here
export SYNTH_MINIMUM_KEEP_SIZE ?= 0

# Not normally adjusted by user
export SYNTH_OPERATIONS_ARGS ?= -extra-map $(FLOW_HOME)/platforms/common/lcu_kogge_stone.v
export SYNTH_FULL_ARGS ?= $(SYNTH_ARGS) $(SYNTH_OPERATIONS_ARGS)

export FLOW_VARIANT ?= base

# Setup working directories
export DESIGN_NICKNAME ?= $(DESIGN_NAME)

export DESIGN_CONFIG
export DESIGN_DIR  = $(dir $(DESIGN_CONFIG))
export LOG_DIR     = $(WORK_HOME)/logs/$(PLATFORM)/$(DESIGN_NICKNAME)/$(FLOW_VARIANT)
export OBJECTS_DIR = $(WORK_HOME)/objects/$(PLATFORM)/$(DESIGN_NICKNAME)/$(FLOW_VARIANT)
export REPORTS_DIR = $(WORK_HOME)/reports/$(PLATFORM)/$(DESIGN_NICKNAME)/$(FLOW_VARIANT)
export RESULTS_DIR = $(WORK_HOME)/results/$(PLATFORM)/$(DESIGN_NICKNAME)/$(FLOW_VARIANT)

ifneq ($(BLOCKS),)
  $(foreach block,$(BLOCKS),$(eval BLOCK_LEFS += ./results/$(PLATFORM)/$(DESIGN_NICKNAME)_$(block)/$(FLOW_VARIANT)/${block}.lef))
  $(foreach block,$(BLOCKS),$(eval BLOCK_LIBS += ./results/$(PLATFORM)/$(DESIGN_NICKNAME)_$(block)/$(FLOW_VARIANT)/${block}.lib))
  $(foreach block,$(BLOCKS),$(eval BLOCK_GDS += ./results/$(PLATFORM)/$(DESIGN_NICKNAME)_$(block)/$(FLOW_VARIANT)/6_final.gds))
  $(foreach block,$(BLOCKS),$(eval BLOCK_CDL += ./results/$(PLATFORM)/$(DESIGN_NICKNAME)_$(block)/$(FLOW_VARIANT)/6_final.cdl))
  $(foreach block,$(BLOCKS),$(eval BLOCK_LOG_FOLDERS += ./logs/$(PLATFORM)/$(DESIGN_NICKNAME)_$(block)/$(FLOW_VARIANT)/))
  export ADDITIONAL_LEFS += $(BLOCK_LEFS)
  export ADDITIONAL_LIBS += $(BLOCK_LIBS)
  export ADDITIONAL_GDS += $(BLOCK_GDS)
  export GDS_FILES += $(BLOCK_GDS)
  ifneq ($(CDL_FILES),)
    export CDL_FILES += $(BLOCK_CDL)
  endif
endif

export RTLMP_RPT_DIR ?= $(OBJECTS_DIR)/rtlmp
export RTLMP_RPT_FILE ?= partition.txt
export RTLMP_BLOCKAGE_FILE ?= $(OBJECTS_DIR)/rtlmp/partition.txt.blockage

#-------------------------------------------------------------------------------
ifeq (,$(strip $(NUM_CORES)))
  # Linux (utility program)
  NUM_CORES := $(shell nproc 2>/dev/null)

  ifeq (,$(strip $(NUM_CORES)))
    # Linux (generic)
    NUM_CORES := $(shell grep -c ^processor /proc/cpuinfo 2>/dev/null)
  endif
  ifeq (,$(strip $(NUM_CORES)))
    # BSD (at least FreeBSD and Mac OSX)
    NUM_CORES := $(shell sysctl -n hw.ncpu 2>/dev/null)
  endif
  ifeq (,$(strip $(NUM_CORES)))
    # Fallback
    NUM_CORES := 1
  endif
endif
export NUM_CORES

YOSYS_FLAGS += -v 3

#-------------------------------------------------------------------------------
# setup all commands used within this flow
export TIME_BIN   ?= env time
TIME_CMD = $(TIME_BIN) -f 'Elapsed time: %E[h:]min:sec. CPU time: user %U sys %S (%P). Peak memory: %MKB.'
TIME_TEST = $(shell $(TIME_CMD) echo foo 2>/dev/null)
ifeq (,$(strip $(TIME_TEST)))
  TIME_CMD = $(TIME_BIN)
endif

# The following determine the executable location for each tool used by this flow.
# Priority is given to
#       1 user explicit set with variable in Makefile or command line, for instance setting OPENROAD_EXE
#       2 ORFS compiled tools: openroad, yosys
export OPENROAD_EXE      ?= $(abspath $(FLOW_HOME)/../tools/install/OpenROAD/bin/openroad)
export OPENSTA_EXE       ?= $(abspath $(FLOW_HOME)/../tools/install/OpenROAD/bin/sta)

OPENROAD_ARGS            = -no_init -threads $(NUM_CORES) $(OR_ARGS)
OPENROAD_CMD             = $(OPENROAD_EXE) -exit $(OPENROAD_ARGS)
OPENROAD_NO_EXIT_CMD     = $(OPENROAD_EXE) $(OPENROAD_ARGS)
OPENROAD_GUI_CMD         = $(OPENROAD_EXE) -gui $(OR_ARGS)

YOSYS_EXE               ?= $(abspath $(FLOW_HOME)/../tools/install/yosys/bin/yosys)

# Use locally installed and built klayout if it exists, otherwise use klayout in path
KLAYOUT_DIR = $(abspath $(FLOW_HOME)/../tools/install/klayout/)
KLAYOUT_BIN_FROM_DIR = $(KLAYOUT_DIR)/klayout

ifeq ($(wildcard $(KLAYOUT_BIN_FROM_DIR)), $(KLAYOUT_BIN_FROM_DIR))
KLAYOUT_CMD ?= sh -c 'LD_LIBRARY_PATH=$(dir $(KLAYOUT_BIN_FROM_DIR)) $$0 "$$@"' $(KLAYOUT_BIN_FROM_DIR)
else
ifeq ($(KLAYOUT_CMD),)
KLAYOUT_CMD := $(shell command -v klayout)
endif
endif
KLAYOUT_FOUND            = $(if $(KLAYOUT_CMD),,$(error KLayout not found in PATH))

ifneq ($(shell command -v stdbuf),)
  STDBUF_CMD ?= stdbuf -o L
endif

#-------------------------------------------------------------------------------
WRAPPED_LEFS = $(foreach lef,$(notdir $(WRAP_LEFS)),$(OBJECTS_DIR)/lef/$(lef:.lef=_mod.lef))
WRAPPED_LIBS = $(foreach lib,$(notdir $(WRAP_LIBS)),$(OBJECTS_DIR)/$(lib:.lib=_mod.lib))
export ADDITIONAL_LEFS += $(WRAPPED_LEFS) $(WRAP_LEFS)
export LIB_FILES += $(WRAP_LIBS) $(WRAPPED_LIBS)

export DONT_USE_LIBS   = $(patsubst %.lib.gz, %.lib, $(addprefix $(OBJECTS_DIR)/lib/, $(notdir $(LIB_FILES))))
export DONT_USE_SC_LIB ?= $(firstword $(DONT_USE_LIBS))

# Stream system used for final result (GDS is default): GDS, GSDII, GDS2, OASIS, or OAS
STREAM_SYSTEM ?= GDS
ifneq ($(findstring GDS,$(shell echo $(STREAM_SYSTEM) | tr '[:lower:]' '[:upper:]')),)
	export STREAM_SYSTEM_EXT := gds
	GDSOAS_FILES = $(GDS_FILES)
	ADDITIONAL_GDSOAS = $(ADDITIONAL_GDS)
	SEAL_GDSOAS = $(SEAL_GDS)
else
	export STREAM_SYSTEM_EXT := oas
	GDSOAS_FILES = $(OAS_FILES)
	ADDITIONAL_GDSOAS = $(ADDITIONAL_OAS)
	SEAL_GDSOAS = $(SEAL_OAS)
endif
export WRAPPED_GDSOAS = $(foreach lef,$(notdir $(WRAP_LEFS)),$(OBJECTS_DIR)/$(lef:.lef=_mod.$(STREAM_SYSTEM_EXT)))

define GENERATE_ABSTRACT_RULE
ifeq ($(wildcard $(3)),)
# There is no unique config.mk for this module, use the shared
# block.mk that, by convention, is in the same folder as config.mk
# of the parent macro.
#
# At an early stage, before refining each of the macros, a shared
# block.mk file can be useful to run through the flow to explore
# more global concerns instead of getting mired in the details of
# each macro.
block := $(patsubst ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/%,%,$(dir $(3)))
$(1) $(2) &:
	$$(UNSET_AND_MAKE) DESIGN_NAME=${block} DESIGN_NICKNAME=$$(DESIGN_NICKNAME)_${block} DESIGN_CONFIG=$$(shell dirname $$(DESIGN_CONFIG))/block.mk generate_abstract
else
# There is a unique config.mk for this Verilog module
$(1) $(2) &:
	$$(UNSET_AND_MAKE) DESIGN_CONFIG=$(3) generate_abstract
endif
endef

# Targets to harden Blocks in case of hierarchical flow is triggered
.PHONY: build_macros
build_macros: $(BLOCK_LEFS) $(BLOCK_LIBS)

$(foreach block,$(BLOCKS),$(eval $(call GENERATE_ABSTRACT_RULE,./results/$(PLATFORM)/$(DESIGN_NICKNAME)_$(block)/$(FLOW_VARIANT)/${block}.lef,./results/$(PLATFORM)/$(DESIGN_NICKNAME)_$(block)/$(FLOW_VARIANT)/${block}.lib,$(shell dirname $(DESIGN_CONFIG))/${block}/config.mk)))
$(foreach block,$(BLOCKS),$(eval ./results/$(PLATFORM)/$(DESIGN_NICKNAME)_$(block)/$(FLOW_VARIANT)/6_final.gds: ./results/$(PLATFORM)/$(DESIGN_NICKNAME)_$(block)/$(FLOW_VARIANT)/${block}.lef))

# Utility to print tool version information
#-------------------------------------------------------------------------------
.PHONY: versions.txt
versions.txt:
	mkdir -p $(OBJECTS_DIR)
	@if [ -z "$(YOSYS_EXE)" ]; then \
		echo >> $(OBJECTS_DIR)/$@ "yosys not installed"; \
	else \
		$(YOSYS_EXE) -V > $(OBJECTS_DIR)/$@; \
	fi
	@echo openroad `$(OPENROAD_EXE) -version` >> $(OBJECTS_DIR)/$@
	@if [ -z "$(KLAYOUT_CMD)" ]; then \
		echo >> $(OBJECTS_DIR)/$@ "klayout not installed"; \
	else \
		$(KLAYOUT_CMD) -zz -v >> $(OBJECTS_DIR)/$@; \
	fi

# Pre-process libraries
# ==============================================================================

# Create temporary Liberty files which have the proper dont_use properties set
# For use with Yosys and ABC
.SECONDEXPANSION:
$(DONT_USE_LIBS): $$(filter %$$(@F) %$$(@F).gz,$(LIB_FILES))
	@mkdir -p $(OBJECTS_DIR)/lib
	$(UTILS_DIR)/preprocessLib.py -i $^ -o $@

$(OBJECTS_DIR)/lib/merged.lib: $(DONT_USE_LIBS)
	$(UTILS_DIR)/mergeLib.pl $(PLATFORM)_merged $(DONT_USE_LIBS) > $@

# Pre-process KLayout tech
# ==============================================================================
$(OBJECTS_DIR)/klayout_tech.lef: $(TECH_LEF)
	$(UNSET_AND_MAKE) do-klayout_tech

.PHONY: do-klayout_tech
do-klayout_tech:
	@mkdir -p $(OBJECTS_DIR)
	cp $(TECH_LEF) $(OBJECTS_DIR)/klayout_tech.lef

KLAYOUT_ENV_VAR_IN_PATH_VERSION = 0.28.11
KLAYOUT_VERSION := $(if $(KLAYOUT_CMD),$(shell $(KLAYOUT_CMD) -v 2>/dev/null | grep 'KLayout' | cut -d ' ' -f2),)

KLAYOUT_ENV_VAR_IN_PATH = $(shell \
	if [ -z "$(KLAYOUT_VERSION)" ]; then \
		echo "not_found"; \
	elif [ "$$(echo -e "$(KLAYOUT_VERSION)\n$(KLAYOUT_ENV_VAR_IN_PATH_VERSION)" | sort -V | head -n1)" = "$(KLAYOUT_VERSION)" ] && [ "$(KLAYOUT_VERSION)" != "$(KLAYOUT_ENV_VAR_IN_PATH_VERSION)" ]; then \
		echo "invalid"; \
	else \
		echo "valid"; \
	fi)

$(OBJECTS_DIR)/klayout.lyt: $(KLAYOUT_TECH_FILE) $(OBJECTS_DIR)/klayout_tech.lef
	$(UNSET_AND_MAKE) do-klayout

.PHONY: do-klayout
do-klayout:
ifeq ($(KLAYOUT_ENV_VAR_IN_PATH),valid)
	SC_LEF_RELATIVE_PATH="$$\(env('FLOW_HOME')\)/$(shell realpath --relative-to=$(FLOW_HOME) $(SC_LEF))"; \
	OTHER_LEFS_RELATIVE_PATHS=$$(echo "$(foreach file, $(OBJECTS_DIR)/klayout_tech.lef $(ADDITIONAL_LEFS),<lef-files>$$(realpath --relative-to=$(RESULTS_DIR) $(file))</lef-files>)"); \
	sed 's,<lef-files>.*</lef-files>,<lef-files>'"$$SC_LEF_RELATIVE_PATH"'</lef-files>'"$$OTHER_LEFS_RELATIVE_PATHS"',g' $(KLAYOUT_TECH_FILE) > $(OBJECTS_DIR)/klayout.lyt
else
	sed 's,<lef-files>.*</lef-files>,$(foreach file, $(OBJECTS_DIR)/klayout_tech.lef $(SC_LEF) $(ADDITIONAL_LEFS),<lef-files>$(shell realpath --relative-to=$(RESULTS_DIR) $(file))</lef-files>),g' $(KLAYOUT_TECH_FILE) > $(OBJECTS_DIR)/klayout.lyt
endif
	sed -i 's,<map-file>.*</map-file>,$(foreach file, $(FLOW_HOME)/platforms/$(PLATFORM)/*map,<map-file>$(shell realpath $(file))</map-file>),g' $(OBJECTS_DIR)/klayout.lyt

$(OBJECTS_DIR)/klayout_wrap.lyt: $(KLAYOUT_TECH_FILE) $(OBJECTS_DIR)/klayout_tech.lef
	$(UNSET_AND_MAKE) do-klayout_wrap

.PHONY: do-klayout_wrap
do-klayout_wrap:
	sed 's,<lef-files>.*</lef-files>,$(foreach file, $(OBJECTS_DIR)/klayout_tech.lef $(WRAP_LEFS),<lef-files>$(shell realpath --relative-to=$(OBJECTS_DIR)/def $(file))</lef-files>),g' $(KLAYOUT_TECH_FILE) > $(OBJECTS_DIR)/klayout_wrap.lyt

# Create Macro wrappers (if necessary)
# ==============================================================================
WRAP_CFG = $(PLATFORM_DIR)/wrapper.cfg


export TCLLIBPATH := util/cell-veneer $(TCLLIBPATH)
$(WRAPPED_LEFS):
	mkdir -p $(OBJECTS_DIR)/lef $(OBJECTS_DIR)/def
	util/cell-veneer/wrap.tcl -cfg $(WRAP_CFG) -macro $(filter %$(notdir $(@:_mod.lef=.lef)),$(WRAP_LEFS))
	mv $(notdir $@) $@
	mv $(notdir $(@:lef=def)) $(dir $@)../def/$(notdir $(@:lef=def))

$(WRAPPED_LIBS):
	mkdir -p $(OBJECTS_DIR)/lib
	sed 's/library(\(.*\))/library(\1_mod)/g' $(filter %$(notdir $(@:_mod.lib=.lib)),$(WRAP_LIBS)) | sed 's/cell(\(.*\))/cell(\1_mod)/g' > $@

# ==============================================================================
#  ______   ___   _ _____ _   _ _____ ____ ___ ____
# / ___\ \ / / \ | |_   _| | | | ____/ ___|_ _/ ___|
# \___ \\ V /|  \| | | | | |_| |  _| \___ \| |\___ \
#  ___) || | | |\  | | | |  _  | |___ ___) | | ___) |
# |____/ |_| |_| \_| |_| |_| |_|_____|____/___|____/
#
.PHONY: synth
synth: $(RESULTS_DIR)/1_synth.v

.PHONY: synth-report
synth-report: synth
	$(UNSET_AND_MAKE) do-synth-report

.PHONY: do-synth-report
do-synth-report:
	($(TIME_CMD) $(OPENROAD_CMD) $(SCRIPTS_DIR)/synth_metrics.tcl) 2>&1 | tee $(abspath $(LOG_DIR)/1_1_yosys_metrics.log)

.PHONY: memory
memory:
	if [ -f $(RESULTS_DIR)/mem_hierarchical.json ]; then \
		python3 $(SCRIPTS_DIR)/mem_dump.py $(RESULTS_DIR)/mem_hierarchical.json; \
	fi
	python3 $(SCRIPTS_DIR)/mem_dump.py $(RESULTS_DIR)/mem.json

# ==============================================================================


# Run Synthesis using yosys
#-------------------------------------------------------------------------------

export SYNTH_SCRIPT ?= $(SCRIPTS_DIR)/synth.tcl
export SDC_FILE_CLOCK_PERIOD = $(RESULTS_DIR)/clock_period.txt

$(SDC_FILE_CLOCK_PERIOD): $(SDC_FILE)
	mkdir -p $(dir $@)
	echo $(ABC_CLOCK_PERIOD_IN_PS) > $@

YOSYS_DEPENDENCIES=$(DONT_USE_LIBS) $(WRAPPED_LIBS) $(DFF_LIB_FILE) $(VERILOG_FILES) $(SYNTH_NETLIST_FILES) $(LATCH_MAP_FILE) $(ADDER_MAP_FILE) $(SDC_FILE_CLOCK_PERIOD)

.PHONY: yosys-dependencies
yosys-dependencies: $(YOSYS_DEPENDENCIES)

.PHONY: do-yosys
do-yosys: $(DONT_USE_SC_LIB)
	mkdir -p $(RESULTS_DIR) $(LOG_DIR) $(REPORTS_DIR) $(OBJECTS_DIR)
	(export VERILOG_FILES=$(RESULTS_DIR)/1_synth.rtlil; \
	$(TIME_CMD) $(YOSYS_EXE) $(YOSYS_FLAGS) -c $(SYNTH_SCRIPT)) 2>&1 | tee $(abspath $(LOG_DIR)/1_1_yosys.log)

.PHONY: do-yosys-canonicalize
do-yosys-canonicalize: yosys-dependencies $(DONT_USE_SC_LIB)
	mkdir -p $(RESULTS_DIR) $(LOG_DIR) $(REPORTS_DIR) $(OBJECTS_DIR)
	($(TIME_CMD) $(YOSYS_EXE) $(YOSYS_FLAGS) -c $(SCRIPTS_DIR)/synth_canonicalize.tcl) 2>&1 | tee $(abspath $(LOG_DIR)/1_1_yosys_canonicalize.log)

$(RESULTS_DIR)/1_synth.rtlil: $(YOSYS_DEPENDENCIES)
	$(UNSET_AND_MAKE) do-yosys-canonicalize

$(RESULTS_DIR)/1_1_yosys.v: $(RESULTS_DIR)/1_synth.rtlil
	$(UNSET_AND_MAKE) do-yosys

.PHONY: do-synth
do-synth:
	mkdir -p $(RESULTS_DIR) $(LOG_DIR) $(REPORTS_DIR)
	cp $(RESULTS_DIR)/1_1_yosys.v $(RESULTS_DIR)/1_synth.v

$(RESULTS_DIR)/1_synth.v: $(RESULTS_DIR)/1_1_yosys.v
	$(UNSET_AND_MAKE) do-synth

.PHONY: clean_synth
clean_synth:
	rm -f $(RESULTS_DIR)/1_* $(RESULTS_DIR)/mem*.json
	rm -f $(REPORTS_DIR)/synth_*
	rm -f $(LOG_DIR)/1_*
	rm -f $(SYNTH_STATS)
	rm -f $(SDC_FILE_CLOCK_PERIOD)
	rm -rf _tmp_yosys-abc-*


# ==============================================================================
#  _____ _     ___   ___  ____  ____  _        _    _   _
# |  ___| |   / _ \ / _ \|  _ \|  _ \| |      / \  | \ | |
# | |_  | |  | | | | | | | |_) | |_) | |     / _ \ |  \| |
# |  _| | |__| |_| | |_| |  _ <|  __/| |___ / ___ \| |\  |
# |_|   |_____\___/ \___/|_| \_\_|   |_____/_/   \_\_| \_|
#
.PHONY: floorplan
floorplan: $(RESULTS_DIR)/2_floorplan.odb \
           $(RESULTS_DIR)/2_floorplan.sdc

# ==============================================================================

ifneq ($(FOOTPRINT),)
IS_CHIP = 1
else ifneq ($(FOOTPRINT_TCL),)
IS_CHIP = 1
endif

UNSET_VARS = for var in $(UNSET_VARIABLES_NAMES); do unset $$var; done

# FILE_MAKEFILE is needed when ORFS is invoked with
# `make --file=$FLOW_DIR/Makefile` or `make --directory $FLOW_DIR`.
#
# However, on some versions of make, MAKEFILE_LIST can be empty, so
# don't expand it in that case.
FILE_MAKEFILE ?= $(if $(firstword $(MAKEFILE_LIST)),--file=$(firstword $(MAKEFILE_LIST)),)
SUB_MAKE = $(MAKE) $(foreach V,$(COMMAND_LINE_ARGS), $(if $($V),$V=$(shell echo "$($V)" | $(FLOW_HOME)/scripts/escape.sh),$V='')) --no-print-directory $(FILE_MAKEFILE) DESIGN_CONFIG=$(DESIGN_CONFIG)
UNSET_AND_MAKE = @bash -c '$(UNSET_VARS); $(SUB_MAKE) $$@' --

$(OBJECTS_DIR)/copyright.txt:
	@$(OPENROAD_CMD) $(SCRIPTS_DIR)/noop.tcl
	mkdir -p $(OBJECTS_DIR)
	@touch $(OBJECTS_DIR)/copyright.txt

define OPEN_GUI_SHORTCUT
.PHONY: gui_$(1) open_$(1)
gui_$(1): gui_$(2)
open_$(1): open_$(2)
endef

define OPEN_GUI
.PHONY: open_$(1) gui_$(1)
open_$(1):
	$(2)=$(RESULTS_DIR)/$(1) $(OPENROAD_NO_EXIT_CMD) $(SCRIPTS_DIR)/open.tcl
gui_$(1):
	$(2)=$(RESULTS_DIR)/$(1) $(OPENROAD_GUI_CMD) $(SCRIPTS_DIR)/open.tcl
endef

# Separate dependency checking and doing a step. This can
# be useful to retest a stage without having to delete the
# target, or when building a wafer thin layer on top of
# ORFS using CMake, Ninja, Bazel, etc. where makefile
# dependency checking only gets in the way.
#
# Note that there is no "do-synth" step as it is a special
# first step that for usecases such as Bazel where it should
# always be built when invoked. Latter stages in the build process
# are conditionally built by the Bazel implementation.
#
# A "do-synth" step would be welcomed, but it isn't strictly necessary
# for the Bazel use-case.
#
# do-floorplan, do-place, do-cts, do-route, do-finish are the
# supported interface to execute those stages without checking
# for dependencies.
#
# The do- substeps of each of these stages are subject to change.
#
# $(1) stem, e.g. 2_1_floorplan
# $(2) dependencies
# $(3) tcl script step
# $(4) extension of result, default .odb
# $(5) folder of target, default $(RESULTS_DIR)
define do-step
$(if $(5),$(5),$(RESULTS_DIR))/$(1)$(if $(4),$(4),.odb): $(2)
	$$(UNSET_AND_MAKE) do-$(1)

ifeq ($(if $(4),$(4),.odb),.odb)
.PHONY: $(1)
$(1): $(RESULTS_DIR)/$(1).odb

$(eval $(call OPEN_GUI_SHORTCUT,$(1),$(1).odb))
endif

.PHONY: do-$(1)
do-$(1): $(OBJECTS_DIR)/copyright.txt
	@mkdir -p $(RESULTS_DIR) $(LOG_DIR) $(REPORTS_DIR) $(OBJECTS_DIR)
	@echo Running $(3).tcl, stage $(1)
	@(set -eo pipefail; \
	trap 'mv $(LOG_DIR)/$(1).tmp.log $(LOG_DIR)/$(1).log' EXIT; \
	$(OPENROAD_EXE) $(OPENROAD_ARGS) -exit $(SCRIPTS_DIR)/noop.tcl 2>&1 >$(LOG_DIR)/$(1).tmp.log; \
	$(TIME_CMD) $(OPENROAD_CMD) -no_splash $(SCRIPTS_DIR)/$(3).tcl -metrics $(LOG_DIR)/$(1).json 2>&1 | \
	tee -a $(abspath $(LOG_DIR)/$(1).tmp.log))
endef

# generate make rules to copy a file, if a dependency change and
# a do- sibling rule that copies the file unconditionally.
#
# The file is copied within the $(RESULTS_DIR)
#
# $(1) stem of target, e.g. 2_2_floorplan_io
# $(2) basename of file to be copied
# $(3) further dependencies
# $(4) target extension, default .odb
define do-copy
$(RESULTS_DIR)/$(1)$(if $(4),$(4),.odb): $(RESULTS_DIR)/$(2) $(3)
	$$(UNSET_AND_MAKE) do-$(1)$(if $(4),$(4),)

.PHONY: do-$(1)$(if $(4),$(4),)
do-$(1)$(if $(4),$(4),):
	cp $(RESULTS_DIR)/$(2) $(RESULTS_DIR)/$(1)$(if $(4),$(4),.odb)
endef


# STEP 1: Translate verilog to odb
#-------------------------------------------------------------------------------
$(eval $(call do-step,2_1_floorplan,$(RESULTS_DIR)/1_synth.v $(RESULTS_DIR)/1_synth.sdc $(TECH_LEF) $(SC_LEF) $(ADDITIONAL_LEFS) $(FOOTPRINT) $(SIG_MAP_FILE) $(FOOTPRINT_TCL) $(DONT_USE_SC_LIB),floorplan))

# STEP 2: Random IO placement
#-------------------------------------------------------------------------------
$(eval $(call do-step,2_2_floorplan_io,$(RESULTS_DIR)/2_1_floorplan.odb $(IO_CONSTRAINTS),io_placement_random))

$(eval $(call do-copy,2_floorplan,2_1_floorplan.sdc,,.sdc))

# STEP 3: Macro Placement
#-------------------------------------------------------------------------------
$(eval $(call do-step,2_3_floorplan_macro,$(RESULTS_DIR)/2_2_floorplan_io.odb $(RESULTS_DIR)/1_synth.v $(RESULTS_DIR)/1_synth.sdc $(MACRO_PLACEMENT) $(MACRO_PLACEMENT_TCL),macro_place))

# STEP 4: Tapcell and Welltie insertion
#-------------------------------------------------------------------------------
$(eval $(call do-step,2_4_floorplan_tapcell,$(RESULTS_DIR)/2_3_floorplan_macro.odb $(TAPCELL_TCL),tapcell))

# STEP 5: PDN generation
#-------------------------------------------------------------------------------
$(eval $(call do-step,2_5_floorplan_pdn,$(RESULTS_DIR)/2_4_floorplan_tapcell.odb $(PDN_TCL),pdn))

$(eval $(call do-copy,2_floorplan,2_5_floorplan_pdn.odb,))

$(RESULTS_DIR)/2_floorplan.sdc: $(RESULTS_DIR)/2_1_floorplan.odb

.PHONY: do-floorplan
do-floorplan: $(DONT_USE_SC_LIB)
	$(UNSET_AND_MAKE) do-2_1_floorplan do-2_2_floorplan_io do-2_3_floorplan_macro do-2_4_floorplan_tapcell do-2_5_floorplan_pdn do-2_floorplan do-2_floorplan.sdc

.PHONY: clean_floorplan
clean_floorplan:
	rm -f $(RESULTS_DIR)/2_*floorplan*.odb $(RESULTS_DIR)/2_floorplan.sdc $(RESULTS_DIR)/2_*.v $(RESULTS_DIR)/2_*.def
	rm -f $(REPORTS_DIR)/2_*
	rm -f $(LOG_DIR)/2_*

# ==============================================================================
#  ____  _        _    ____ _____
# |  _ \| |      / \  / ___| ____|
# | |_) | |     / _ \| |   |  _|
# |  __/| |___ / ___ \ |___| |___
# |_|   |_____/_/   \_\____|_____|
#
.PHONY: place
place: $(RESULTS_DIR)/3_place.odb \
       $(RESULTS_DIR)/3_place.sdc
# ==============================================================================
# STEP 1: Global placement without placed IOs, timing-driven, and routability-driven.
#-------------------------------------------------------------------------------
$(eval $(call do-step,3_1_place_gp_skip_io,$(RESULTS_DIR)/2_floorplan.odb $(RESULTS_DIR)/2_floorplan.sdc $(LIB_FILES),global_place_skip_io))

$(eval $(call do-step,3_2_place_iop,$(RESULTS_DIR)/3_1_place_gp_skip_io.odb $(IO_CONSTRAINTS),io_placement))

# STEP 3: Global placement with placed IOs, timing-driven, and routability-driven.
#-------------------------------------------------------------------------------
$(eval $(call do-step,3_3_place_gp,$(RESULTS_DIR)/3_2_place_iop.odb $(RESULTS_DIR)/2_floorplan.sdc $(LIB_FILES),global_place))

# STEP 4: Resizing & Buffering
#-------------------------------------------------------------------------------
$(eval $(call do-step,3_4_place_resized,$(RESULTS_DIR)/3_3_place_gp.odb $(RESULTS_DIR)/2_floorplan.sdc,resize))

.PHONY: clean_resize
clean_resize:
	rm -f $(RESULTS_DIR)/3_4_place_resized.odb

# STEP 5: Detail placement
#-------------------------------------------------------------------------------
$(eval $(call do-step,3_5_place_dp,$(RESULTS_DIR)/3_4_place_resized.odb,detail_place))

$(eval $(call do-copy,3_place,3_5_place_dp.odb,))

$(eval $(call do-copy,3_place,2_floorplan.sdc,,.sdc))

.PHONY: do-place
do-place:
	$(UNSET_AND_MAKE) do-3_1_place_gp_skip_io do-3_2_place_iop do-3_3_place_gp do-3_4_place_resized do-3_5_place_dp do-3_place do-3_place.sdc

# Clean Targets
#-------------------------------------------------------------------------------
.PHONY: clean_place
clean_place:
	rm -f $(RESULTS_DIR)/3_*place*.odb
	rm -f $(RESULTS_DIR)/3_place.sdc
	rm -f $(RESULTS_DIR)/3_*.def $(RESULTS_DIR)/3_*.v
	rm -f $(REPORTS_DIR)/3_*
	rm -f $(LOG_DIR)/3_*


# ==============================================================================
#   ____ _____ ____
#  / ___|_   _/ ___|
# | |     | | \___ \
# | |___  | |  ___) |
#  \____| |_| |____/
#
.PHONY: cts
cts: $(RESULTS_DIR)/4_cts.odb \
     $(RESULTS_DIR)/4_cts.sdc
# ==============================================================================

# Run TritonCTS
# ------------------------------------------------------------------------------
$(eval $(call do-step,4_1_cts,$(RESULTS_DIR)/3_place.odb $(RESULTS_DIR)/3_place.sdc,cts))

$(RESULTS_DIR)/4_cts.sdc: $(RESULTS_DIR)/4_cts.odb

$(eval $(call do-copy,4_cts,4_1_cts.odb))

.PHONY: do-cts
do-cts:
	$(UNSET_AND_MAKE) do-4_1_cts do-4_cts

.PHONY: clean_cts
clean_cts:
	rm -rf $(RESULTS_DIR)/4_*cts*.odb $(RESULTS_DIR)/4_cts.sdc $(RESULTS_DIR)/4_*.v $(RESULTS_DIR)/4_*.def
	rm -f  $(REPORTS_DIR)/4_*
	rm -rf $(LOG_DIR)/4_*


# ==============================================================================
#  ____   ___  _   _ _____ ___ _   _  ____
# |  _ \ / _ \| | | |_   _|_ _| \ | |/ ___|
# | |_) | | | | | | | | |  | ||  \| | |  _
# |  _ <| |_| | |_| | | |  | || |\  | |_| |
# |_| \_\\___/ \___/  |_| |___|_| \_|\____|
#
.PHONY: route
route: $(RESULTS_DIR)/5_route.odb \
       $(RESULTS_DIR)/5_route.sdc

.PHONY: grt
grt: $(RESULTS_DIR)/5_1_grt.odb

# ==============================================================================


# STEP 1: Run global route
#-------------------------------------------------------------------------------
$(eval $(call do-step,5_1_grt,$(RESULTS_DIR)/4_cts.odb $(FASTROUTE_TCL) $(PRE_GLOBAL_ROUTE),global_route))

# STEP 2: Run detailed route
#-------------------------------------------------------------------------------
$(eval $(call do-step,5_2_route,$(RESULTS_DIR)/5_1_grt.odb,detail_route))

$(eval $(call do-step,5_3_fillcell,$(RESULTS_DIR)/5_2_route.odb,fillcell))

$(eval $(call do-copy,5_route,5_3_fillcell.odb))

$(eval $(call do-copy,5_route,5_1_grt.sdc,,.sdc))

.PHONY: do-route
do-route:
	$(UNSET_AND_MAKE) do-5_1_grt do-5_2_route do-5_3_fillcell do-5_route do-5_route.sdc

.PHONY: do-grt
do-grt:
	$(UNSET_AND_MAKE) do-5_1_grt

.PHONY: clean_route
clean_route:
	rm -rf output*/ results*.out.dmp layer_*.mps
	rm -rf *.gdid *.log *.met *.sav *.res.dmp
	rm -rf $(RESULTS_DIR)/route.guide $(RESULTS_DIR)/output_guide.mod $(RESULTS_DIR)/updated_clks.sdc
	rm -rf $(RESULTS_DIR)/5_*.odb $(RESULTS_DIR)/5_route.sdc $(RESULTS_DIR)/5_*.def $(RESULTS_DIR)/5_*.v
	rm -f  $(REPORTS_DIR)/5_*
	rm -f  $(LOG_DIR)/5_*

.PHONY: klayout_tr_rpt
klayout_tr_rpt: $(RESULTS_DIR)/5_route.def $(OBJECTS_DIR)/klayout.lyt
	$(call KLAYOUT_FOUND)
	$(KLAYOUT_CMD) -rd in_drc="$(REPORTS_DIR)/5_route_drc.rpt" \
	        -rd in_def="$<" \
	        -rd tech_file=$(OBJECTS_DIR)/klayout.lyt \
	        -rm $(UTILS_DIR)/viewDrc.py

.PHONY: klayout_guides
klayout_guides: $(RESULTS_DIR)/5_route.def $(OBJECTS_DIR)/klayout.lyt
	$(call KLAYOUT_FOUND)
	$(KLAYOUT_CMD) -rd in_guide="$(RESULTS_DIR)/route.guide" \
	        -rd in_def="$<" \
	        -rd net_name=$(GUIDE_NET) \
	        -rd tech_file=$(OBJECTS_DIR)/klayout.lyt \
	        -rm $(UTILS_DIR)/viewGuide.py

# ==============================================================================
#  _____ ___ _   _ ___ ____  _   _ ___ _   _  ____
# |  ___|_ _| \ | |_ _/ ___|| | | |_ _| \ | |/ ___|
# | |_   | ||  \| || |\___ \| |_| || ||  \| | |  _
# |  _|  | || |\  || | ___) |  _  || || |\  | |_| |
# |_|   |___|_| \_|___|____/|_| |_|___|_| \_|\____|
#
GDS_FINAL_FILE = $(RESULTS_DIR)/6_final.$(STREAM_SYSTEM_EXT)
.PHONY: finish
finish: $(LOG_DIR)/6_report.log \
        $(RESULTS_DIR)/6_final.v \
        $(RESULTS_DIR)/6_final.sdc \
        $(GDS_FINAL_FILE)
	$(UNSET_AND_MAKE) elapsed

.PHONY: elapsed
elapsed:
	-@$(UTILS_DIR)/genElapsedTime.py -d $(BLOCK_LOG_FOLDERS) $(LOG_DIR)

# Useful when working with macros, see elapsed time for all macros in platform
.PHONY: elapsed-all
elapsed-all:
	@$(UTILS_DIR)/genElapsedTime.py -d $(shell find $(WORK_HOME)/logs/$(PLATFORM)/*/*/ -type d)

$(eval $(call do-step,6_1_fill,$(RESULTS_DIR)/5_route.odb $(RESULTS_DIR)/5_route.sdc $(FILL_CONFIG),density_fill))

$(eval $(call do-copy,6_1_fill,5_route.sdc,,.sdc))

$(eval $(call do-copy,6_final,5_route.sdc,,.sdc))

$(eval $(call do-step,6_report,$(RESULTS_DIR)/6_1_fill.odb $(RESULTS_DIR)/6_1_fill.sdc,final_report,.log,$(LOG_DIR)))

$(RESULTS_DIR)/6_final.def: $(LOG_DIR)/6_report.log

# The final results are called 6_final.*, so it is convenient when scripting
# to have the names of the artifacts match the name of the target
.PHONY: do-final
do-final: do-finish

.PHONY: final
final: finish

.PHONY: do-finish
do-finish:
	$(UNSET_AND_MAKE) do-6_1_fill do-6_1_fill.sdc do-6_final.sdc do-6_report do-gds elapsed

.PHONY: generate_abstract
generate_abstract: $(RESULTS_DIR)/6_final.gds $(RESULTS_DIR)/6_final.def  $(RESULTS_DIR)/6_final.v $(RESULTS_DIR)/6_final.sdc
	$(UNSET_AND_MAKE) do-generate_abstract

# Set ABSTRACT_SOURCE if you want to create an abstract from another stage than 6_final.
.PHONY: do-generate_abstract
do-generate_abstract:
	mkdir -p $(LOG_DIR) $(REPORTS_DIR)
	($(TIME_CMD) $(OPENROAD_CMD) $(SCRIPTS_DIR)/generate_abstract.tcl -metrics $(LOG_DIR)/generate_abstract.json) 2>&1 | tee $(abspath $(LOG_DIR)/generate_abstract.log)

.PHONY: clean_abstract
clean_abstract:
	rm -f $(RESULTS_DIR)/$(DESIGN_NAME).lib $(RESULTS_DIR)/$(DESIGN_NAME).lef

# Merge wrapped macros using Klayout
#-------------------------------------------------------------------------------
$(WRAPPED_GDSOAS): $(OBJECTS_DIR)/klayout_wrap.lyt $(WRAPPED_LEFS)
	$(call KLAYOUT_FOUND)
	($(TIME_CMD) $(KLAYOUT_CMD) -zz -rd design_name=$(basename $(notdir $@)) \
	        -rd in_def=$(OBJECTS_DIR)/def/$(notdir $(@:$(STREAM_SYSTEM_EXT)=def)) \
	        -rd in_files="$(ADDITIONAL_GDSOAS)" \
	        -rd config_file=$(FILL_CONFIG) \
	        -rd seal_file="" \
	        -rd out_file=$@ \
	        -rd tech_file=$(OBJECTS_DIR)/klayout_wrap.lyt \
	        -rd layer_map=$(GDS_LAYER_MAP) \
	        -r $(UTILS_DIR)/def2stream.py) 2>&1 | tee $(abspath $(LOG_DIR)/6_merge_$(basename $(notdir $@)).log)

# Merge GDS using Klayout
#-------------------------------------------------------------------------------
GDS_MERGED_FILE = $(RESULTS_DIR)/6_1_merged.$(STREAM_SYSTEM_EXT)
$(GDS_MERGED_FILE): $(RESULTS_DIR)/6_final.def $(OBJECTS_DIR)/klayout.lyt $(GDSOAS_FILES) $(WRAPPED_GDSOAS) $(SEAL_GDSOAS)
	$(UNSET_AND_MAKE) do-gds-merged

.PHONY: do-gds-merged
do-gds-merged:
	$(call KLAYOUT_FOUND)
	($(TIME_CMD) $(STDBUF_CMD) $(KLAYOUT_CMD) -zz -rd design_name=$(DESIGN_NAME) \
	        -rd in_def=$(RESULTS_DIR)/6_final.def \
	        -rd in_files="$(GDSOAS_FILES) $(WRAPPED_GDSOAS)" \
	        -rd seal_file="$(SEAL_GDSOAS)" \
	        -rd out_file=$(GDS_MERGED_FILE) \
	        -rd tech_file=$(OBJECTS_DIR)/klayout.lyt \
	        -rd layer_map=$(GDS_LAYER_MAP) \
	        -r $(UTILS_DIR)/def2stream.py) 2>&1 | tee $(abspath $(LOG_DIR)/6_1_merge.log)

$(RESULTS_DIR)/6_final.v: $(LOG_DIR)/6_report.log

.PHONY: do-gds
do-gds:
	$(UNSET_AND_MAKE) do-klayout_tech do-klayout do-klayout_wrap do-gds-merged
	cp $(GDS_MERGED_FILE) $(GDS_FINAL_FILE)

$(GDS_FINAL_FILE): $(GDS_MERGED_FILE)
	cp $< $@

.PHONY: drc
drc: $(REPORTS_DIR)/6_drc.lyrdb

$(REPORTS_DIR)/6_drc.lyrdb: $(GDS_FINAL_FILE) $(KLAYOUT_DRC_FILE)
ifneq ($(KLAYOUT_DRC_FILE),)
	$(call KLAYOUT_FOUND)
	($(TIME_CMD) $(KLAYOUT_CMD) -zz -rd in_gds="$<" \
	        -rd report_file=$(abspath $@) \
	        -r $(KLAYOUT_DRC_FILE)) 2>&1 | tee $(abspath $(LOG_DIR)/6_drc.log)
	# Hacky way of getting DRV count (don't error on no matches)
	grep -c "<value>" $@ > $(REPORTS_DIR)/6_drc_count.rpt || [[ $$? == 1 ]]
else
	echo "DRC not supported on this platform" > $@
endif

$(RESULTS_DIR)/6_final.cdl: $(RESULTS_DIR)/6_final.v
	($(TIME_CMD) $(OPENROAD_CMD) $(SCRIPTS_DIR)/cdl.tcl) 2>&1 | tee $(abspath $(LOG_DIR)/6_cdl.log)

$(OBJECTS_DIR)/6_final_concat.cdl: $(RESULTS_DIR)/6_final.cdl $(CDL_FILE)
	cat $^ > $@

.PHONY: lvs
lvs: $(RESULTS_DIR)/6_lvs.lvsdb

$(RESULTS_DIR)/6_lvs.lvsdb: $(GDS_FINAL_FILE) $(KLAYOUT_LVS_FILE) $(OBJECTS_DIR)/6_final_concat.cdl
ifneq ($(KLAYOUT_LVS_FILE),)
	$(call KLAYOUT_FOUND)
	($(TIME_CMD) $(KLAYOUT_CMD) -b -rd in_gds="$<" \
	        -rd cdl_file=$(abspath $(OBJECTS_DIR)/6_final_concat.cdl) \
	        -rd report_file=$(abspath $@) \
	        -r $(KLAYOUT_LVS_FILE)) 2>&1 | tee $(abspath $(LOG_DIR)/6_lvs.log)
else
	echo "LVS not supported on this platform" > $@
endif

.PHONY: clean_finish
clean_finish:
	rm -rf $(RESULTS_DIR)/6_*.gds $(RESULTS_DIR)/6_*.oas $(RESULTS_DIR)/6_*.odb $(RESULTS_DIR)/6_*.v $(RESULTS_DIR)/6_*.def $(RESULTS_DIR)/6_*.sdc $(RESULTS_DIR)/6_*.spef
	rm -rf $(REPORTS_DIR)/6_*.rpt
	rm -f  $(LOG_DIR)/6_*


# ==============================================================================
#  __  __ ___ ____   ____
# |  \/  |_ _/ ___| / ___|
# | |\/| || |\___ \| |
# | |  | || | ___) | |___
# |_|  |_|___|____/ \____|
#
# ==============================================================================

.PHONY: all
all: synth floorplan place cts route finish

.PHONY: clean
clean:
	@echo
	@echo "Make clean disabled."
	@echo "Use make clean_all or clean individual steps:"
	@echo "  clean_synth clean_floorplan clean_place clean_cts clean_route clean_finish"
	@echo

.PHONY: clean_all
clean_all: clean_synth clean_floorplan clean_place clean_cts clean_route clean_finish clean_metadata clean_abstract
	rm -rf $(OBJECTS_DIR)

.PHONY: nuke
nuke: clean_test clean_issues
	rm -rf ./results ./logs ./reports ./objects
	rm -rf layer_*.mps macrocell.list *best.plt *_pdn.def
	rm -rf *.rpt *.rpt.old *.def.v pin_dumper.log
	rm -f $(OBJECTS_DIR)/versions.txt $(OBJECTS_DIR)/copyright.txt dummy.guide

.PHONY: vars
vars:
	$(UTILS_DIR)/generate-vars.sh vars

# DEF/GDS/OAS viewer shortcuts
#-------------------------------------------------------------------------------
RESULTS_ODB = $(notdir $(sort $(wildcard $(RESULTS_DIR)/*.odb)))
RESULTS_DEF = $(notdir $(sort $(wildcard $(RESULTS_DIR)/*.def)))
RESULTS_GDS = $(notdir $(sort $(wildcard $(RESULTS_DIR)/*.gds)))
RESULTS_OAS = $(notdir $(sort $(wildcard $(RESULTS_DIR)/*.oas)))
.PHONY: $(foreach file,$(RESULTS_DEF) $(RESULTS_GDS) $(RESULTS_OAS),klayout_$(file))
$(foreach file,$(RESULTS_DEF) $(RESULTS_GDS) $(RESULTS_OAS),klayout_$(file)): klayout_%: $(OBJECTS_DIR)/klayout.lyt
	$(KLAYOUT_CMD) -nn $(OBJECTS_DIR)/klayout.lyt $(RESULTS_DIR)/$*

.PHONY: gui_synth
gui_synth:
	$(OPENROAD_GUI_CMD) $(SCRIPTS_DIR)/sta-synth.tcl
.PHONY: open_synth
open_synth:
	$(OPENROAD_NO_EXIT_CMD) $(SCRIPTS_DIR)/sta-synth.tcl

$(eval $(call OPEN_GUI_SHORTCUT,floorplan,2_floorplan.odb))
$(eval $(call OPEN_GUI_SHORTCUT,place,3_place.odb))
$(eval $(call OPEN_GUI_SHORTCUT,cts,4_cts.odb))
$(eval $(call OPEN_GUI_SHORTCUT,route,5_route.odb))
$(eval $(call OPEN_GUI_SHORTCUT,grt,5_1_grt.odb))
$(eval $(call OPEN_GUI_SHORTCUT,final,6_final.odb))

$(foreach file,$(RESULTS_DEF),$(eval $(call OPEN_GUI,$(file),DEF_FILE)))
$(foreach file,$(RESULTS_ODB),$(eval $(call OPEN_GUI,$(file),ODB_FILE)))

# Write a def for the corresponding odb
$(foreach file,$(RESULTS_ODB),$(file).def): %.def:
	ODB_FILE=$(RESULTS_DIR)/$* DEF_FILE=$(RESULTS_DIR)/$@ $(OPENROAD_CMD) $(SCRIPTS_DIR)/write_def.tcl
#
# Write a verilog for the corresponding odb
$(foreach file,$(RESULTS_ODB),$(file).v): %.v:
	ODB_FILE=$(RESULTS_DIR)/$* VERILOG_FILE=$(RESULTS_DIR)/$@ $(OPENROAD_CMD) $(SCRIPTS_DIR)/write_verilog.tcl

# Drop into yosys with all environment variables, useful to for instance
# debug synthesis, or run other commands aftewards, such as "show" to
# generate a .dot file of the design to visualize designs.
.PHONY: yosys
yosys:
	$(YOSYS_EXE)

# Drop into a bash shell with all environment variables, useful for debugging
.PHONY: bash
bash:
	bash --init-file <(echo "PS1='\[\e[32m\]Makefile Environment \[\e[0m\] \w $ '")

.PHONY: all_defs
all_defs : $(foreach file,$(RESULTS_ODB),$(file).def)
.PHONY: all_verilog
all_verilog : $(foreach file,$(RESULTS_ODB),$(file).v)

.PHONY: handoff
handoff : all_defs all_verilog

.PHONY: print-%
# Print any variable, for instance: make print-DIE_AREA
print-%  : ; @echo "$* = $($*)"

.PHONY: test-unset-and-make-%
test-unset-and-make-%: ; $(UNSET_AND_MAKE) $*

.phony: klayout
klayout:
	$(KLAYOUT_CMD)

.phony: run
run:
	@mkdir -p $(RESULTS_DIR) $(LOG_DIR) $(REPORTS_DIR) $(OBJECTS_DIR)
	($(OPENROAD_CMD) -no_splash $(if $(filter %.py,$(RUN_SCRIPT)),-python) $(RUN_SCRIPT) 2>&1 | tee $(abspath $(LOG_DIR)/$(RUN_LOG_NAME_STEM).log))

export RUN_YOSYS_ARGS ?= -c $(SCRIPTS_DIR)/yosys_keep.tcl
.phony: run-yosys
run-yosys:
	$(YOSYS_EXE) $(RUN_YOSYS_ARGS)

# Utilities
#-------------------------------------------------------------------------------
include $(UTILS_DIR)/utils.mk
export PRIVATE_DIR ?= ../../private_tool_scripts
-include $(PRIVATE_DIR)/private.mk
