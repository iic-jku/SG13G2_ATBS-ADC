vlib work
vmap work work
vcom -work work ../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work ../rtl/uart_tx_ea.vhd
vcom -work work ../rtl/uart_rx_ea.vhd
vcom -work work ../rtl/uart_ea.vhd
vcom -work work ../rtl/uart_board.vhd
vcom -work work uart_tb.vhd

vsim work.uart_tb 

do wave.do

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a