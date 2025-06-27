vlib work
vmap work work
vcom -work work ../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work ../rtl/dual_ram_ea.vhd
vcom -work work ../rtl/spike_memory_ea.vhd
vcom -work work ../rtl/spike_memory_board.vhd
vcom -work work spike_memory_tb.vhd

vsim work.spike_memory_tb

do wave.do

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a