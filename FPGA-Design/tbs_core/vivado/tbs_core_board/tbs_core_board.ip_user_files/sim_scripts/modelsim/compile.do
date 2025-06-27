vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../tbs_core_board.gen/sources_1/ip/pll_8MHz" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../tbs_core_board.gen/sources_1/ip/pll_8MHz" \
"../../../tbs_core_board.gen/sources_1/ip/pll_8MHz/pll_8MHz_clk_wiz.v" \
"../../../tbs_core_board.gen/sources_1/ip/pll_8MHz/pll_8MHz.v" \

vcom -work xil_defaultlib  -93  \
"../../../../../sim/vhdl/TBSSimVals_p.vhd" \
"../../../../../adaptive_threshold_control/sim/vhdl/AdaptiveCtrlSimVals_p.vhd" \
"../../../../../adaptive_threshold_control/Spike-Buffering/sim/vhdl/adaptive_std_p.vhd" \
"../../../../../adaptive_threshold_control/Weyls-Discrepancy/sim/vhdl/adaptive_std_p.vhd" \
"../../../../../adaptive_threshold_control/sim/vhdl/adaptive_std_p.vhd" \
"../../../../../adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd" \
"../../../../../adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd" \
"../../../../../adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd" \
"../../../../../adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd" \
"../../../../../adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd" \
"../../../../../analog_trigger/rtl/analog_trigger_ea.vhd" \
"../../../../../sync_chain/rtl/sync_chain_ea.vhd" \
"../../../../../dac_control/rtl/dac_control_ea.vhd" \
"../../../../../debouncer/rtl/debouncer_ea.vhd" \
"../../../../../ethernet/rtl/dual_ram_ea.vhd" \
"../../../../../memory2uart/rtl/memory2uart_ea.vhd" \
"../../../../../sc_noc_generator/rtl/sc_noc_generator_ea.vhd" \
"../../../../../spike_detector/rtl/spike_detector_ea.vhd" \
"../../../../../spike_encoder/rtl/spike_encoder_ea.vhd" \
"../../../../../spike_memory/rtl/spike_memory_ea.vhd" \
"../../../../../time_measurement/rtl/time_measurement_ea.vhd" \
"../../../../../uart/rtl/uart_tx_ea.vhd" \
"../../../../../uart/rtl/uart_rx_ea.vhd" \
"../../../../../uart/rtl/uart_ea.vhd" \
"../../../../../rtl/tbs_core_ea.vhd" \
"../../../../../rtl/vivado_board/tbs_core_board.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

