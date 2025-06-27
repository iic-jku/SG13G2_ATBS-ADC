-- For Simulation in ModelSim
vlib work
vmap work work

vlog -work work ../rtl/atbs_core_floating_window_board.v
vlog -work work atbs_core_floating_window_tb.v

vsim work.atbs_core_floating_window_tb

do wave.do

run -all