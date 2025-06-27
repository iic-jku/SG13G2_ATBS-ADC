vlib work
vmap work work

--------------------------------- PACKAGES ------------------------------
vcom -work work ../../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work adaptive_std_p.vhd
vcom -work work std_p.vhd
vcom -work work AdaptiveCtrlSimVals_p.vhd

--------------------------------- DESIGNS ------------------------------
vcom -work work ../../../time_measurement/rtl/time_measurement_ea.vhd
vcom -work work ../../Spike-Buffering/rtl/spike_shift_reg_ea.vhd
vcom -work work ../../Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd
vcom -work work ../../Priority-Encoder/rtl/priority_encoder_ea.vhd
vcom -work work ../../Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd
vcom -work work ../../rtl/adaptive_threshold_control_ea.vhd
vcom -work work adaptive_threshold_control_tb.vhd

--vsim work.buffer_discrepancy_tb 
vsim work.adaptive_threshold_control_tb

do adaptive_wave.do
--add wave -r *

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop; quit;}
run -a