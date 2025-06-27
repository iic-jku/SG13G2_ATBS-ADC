vlib work
vmap work work

--------------------------------- PACKAGES ------------------------------
vcom -work work ../../../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work ../../sim/vhdl/adaptive_std_p.vhd
vcom -work work WeylsDiscrepancySimVals_p.vhd
vcom -work work std_p.vhd

--------------------------------- DESIGNS ------------------------------
vcom -work work ../../../Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd
vcom -work work ../../../Priority-Encoder/rtl/priority_encoder_ea.vhd
vcom -work work ../../rtl/weyls_discrepancy_ea.vhd
vcom -work work weyls_discrepancy_tb.vhd

vsim work.weyls_discrepancy_tb 

do wave.do
--add wave -r *

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a 