vlib work
vmap work work

--------------------------------- PACKAGES -----------------------------
vcom -work work ../../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work Spike2ThermoSimVals_p.vhd

--------------------------------- DESIGNS ------------------------------
vcom -work work ../rtl/spike_2_thermocode_ea.vhd
vcom -work work spike_2_thermocode_tb.vhd

vsim work.spike_2_thermocode_tb 

do wave.do
--add wave -r *

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a 