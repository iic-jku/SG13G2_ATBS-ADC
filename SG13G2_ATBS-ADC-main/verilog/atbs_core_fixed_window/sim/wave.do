onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider INPUTS
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/clock_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/reset_n_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/comp_upper_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/comp_lower_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/trigger_start_sampling_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/trigger_start_mode_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/adaptive_mode_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/control_mode_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/signal_select_in_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/enable_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/select_tbs_delta_steps_i
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/uart_rx_i
add wave -noupdate -divider INTERNAL
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/reset_i
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/reset_entity
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/comp_upper_sync
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/comp_lower_sync
add wave -noupdate -divider {MAIN Counter}
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/main_counter_value
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/reset_main_counter_strb
add wave -noupdate -divider {MAIN FSM}
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/dac_control_0/state
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/state
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/detection_en
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/select_enable_write
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/clear_dac
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/dac_init_strb
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/enable_read
add wave -noupdate -divider {SIGNAL Path}
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/spike_detector_0/spike
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/spike_detector_0/spike_strb
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/spike_detector_0/lock_detection
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/update_dac_upper_strb
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/dac_finished_upper_strb
add wave -noupdate -format Analog-Step -height 74 -max 254.99999999999997 -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/dac_counter_value_upper
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/update_dac_lower_strb
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/dac_finished_lower_strb
add wave -noupdate -format Analog-Step -height 74 -max 254.0 -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/dac_counter_value_lower
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/increasing_en
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/decreasing_en
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/tbs_increasing_en
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/tbs_decreasing_en
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/adaptive_increasing_en
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/adaptive_decreasing_en
add wave -noupdate -divider {COM Path}
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/curr_time
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/encoded_spike
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/b_data
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/tx_data
add wave -noupdate -divider {UART/Switch Control}
add wave -noupdate -radix ascii /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/uart_rx_data
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/uart_rx_data_strb
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/analog_trigger_uart
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/analog_trigger_period_adj_uart
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/analog_trigger_duty_cycle_adj_uart
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/sc_noc_generator_uart
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/sc_noc_generator_period_adj_uart
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/sc_noc_generator_duty_cycle_adj_uart
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/sc_noc_generator_overlap_adj_uart
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/baudrate_uart
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/baudrate_adj_uart
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/tbs_virtual_delta_steps_uart
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/tbs_virtual_delta_steps_adj_uart
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/tbs_delta_steps_upper
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/tbs_delta_steps_lower
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/input_changed_strb
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/input_changed_reset_strb
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/uart_changed_strb
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/uart_changed_reset_strb
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/trigger_start_mode
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/adaptive_mode
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/enable_analog
add wave -noupdate /atbs_core_fixed_window_tb/dut_atbs/atbs_core_0/select_tbs_delta_steps
add wave -noupdate -divider OUTPUTS
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_comp_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_dac_upper_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/dac_upper_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_dac_lower_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/dac_lower_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_vcm_generator_1_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_vcm_generator_2_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_bias_1_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_bias_2_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_cmfb_1_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_cmfb_2_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_res_1_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/phi_res_2_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/bio_amp_en_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/select_cap_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/select_spdt_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/idle_led_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/overflow_led_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/underflow_led_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/spike_o
add wave -noupdate -radix unsigned /atbs_core_fixed_window_tb/dut_atbs/uart_tx_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0} {{Cursor 2} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 233
configure wave -valuecolwidth 143
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
WaveRestoreZoom {0 ps} {42532973438 ps}
