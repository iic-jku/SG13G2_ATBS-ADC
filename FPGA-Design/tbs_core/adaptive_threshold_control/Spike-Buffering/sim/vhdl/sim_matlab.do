vlib work
vmap work work

--------------------------------- PACKAGES ------------------------------
vcom -work work ../../sim/vhdl/adaptive_std_p.vhd
vcom -work work SpikesShiftRegSimVals_p.vhd
vcom -work work std_p.vhd
--------------------------------- DESIGNS ------------------------------
vcom -work work ../../../../Time-Measurement/rtl/time_measurement_ea.vhd
vcom -work work ../../rtl/spike_shift_reg_ea.vhd
vcom -work work spike_shift_reg_tb.vhd

vsim work.spike_shift_reg_tb 

--do wave.do
--add wave -r *




when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop; quit;}
run -a 


--run 500 ns
