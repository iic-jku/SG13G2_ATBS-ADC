vlib work
vmap work work
vcom -work work ../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work ../rtl/analog_trigger_ea.vhd
vcom -work work ../rtl/analog_trigger_board.vhd
vcom -work work analog_trigger_tb.vhd

vsim work.analog_trigger_tb

do wave.do

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a