vlib work
vmap work work

vcom -work work ../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work ../../sync_chain/rtl/sync_chain_ea.vhd
vcom -work work ../rtl/spike_detector_ea.vhd
vcom -work work ../rtl/spike_detector_board.vhd
vcom -work work spike_detector_tb.vhd

vsim work.spike_detector_tb

do wave.do

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a