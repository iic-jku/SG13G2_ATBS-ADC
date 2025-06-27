vlib work
vmap work work
vcom -work work ../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work ../rtl/time_measurement_ea.vhd
vcom -work work ../rtl/time_measurement_board.vhd
vcom -work work time_measurement_tb.vhd

vsim work.time_measurement_tb

do wave.do

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a