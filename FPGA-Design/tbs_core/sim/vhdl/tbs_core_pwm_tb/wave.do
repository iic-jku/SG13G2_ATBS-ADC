onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/MAIN_COUNTER_BITWIDTH
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/MAIN_COUNTER_MAX
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/DEBOUNCER_BITWIDTH
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/DEBOUNCER_MAX
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/N_FF
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/N_CHANNELS
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/MAX_CLIPPING_VALUE
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/MIN_CLIPPING_VALUE
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/D_MAX_LIM
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/D_MIN_LIM
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/WEYLSD_BITS
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/DELTA_STEPS_BITWIDTH
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/TIME_COUNTER_BITWIDTH
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/TIME_COUNTER_MAX
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/DAC_SETTLING_CLKS
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/DAC_BITWIDTH
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/PWM_COUNTER_BITWIDTH
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/PWM_COUNTER_MAX
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/TRIGGER_COUNTER_BITWIDTH
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/TRIGGER_COUNTER_MAX
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/SC_NOC_COUNTER_BITWIDTH
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/SC_NOC_COUNTER_MAX
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/ADDR_BITWIDTH
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/DATA_BITWIDTH
add wave -noupdate -divider INPUTS
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/clock_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/reset_btn_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/comp_upper_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/comp_lower_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/trigger_start_sampling_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/trigger_start_mode_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/adaptive_mode_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/control_mode_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/signal_select_in_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/enable_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/select_tbs_delta_steps_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/select_comparator_type_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/ecg_lod_p_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/ecg_lod_n_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/uart_rx_i
add wave -noupdate -divider INTERNAL
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/reset_i
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/reset_entity
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dt_comp_upper
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dt_comp_lower
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/comp_upper_sync
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/comp_lower_sync
add wave -noupdate -divider {MAIN Counter}
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/main_counter_value
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/reset_main_counter_strb
add wave -noupdate -divider {MAIN FSM}
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dac_control_0/state
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/state
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/detection_en
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/select_enable_write
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/clear_dac
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dac_init_strb
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/enable_read
add wave -noupdate -divider {SIGNAL Path}
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/spike_detector_0/spike
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/spike_detector_0/spike_strb
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/spike_detector_0/lock_detection
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/update_dac_upper_strb
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dac_finished_upper_strb
add wave -noupdate -divider {COM Path}
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/curr_time
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/encoded_spike
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/b_data
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/tx_data
add wave -noupdate -divider {UART/Switch Control}
add wave -noupdate -radix ascii /tbs_core_pwm_tb/dut_tbs/uart_rx_data
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/uart_rx_data_strb
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/analog_trigger_uart
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/analog_trigger_period_adj_uart
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/analog_trigger_duty_cycle_adj_uart
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/sc_noc_generator_uart
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/sc_noc_generator_period_adj_uart
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/sc_noc_generator_duty_cycle_adj_uart
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/sc_noc_generator_overlap_adj_uart
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/baudrate_uart
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/baudrate_adj_uart
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/tbs_virtual_delta_steps_uart
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/tbs_virtual_delta_steps_adj_uart
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/tbs_delta_steps_upper
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/tbs_delta_steps_lower
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/input_changed_strb
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/input_changed_reset_strb
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/uart_changed_strb
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/uart_changed_reset_strb
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/trigger_start_mode
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/adaptive_mode
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/signal_select_in
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/enable_analog
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/select_tbs_delta_steps
add wave -noupdate -divider OUTPUTS
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/signal_select_en_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/signal_select_in_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/amp_sdn_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dac_pd_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dac_clr_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dac_wr_upper_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dac_wr_lower_o
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/dac_upper_o
add wave -noupdate -format Analog-Step -height 74 -max 254.99999999999997 -radix unsigned /tbs_core_pwm_tb/dut_tbs/dac_upper_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dac_pwm_upper_o
add wave -noupdate -radix unsigned /tbs_core_pwm_tb/dut_tbs/dac_lower_o
add wave -noupdate -format Analog-Step -height 74 -max 224.0 -radix unsigned /tbs_core_pwm_tb/dut_tbs/dac_lower_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/dac_pwm_lower_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/idle_led_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/overflow_led_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/underflow_led_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/ecg_led_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/analog_trigger_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/sc_noc_1_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/sc_noc_2_o
add wave -noupdate /tbs_core_pwm_tb/dut_tbs/uart_tx_o
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
