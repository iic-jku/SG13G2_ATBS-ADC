vlib work
vmap work work
vcom -work work ../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work ../rtl/sync_chain_ea.vhd
vcom -work work ../rtl/sync_chain_board.vhd
vcom -work work sync_chain_tb.vhd

vsim work.sync_chain_tb

do wave.do

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a