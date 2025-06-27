transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../ipstatic" -l xpm -l xil_defaultlib \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../ipstatic" -l xpm -l xil_defaultlib \
"../../../tbs_core_all_board.gen/sources_1/ip/pll_50MHz/pll_50MHz_clk_wiz.v" \
"../../../tbs_core_all_board.gen/sources_1/ip/pll_50MHz/pll_50MHz.v" \

vcom -work xil_defaultlib -93  -incr \
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
"../../../../../ethernet/rtl/address_ea.vhd" \
"../../../../../analog_trigger/rtl/analog_trigger_ea.vhd" \
"../../../../../ethernet/rtl/std_p.vhd" \
"../../../../../ethernet/rtl/cyclicShift_ea.vhd" \
"../../../../../sync_chain/rtl/sync_chain_ea.vhd" \
"../../../../../dac_control/rtl/dac_control_ea.vhd" \
"../../../../../debouncer/rtl/debouncer_ea.vhd" \
"../../../../../ethernet/rtl/dual_ram_ea.vhd" \
"../../../../../ethernet/rtl/synchronizer_ea.vhd" \
"../../../../../ethernet/rtl/vector_synchronizer_ea.vhd" \
"../../../../../ethernet/rtl/ram_strobeGenerator_ea.vhd" \
"../../../../../ethernet/rtl/ethernet_tx_storage_ea.vhd" \
"../../../../../ethernet/rtl/ethernet_tx_controller_ea.vhd" \
"../../../../../ethernet/rtl/ethernet_tx_ea.vhd" \
"../../../../../ethernet/rtl/ethernet_rx_storage_ea.vhd" \
"../../../../../ethernet/rtl/ethernet_rx_controller_ea.vhd" \
"../../../../../ethernet/rtl/ethernet_rx_ea.vhd" \
"../../../../../ethernet/rtl/ethernet_ea.vhd" \
"../../../../../memory2uart/rtl/memory2uart_ea.vhd" \
"../../../../../pwm_modulator/rtl/pwm_modulator_ea.vhd" \
"../../../../../sc_noc_generator/rtl/sc_noc_generator_ea.vhd" \
"../../../../../spike_detector/rtl/spike_detector_ea.vhd" \
"../../../../../spike_encoder/rtl/spike_encoder_ea.vhd" \
"../../../../../spike_memory/rtl/spike_memory_ea.vhd" \
"../../../../../time_measurement/rtl/time_measurement_ea.vhd" \
"../../../../../uart/rtl/uart_tx_ea.vhd" \
"../../../../../uart/rtl/uart_rx_ea.vhd" \
"../../../../../uart/rtl/uart_ea.vhd" \
"../../../../../rtl/tbs_core_all_ea.vhd" \
"../../../../../rtl/vivado_board/tbs_core_all_board.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

