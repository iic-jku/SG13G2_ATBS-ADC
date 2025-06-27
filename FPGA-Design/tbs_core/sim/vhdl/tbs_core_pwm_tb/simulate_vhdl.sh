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


TBS_CORE_SIM=${TBS_CORE_SIM:-../}
ADAPTIVE_THRESHOLD_CONTROL_SIM=${ADAPTIVE_THRESHOLD_CONTROL_SIM:-../../../adaptive_threshold_control/sim/vhdl}

PRIORITY_ENCODER_RTL=${PRIORITY_ENCODER_RTL:-../../../adaptive_threshold_control/Priority-Encoder/rtl}
SPIKE2THERMOCODE_RTL=${SPIKE2THERMOCODE_RTL:-../../../adaptive_threshold_control/Spike-2-Thermocode/rtl}
SPIKE_BUFFERING_RTL=${SPIKE_BUFFERING_RTL:-../../../adaptive_threshold_control/Spike-Buffering/rtl}
WEYLS_DISCREPANCY_RTL=${WEYLS_DISCREPANCY_RTL:-../../../adaptive_threshold_control/Weyls-Discrepancy/rtl}
ADAPTIVE_THRESHOLD_CONTROL_RTL=${ADAPTIVE_THRESHOLD_CONTROL_RTL:-../../../adaptive_threshold_control/rtl}
ANALOG_TRIGGER_RTL=${ANALOG_TRIGGER_RTL:-../../../analog_trigger/rtl}
PWM_MODULATOR_RTL=${PWM_MODULATOR_RTL:-../../../pwm_modulator/rtl}
DAC_CONTROL_RTL=${DAC_CONTROL_RTL:-../../../dac_control/rtl}
DEBOUNCER_RTL=${DEBOUNCER_RTL:-../../../debouncer/rtl}
MEMORY2UART_RTL=${MEMORY2UART_RTL:-../../../memory2uart/rtl}
SC_NOC_GENERATOR_RTL=${SC_NOC_GENERATOR_RTL:-../../../sc_noc_generator/rtl}
SPIKE_DETECTOR_RTL=${SPIKE_DETECTOR_RTL:-../../../spike_detector/rtl}
SPIKE_ENCODER_RTL=${SPIKE_ENCODER_RTL:-../../../spike_encoder/rtl}
SPIKE_MEMORY_RTL=${SPIKE_MEMORY_RTL:-../../../spike_memory/rtl}
SYNC_CHAIN_RTL=${SYNC_CHAIN_RTL:-../../../sync_chain/rtl}
TIME_MEASUREMENT_RTL=${TIME_MEASUREMENT_RTL:-../../../time_measurement/rtl}
UART_RTL=${UART_RTL:-../../../uart/rtl}
TBS_CORE_RTL=${TBS_CORE_RTL:-../../../rtl}
SRC_FOLDER=${SRC_FOLDER:-.}

mkdir -p build

# Check syntax of sources with GHDL
echo "------ Check syntax of sources with GHDL ------"
ghdl -s --std=93c --work=TBS --workdir=build \
  "$TBS_CORE_SIM"/TBSSimVals_p.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_SIM"/AdaptiveCtrlSimVals_p.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_SIM"/adaptive_std_p.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_SIM"/Std_p.vhd \
  "$SYNC_CHAIN_RTL"/sync_chain_ea.vhd \
  "$DEBOUNCER_RTL"/debouncer_ea.vhd \
  "$PRIORITY_ENCODER_RTL"/priority_encoder_ea.vhd \
  "$SPIKE2THERMOCODE_RTL"/spike_2_thermocode_ea.vhd \
  "$SPIKE_BUFFERING_RTL"/spike_shift_reg_ea.vhd \
  "$WEYLS_DISCREPANCY_RTL"/weyls_discrepancy_ea.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_RTL"/adaptive_threshold_control_ea.vhd \
  "$ANALOG_TRIGGER_RTL"/analog_trigger_ea.vhd \
  "$PWM_MODULATOR_RTL"/pwm_modulator_ea.vhd \
  "$DAC_CONTROL_RTL"/dac_control_ea.vhd \
  "$MEMORY2UART_RTL"/memory2uart_ea.vhd \
  "$SC_NOC_GENERATOR_RTL"/sc_noc_generator_ea.vhd \
  "$SPIKE_DETECTOR_RTL"/spike_detector_ea.vhd \
  "$SPIKE_ENCODER_RTL"/spike_encoder_ea.vhd \
  "$SPIKE_MEMORY_RTL"/dual_ram_ea.vhd \
  "$SPIKE_MEMORY_RTL"/spike_memory_ea.vhd \
  "$TIME_MEASUREMENT_RTL"/time_measurement_ea.vhd \
  "$UART_RTL"/uart_rx_ea.vhd \
  "$UART_RTL"/uart_tx_ea.vhd \
  "$UART_RTL"/uart_ea.vhd \
  "$TBS_CORE_RTL"/"$name"_ea.vhd \
  "$SRC_FOLDER"/"$name"_tb.vhd
  
# Analyze sources with GHDL
echo "------ Analyze sources with GHDL ------"
ghdl -a --std=93c --work=TBS --workdir=build \
  "$TBS_CORE_SIM"/TBSSimVals_p.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_SIM"/AdaptiveCtrlSimVals_p.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_SIM"/adaptive_std_p.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_SIM"/Std_p.vhd \
  "$SYNC_CHAIN_RTL"/sync_chain_ea.vhd \
  "$DEBOUNCER_RTL"/debouncer_ea.vhd \
  "$PRIORITY_ENCODER_RTL"/priority_encoder_ea.vhd \
  "$SPIKE2THERMOCODE_RTL"/spike_2_thermocode_ea.vhd \
  "$SPIKE_BUFFERING_RTL"/spike_shift_reg_ea.vhd \
  "$WEYLS_DISCREPANCY_RTL"/weyls_discrepancy_ea.vhd \
  "$ADAPTIVE_THRESHOLD_CONTROL_RTL"/adaptive_threshold_control_ea.vhd \
  "$ANALOG_TRIGGER_RTL"/analog_trigger_ea.vhd \
  "$PWM_MODULATOR_RTL"/pwm_modulator_ea.vhd \
  "$DAC_CONTROL_RTL"/dac_control_ea.vhd \
  "$MEMORY2UART_RTL"/memory2uart_ea.vhd \
  "$SC_NOC_GENERATOR_RTL"/sc_noc_generator_ea.vhd \
  "$SPIKE_DETECTOR_RTL"/spike_detector_ea.vhd \
  "$SPIKE_ENCODER_RTL"/spike_encoder_ea.vhd \
  "$SPIKE_MEMORY_RTL"/dual_ram_ea.vhd \
  "$SPIKE_MEMORY_RTL"/spike_memory_ea.vhd \
  "$TIME_MEASUREMENT_RTL"/time_measurement_ea.vhd \
  "$UART_RTL"/uart_rx_ea.vhd \
  "$UART_RTL"/uart_tx_ea.vhd \
  "$UART_RTL"/uart_ea.vhd \
  "$TBS_CORE_RTL"/"$name"_ea.vhd \
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