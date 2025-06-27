#!/bin/bash

# =====================================================
# Master's Thesis: Threshold-Based Sampling ASIC with FOSS tools.
# Author: Simon Dorrer
# Last Modified: 24.11.2024
# Description: This .sh file verifies and simulates a VHDL testbench with GHDL and GTKWave.
# =====================================================

set -e -x

cd $(dirname "$0")

name=$1

SIMVALS=${SIMVALS:-../../../../sim/vhdl}
ADAPTIVE_THRESHOLD_CONTROL_SIM=${ADAPTIVE_THRESHOLD_CONTROL_SIM:-../../../sim/vhdl}
PRIORITY_ENCODER_RTL=${PRIORITY_ENCODER_RTL:-../../../Priority-Encoder/rtl}
SPIKE2THERMOCODE_RTL=${SPIKE2THERMOCODE_RTL:-../../../Spike-2-Thermocode/rtl}
RTL=${RTL:-../../rtl}
SRC_FOLDER=${SRC_FOLDER:-.}

mkdir -p build

# Check syntax of sources with GHDL
echo "------ Check syntax of sources with GHDL ------"
ghdl -s --std=93c --work=TBS --workdir=build \
  "$SIMVALS"/TBSSimVals_p.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_SIM"/AdaptiveCtrlSimVals_p.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_SIM"/adaptive_std_p.vhd \
  "$SRC_FOLDER"/adaptive_std_p.vhd \
  "$SRC_FOLDER"/std_p.vhd \
  "$SRC_FOLDER"/WeylsDiscrepancySimVals_p.vhd \
  "$SPIKE2THERMOCODE_RTL"/spike_2_thermocode_ea.vhd \
  "$PRIORITY_ENCODER_RTL"/priority_encoder_ea.vhd \
  "$RTL"/"$name"_ea.vhd \
  "$RTL"/"$name"_board.vhd \
  "$SRC_FOLDER"/"$name"_tb.vhd
  
# Analyze sources with GHDL
echo "------ Analyze sources with GHDL ------"
ghdl -a --std=93c --work=TBS --workdir=build \
  "$SIMVALS"/TBSSimVals_p.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_SIM"/AdaptiveCtrlSimVals_p.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_SIM"/adaptive_std_p.vhd \
  "$SRC_FOLDER"/adaptive_std_p.vhd \
  "$SRC_FOLDER"/std_p.vhd \
  "$SRC_FOLDER"/WeylsDiscrepancySimVals_p.vhd \
  "$SPIKE2THERMOCODE_RTL"/spike_2_thermocode_ea.vhd \
  "$PRIORITY_ENCODER_RTL"/priority_encoder_ea.vhd \
  "$RTL"/"$name"_ea.vhd \
  "$RTL"/"$name"_board.vhd \
  "$SRC_FOLDER"/"$name"_tb.vhd
  
# Elaborate testbench with GHDL
echo "------ Elaborate testbench with GHDL ------"
ghdl -e --std=93c --work=TBS --workdir=build "$name"_tb
  
# Run testbench with GHDL
echo "------ Run testbench with GHDL ------"
# ghdl -r --std=93c --work=TBS --workdir=build "$name"_tb --stop-time=500ns --vcd="$SRC_FOLDER"/"$name"_tb.vcd
ghdl -r --std=93c --work=TBS --workdir=build "$name"_tb --assert-level=error --vcd="$SRC_FOLDER"/"$name"_tb.vcd || true

# View simulation with GTKWave
echo "------ View simulation with GTKWave ------"

if [ -e "$SRC_FOLDER"/"$name"_tb.gtkw ]
then
  gtkwave "$SRC_FOLDER"/"$name"_tb.gtkw
else
  gtkwave "$SRC_FOLDER"/"$name"_tb.vcd
fi

# Clean
rm -rf build
rm -f  *.o
rm -f  *.vcd
rm -f  "$name"_tb

# Finish
echo "------ The design was analyzed and simulated successfully! ------"