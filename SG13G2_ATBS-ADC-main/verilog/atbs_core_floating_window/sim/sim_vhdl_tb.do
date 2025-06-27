-- For Simulation in ModelSim
vlib work
vmap work work

--------------------------------- PACKAGES ------------------------------
vcom -work work ../../../vhdl/atbs_core_floating_window/sim/vhdl/TBSSimVals_p.vhd

--------------------------------- DESIGNS ------------------------------
vlog -work work ../rtl/atbs_core_floating_window_board.v
vcom -work work ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd
vcom -work work ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd
vcom -work work ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_ea.vhd
vcom -work work atbs_core_floating_window_tb.vhd

vsim work.atbs_core_floating_window_tb

do wave.do

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a