#!/bin/bash

# =====================================================
# Master's Thesis: Threshold-Based Sampling ASIC with FOSS tools.
# Author: Simon Dorrer
# Last Modified: 05.12.2024
# Description: This .sh file takes a synthesized gate-level Verilog file (e.g. 1_synth for ORFS) and converts it into a .xspice file for the IHP SG13G2 PDK.
# This .xspice file can be included in Xschem and simulated with Ngspice + Xyce.
# The conversion is done with scripts from qflow (vlog2Verilog, vlog2Spice and spi2xspice.py).
# =====================================================

set -e -x

cd $(dirname "$0")

# atbs_core_floating_window_board, atbs_core_fixed_window_board
name=$1

ORFS=${ORFS:-../orfs/flow/results/ihp-sg13g2/${name}/base}
SRC_FOLDER=${SRC_FOLDER:-.}

# Create directory
mkdir -p "$name"

# Convert Verilog (.v) file to Vlog (.vp) file
vlog2Verilog "$ORFS"/1_synth.v -o "$name"/"$name".vp -l $PDKPATH/libs.ref/sg13g2_stdcell/lef/sg13g2_stdcell.lef -v "VPWR,VPB" -g "VGND,VNB"

# Convert Vlog (.vp) file to spice (.spi or .spice) file
vlog2Spice "$name"/"$name".vp -l $PDKPATH/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice -o "$name"/"$name".spice

# Convert spice (.spi or .spice) file to Xspice (.xspice) file:
# -io_time=<value>  Rise and fall time for signals in and out of the digital block
# -time=<value>     Rise and fall time of gate outputs
# -idelay=<value>   Input delay at gate inputs
# -odelay=<value>   Throughput delay of the gate
# -cload=<value>    Gate output load capacitance
python3 spi2xspice.py $PDKPATH/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_typ_1p50V_25C.lib -io_time=500p -time=50p -idelay=5p -odelay=50p -cload=250f "$name"/"$name".spice "$name"/"$name".xspice
# python3 spi2xspice.py $PDKPATH/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_typ_1p50V_25C.lib -io_time=10n -time=1n -idelay=1n -odelay=50n -cload=1p "$name"/"$name".spice "$name"/"$name".xspice # default

# Finish
echo "------ The synthesized gate-level Verilog file was successfully converted into a .xspice file! ------"