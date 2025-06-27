onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {UPPER DAC}
add wave -noupdate -divider CONSTANTS
add wave -noupdate /dac_control_tb/dut_dac_control_0/DELTA_STEPS_BITWIDTH
add wave -noupdate /dac_control_tb/dut_dac_control_0/DAC_BITWIDTH
add wave -noupdate /dac_control_tb/dut_dac_control_0/DAC_IS_UPPPER
add wave -noupdate /dac_control_tb/dut_dac_control_0/DAC_SETTLING_CLKS
add wave -noupdate /dac_control_tb/dut_dac_control_0/DAC_COUNTER_MAX
add wave -noupdate /dac_control_tb/dut_dac_control_0/DAC_COUNTER_BITWIDTH
add wave -noupdate /dac_control_tb/dut_dac_control_0/DAC_COUNTER_INIT
add wave -noupdate /dac_control_tb/dut_dac_control_0/SETTLING_COUNTER_BITWIDTH
add wave -noupdate -divider INPUTS
add wave -noupdate /dac_control_tb/dut_dac_control_0/clock_i
add wave -noupdate /dac_control_tb/dut_dac_control_0/reset_i
add wave -noupdate /dac_control_tb/dut_dac_control_0/enable_dac_i
add wave -noupdate /dac_control_tb/dut_dac_control_0/clear_dac_i
add wave -noupdate /dac_control_tb/dut_dac_control_0/adaptive_mode_i
add wave -noupdate /dac_control_tb/dut_dac_control_0/select_tbs_delta_steps_i
add wave -noupdate /dac_control_tb/dut_dac_control_0/direction_i
add wave -noupdate /dac_control_tb/dut_dac_control_0/update_dac_strb_i
add wave -noupdate -radix unsigned /dac_control_tb/dut_dac_control_0/delta_steps_i
add wave -noupdate -divider INTERNAL
add wave -noupdate /dac_control_tb/dut_dac_control_0/state
add wave -noupdate /dac_control_tb/dut_dac_control_0/select_dac_value
add wave -noupdate -radix unsigned /dac_control_tb/dut_dac_control_0/dac_init_value
add wave -noupdate -radix unsigned /dac_control_tb/dut_dac_control_0/dac_counter_value
add wave -noupdate /dac_control_tb/dut_dac_control_0/dac_counter_strb
add wave -noupdate /dac_control_tb/dut_dac_control_0/dac_change_in_progress
add wave -noupdate -radix unsigned /dac_control_tb/dut_dac_control_0/settling_counter_value
add wave -noupdate -divider OUTPUTS
add wave -noupdate -radix unsigned /dac_control_tb/dut_dac_control_0/dac_counter_value_o
add wave -noupdate /dac_control_tb/dut_dac_control_0/dac_finished_strb_o
add wave -noupdate /dac_control_tb/dut_dac_control_0/dac_pd_o
add wave -noupdate /dac_control_tb/dut_dac_control_0/dac_wr_o
add wave -noupdate /dac_control_tb/dut_dac_control_0/dac_clr_o
add wave -noupdate /dac_control_tb/dut_dac_control_0/dac_o
add wave -noupdate -format Analog-Step -height 74 -max 126.99999999999997 -min -128.0 /dac_control_tb/dut_dac_control_0/dac_o
add wave -noupdate -divider {LOWER DAC}
add wave -noupdate -divider CONSTANTS
add wave -noupdate /dac_control_tb/dut_dac_control_1/DELTA_STEPS_BITWIDTH
add wave -noupdate /dac_control_tb/dut_dac_control_1/DAC_BITWIDTH
add wave -noupdate /dac_control_tb/dut_dac_control_1/DAC_IS_UPPPER
add wave -noupdate /dac_control_tb/dut_dac_control_1/DAC_SETTLING_CLKS
add wave -noupdate /dac_control_tb/dut_dac_control_1/DAC_COUNTER_MAX
add wave -noupdate /dac_control_tb/dut_dac_control_1/DAC_COUNTER_BITWIDTH
add wave -noupdate /dac_control_tb/dut_dac_control_1/DAC_COUNTER_INIT
add wave -noupdate /dac_control_tb/dut_dac_control_1/SETTLING_COUNTER_BITWIDTH
add wave -noupdate -divider INPUTS
add wave -noupdate /dac_control_tb/dut_dac_control_1/clock_i
add wave -noupdate /dac_control_tb/dut_dac_control_1/reset_i
add wave -noupdate /dac_control_tb/dut_dac_control_1/enable_dac_i
add wave -noupdate /dac_control_tb/dut_dac_control_1/clear_dac_i
add wave -noupdate /dac_control_tb/dut_dac_control_1/adaptive_mode_i
add wave -noupdate /dac_control_tb/dut_dac_control_1/select_tbs_delta_steps_i
add wave -noupdate /dac_control_tb/dut_dac_control_1/direction_i
add wave -noupdate /dac_control_tb/dut_dac_control_1/update_dac_strb_i
add wave -noupdate -radix unsigned /dac_control_tb/dut_dac_control_1/delta_steps_i
add wave -noupdate -divider INTERNAL
add wave -noupdate /dac_control_tb/dut_dac_control_1/state
add wave -noupdate /dac_control_tb/dut_dac_control_1/select_dac_value
add wave -noupdate -radix unsigned /dac_control_tb/dut_dac_control_1/dac_init_value
add wave -noupdate -radix unsigned -childformat {{/dac_control_tb/dut_dac_control_1/dac_counter_value(8) -radix unsigned} {/dac_control_tb/dut_dac_control_1/dac_counter_value(7) -radix unsigned} {/dac_control_tb/dut_dac_control_1/dac_counter_value(6) -radix unsigned} {/dac_control_tb/dut_dac_control_1/dac_counter_value(5) -radix unsigned} {/dac_control_tb/dut_dac_control_1/dac_counter_value(4) -radix unsigned} {/dac_control_tb/dut_dac_control_1/dac_counter_value(3) -radix unsigned} {/dac_control_tb/dut_dac_control_1/dac_counter_value(2) -radix unsigned} {/dac_control_tb/dut_dac_control_1/dac_counter_value(1) -radix unsigned} {/dac_control_tb/dut_dac_control_1/dac_counter_value(0) -radix unsigned}} -subitemconfig {/dac_control_tb/dut_dac_control_1/dac_counter_value(8) {-height 15 -radix unsigned} /dac_control_tb/dut_dac_control_1/dac_counter_value(7) {-height 15 -radix unsigned} /dac_control_tb/dut_dac_control_1/dac_counter_value(6) {-height 15 -radix unsigned} /dac_control_tb/dut_dac_control_1/dac_counter_value(5) {-height 15 -radix unsigned} /dac_control_tb/dut_dac_control_1/dac_counter_value(4) {-height 15 -radix unsigned} /dac_control_tb/dut_dac_control_1/dac_counter_value(3) {-height 15 -radix unsigned} /dac_control_tb/dut_dac_control_1/dac_counter_value(2) {-height 15 -radix unsigned} /dac_control_tb/dut_dac_control_1/dac_counter_value(1) {-height 15 -radix unsigned} /dac_control_tb/dut_dac_control_1/dac_counter_value(0) {-height 15 -radix unsigned}} /dac_control_tb/dut_dac_control_1/dac_counter_value
add wave -noupdate /dac_control_tb/dut_dac_control_1/dac_counter_strb
add wave -noupdate /dac_control_tb/dut_dac_control_1/dac_change_in_progress
add wave -noupdate -radix unsigned /dac_control_tb/dut_dac_control_1/settling_counter_value
add wave -noupdate -divider OUTPUTS
add wave -noupdate -radix unsigned /dac_control_tb/dut_dac_control_1/dac_counter_value_o
add wave -noupdate /dac_control_tb/dut_dac_control_1/dac_finished_strb_o
add wave -noupdate /dac_control_tb/dut_dac_control_1/dac_pd_o
add wave -noupdate /dac_control_tb/dut_dac_control_1/dac_wr_o
add wave -noupdate /dac_control_tb/dut_dac_control_1/dac_clr_o
add wave -noupdate /dac_control_tb/dut_dac_control_1/dac_o
add wave -noupdate -format Analog-Step -height 74 -max 126.99999999999997 -min -128.0 /dac_control_tb/dut_dac_control_1/dac_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 180
configure wave -valuecolwidth 101
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {11885580 ns}
