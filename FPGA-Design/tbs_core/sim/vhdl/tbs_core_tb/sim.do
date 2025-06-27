vlib work
vmap work work

--------------------------------- PACKAGES ------------------------------
vcom -work work ../TBSSimVals_p.vhd
vcom -work work ../../../adaptive_threshold_control/sim/vhdl/adaptive_std_p.vhd
vcom -work work ../../../adaptive_threshold_control/sim/vhdl/AdaptiveCtrlSimVals_p.vhd

--------------------------------- DESIGNS ------------------------------
vcom -work work ../../../sync_chain/rtl/sync_chain_ea.vhd
vcom -work work ../../../debouncer/rtl/debouncer_ea.vhd
vcom -work work ../../../adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd
vcom -work work ../../../adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd
vcom -work work ../../../adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd
vcom -work work ../../../adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd
vcom -work work ../../../adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd
vcom -work work ../../../dac_control/rtl/dac_control_ea.vhd
vcom -work work ../../../memory2uart/rtl/memory2uart_ea.vhd
vcom -work work ../../../spike_detector/rtl/spike_detector_ea.vhd
vcom -work work ../../../spike_encoder/rtl/spike_encoder_ea.vhd
vcom -work work ../../../spike_memory/rtl/dual_ram_ea.vhd
vcom -work work ../../../spike_memory/rtl/spike_memory_ea.vhd
vcom -work work ../../../time_measurement/rtl/time_measurement_ea.vhd
vcom -work work ../../../uart/rtl/uart_rx_ea.vhd
vcom -work work ../../../uart/rtl/uart_tx_ea.vhd
vcom -work work ../../../uart/rtl/uart_ea.vhd
vcom -work work ../../../analog_trigger/rtl/analog_trigger_ea.vhd
vcom -work work ../../../sc_noc_generator/rtl/sc_noc_generator_ea.vhd
vcom -work work ../../../quartus/pll/pll_8MHz.vhd
vcom -work work ../../../rtl/tbs_core_ea.vhd
vcom -work work ../../../rtl/quartus_board/tbs_core_board.vhd
vcom -work work tbs_core_tb.vhd

vsim work.tbs_core_tb

do wave.do

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a 