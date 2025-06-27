#!/bin/bash

# =====================================================
# Master's Thesis: Threshold-Based Sampling ASIC with FOSS tools.
# Author: Simon Dorrer
# Last Modified: 02.04.2025
# Description: This .sh file cleans all generated files from run_all.sh.
# =====================================================

set -e -x

cd $(dirname "$0")

# atbs_core_floating_window, atbs_core_fixed_window
name=$1

VERILOG=${VERILOG:-verilog/"$name"/rtl}
ORFS=${ORFS:-orfs}
XSPICE=${XSPICE:-xspice}
PYTHON=${PYTHON:-python/plot_simulations/data}
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Clean vhdl2verilog
cd "$VERILOG"
rm -rf build
rm -f *.o
cd "$SCRIPT_DIR"

# Clean ORFS
cd "$ORFS"/flow
rm -rf ./logs/ihp-sg13g2/"$name"_board
rm -rf ./objects/ihp-sg13g2/"$name"_board
rm -rf ./reports/ihp-sg13g2/"$name"_board
rm -rf ./results/ihp-sg13g2/"$name"_board
cd "$SCRIPT_DIR"

# Clean Xspice (remove all sub-directories of the xspice project folder)
# cd "$XSPICE"
# rm -rf ./"$name"_board
# cd "$SCRIPT_DIR"

# Clean Ngspice simulation data for Python
cd "$PYTHON"
# rm -f *.txt
cd "$SCRIPT_DIR"

# Finish
echo "------ The cleaning was successful! ------"