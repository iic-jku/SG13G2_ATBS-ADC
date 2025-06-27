vlib work
vmap work work
vcom -work work ../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work ../rtl/sc_noc_generator_ea.vhd
vcom -work work ../rtl/sc_noc_generator_board.vhd
vcom -work work sc_noc_generator_tb.vhd

vsim work.sc_noc_generator_tb

do wave.do

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a