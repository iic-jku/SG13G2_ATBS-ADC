vlib work
vmap work work
vcom -work work ../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work ../rtl/pwm_modulator_ea.vhd
vcom -work work ../rtl/pwm_modulator_board.vhd
vcom -work work pwm_modulator_tb.vhd

vsim work.pwm_modulator_tb

do wave.do

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a