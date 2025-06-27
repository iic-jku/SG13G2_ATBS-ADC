onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/TIME_COUNTER_BITWIDTH
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/TIME_COUNTER_MAX
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/MAIN_COUNTER_BITWIDTH
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/MAIN_COUNTER_MAX
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/ADDR_BITWIDTH
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/DATA_BITWIDTH
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/UART_BAUDCOUNT
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/UART_DATA_LEN
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/POLY_INT
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/POLY_FRACT
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/CU_CNT_BITS
add wave -noupdate -divider INPUTS
add wave -noupdate -color Red /tbs_tb/dut_tbs/clock_i
add wave -noupdate -color White /tbs_tb/dut_tbs/reset_i
add wave -noupdate -color White /tbs_tb/reset_n
add wave -noupdate -color Magenta /tbs_tb/dut_tbs/comp_upper_i
add wave -noupdate -color Magenta /tbs_tb/dut_tbs/comp_lower_i
add wave -noupdate -color Magenta /tbs_tb/dut_tbs/debug_btn_i
add wave -noupdate -color Magenta /tbs_tb/dut_tbs/init_btn_i
add wave -noupdate -color Magenta /tbs_tb/dut_tbs/enable_zero_crossing_i
add wave -noupdate /tbs_tb/dut_tbs/adaptive_mode_i
add wave -noupdate /tbs_tb/dut_tbs/select_weylsd_limit_i
add wave -noupdate /tbs_tb/dut_tbs/incr_welysd_limit_i
add wave -noupdate /tbs_tb/dut_tbs/decr_welysd_limit_i
add wave -noupdate -divider INTERNAL
add wave -noupdate -color Gold -label state-main-fsm /tbs_tb/dut_tbs/state
add wave -noupdate -color Gold -label state-charge-unit-upper /tbs_tb/dut_tbs/charge_unit_0/state
add wave -noupdate -color Gold -label state-charge-unit-lower /tbs_tb/dut_tbs/charge_unit_1/state
add wave -noupdate -color Gold /tbs_tb/dut_tbs/select_delta_v
add wave -noupdate -color Gold /tbs_tb/dut_tbs/select_enable_write
add wave -noupdate -color Gold /tbs_tb/dut_tbs/enable_read
add wave -noupdate -radix sfixed /tbs_tb/dut_tbs/curr_v_upper
add wave -noupdate -radix sfixed /tbs_tb/dut_tbs/curr_v_lower
add wave -noupdate -divider SAMPLING
add wave -noupdate -divider {Adaptive Control}
add wave -noupdate /tbs_tb/dut_tbs/adaptive_ctrl_0/adaptive_strb_o
add wave -noupdate /tbs_tb/dut_tbs/adaptive_ctrl_0/widen_threshold_strb_o
add wave -noupdate -radix unsigned /tbs_tb/dut_tbs/adaptive_ctrl_0/weylsd
add wave -noupdate /tbs_tb/dut_tbs/adaptive_ctrl_0/spike_shift_reg_0/spikes_o
add wave -noupdate /tbs_tb/dut_tbs/adaptive_ctrl_0/spike_shift_reg_0/timestamps
add wave -noupdate /tbs_tb/dut_tbs/adaptive_ctrl_0/spike_shift_reg_0/spikes_strb_o
add wave -noupdate -radix unsigned /tbs_tb/dut_tbs/adaptive_ctrl_0/steps_to_upper_v
add wave -noupdate -radix unsigned /tbs_tb/dut_tbs/adaptive_ctrl_0/steps_to_lower_v
add wave -noupdate -divider Spike-Detector
add wave -noupdate -color White -radix sfixed /tbs_tb/dut_tbs/spike
add wave -noupdate -color White /tbs_tb/dut_tbs/spike_strb
add wave -noupdate /tbs_tb/dut_tbs/spike_detector_0/charging_en_i
add wave -noupdate /tbs_tb/dut_tbs/spike_detector_0/discharging_en_i
add wave -noupdate -color White -radix sfixed /tbs_tb/dut_tbs/delta_v_upper_mux
add wave -noupdate /tbs_tb/dut_tbs/spike_detector_0/is_charging
add wave -noupdate /tbs_tb/dut_tbs/spike_detector_0/lock_detection
add wave -noupdate -divider Tau_Upper
add wave -noupdate /tbs_tb/dut_tbs/tau_calc_0/start_tau_calc_strb_i
add wave -noupdate /tbs_tb/dut_tbs/tau_calc_0/done_tau_calc_strb_o
add wave -noupdate /tbs_tb/dut_tbs/done_tau_calc_upper
add wave -noupdate -radix sfixed /tbs_tb/dut_tbs/tau_calc_0/tau_o
add wave -noupdate -divider Initcap_Upper
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_0/IS_UPPER_CAP
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_0/state
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_0/start_discharge_strb_i
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_0/stopped_charging_strb_i
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_0/curr_v_strb
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_0/delta_v_strb
add wave -noupdate -color White -radix sfixed /tbs_tb/dut_tbs/initcap_0/curr_v
add wave -noupdate -color White -radix sfixed /tbs_tb/dut_tbs/initcap_0/delta_v
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_0/stop_charging_strb_o
add wave -noupdate -color White /tbs_tb/dut_tbs/stop_charging_upper
add wave -noupdate -divider Charge-Time-Calc_Upper
add wave -noupdate -color Orange -radix sfixed /tbs_tb/dut_tbs/charge_time_calc_0/curr_v_i
add wave -noupdate -color Orange -radix sfixed -childformat {{/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(3) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(2) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(1) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(0) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-1) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-2) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-3) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-4) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-5) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-6) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-7) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-8) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-9) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-10) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-11) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-12) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-13) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-14) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-15) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-16) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-17) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-18) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-19) -radix sfixed} {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-20) -radix sfixed}} -subitemconfig {/tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(3) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(2) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(1) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(0) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-1) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-2) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-3) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-4) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-5) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-6) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-7) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-8) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-9) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-10) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-11) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-12) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-13) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-14) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-15) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-16) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-17) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-18) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-19) {-color Orange -height 15 -radix sfixed} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i(-20) {-color Orange -height 15 -radix sfixed}} /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_i
add wave -noupdate -color Orange /tbs_tb/dut_tbs/charge_time_calc_0/delta_v_strb_i
add wave -noupdate -color Orange -radix unsigned /tbs_tb/dut_tbs/charge_time_calc_0/charge_time_o
add wave -noupdate /tbs_tb/dut_tbs/charge_time_calc_0/valid_strb_o
add wave -noupdate -color Orange -radix sfixed /tbs_tb/dut_tbs/charge_time_calc_0/multiply_resttau_norm
add wave -noupdate -radix unsigned /tbs_tb/dut_tbs/charge_time_calc_0/deltasteps
add wave -noupdate -divider Tau_Lower
add wave -noupdate /tbs_tb/dut_tbs/tau_calc_1/start_tau_calc_strb_i
add wave -noupdate /tbs_tb/dut_tbs/tau_calc_1/done_tau_calc_strb_o
add wave -noupdate /tbs_tb/dut_tbs/done_tau_calc_lower
add wave -noupdate -radix sfixed /tbs_tb/dut_tbs/tau_calc_1/tau_o
add wave -noupdate -divider Initcap_Lower
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_1/IS_UPPER_CAP
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_1/state
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_1/start_discharge_strb_i
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_1/stopped_charging_strb_i
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_1/curr_v_strb
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_1/delta_v_strb
add wave -noupdate -color White -radix sfixed /tbs_tb/dut_tbs/initcap_1/curr_v
add wave -noupdate -color White -radix sfixed /tbs_tb/dut_tbs/initcap_1/delta_v
add wave -noupdate -color White /tbs_tb/dut_tbs/initcap_1/stop_charging_strb_o
add wave -noupdate -color Gold /tbs_tb/dut_tbs/stop_charging_lower
add wave -noupdate -divider Charge-Time-Calc_Lower
add wave -noupdate -color Orange -radix sfixed /tbs_tb/dut_tbs/charge_time_calc_1/curr_v_i
add wave -noupdate -color Orange -radix sfixed /tbs_tb/dut_tbs/charge_time_calc_1/delta_v_i
add wave -noupdate -color Orange /tbs_tb/dut_tbs/charge_time_calc_1/delta_v_strb_i
add wave -noupdate -color Orange -radix unsigned /tbs_tb/dut_tbs/charge_time_calc_1/charge_time_o
add wave -noupdate /tbs_tb/dut_tbs/charge_time_calc_1/valid_strb_o
add wave -noupdate -color Orange -radix sfixed /tbs_tb/dut_tbs/charge_time_calc_1/multiply_resttau_norm
add wave -noupdate -radix unsigned /tbs_tb/dut_tbs/charge_time_calc_1/deltasteps
add wave -noupdate -divider COMMUNICATION
add wave -noupdate -divider Spike-Encoder
add wave -noupdate /tbs_tb/dut_tbs/spike_encoder_0/delayed_spike
add wave -noupdate -color White /tbs_tb/dut_tbs/overflow_strb
add wave -noupdate -color White -radix ufixed /tbs_tb/dut_tbs/curr_time
add wave -noupdate -color White -radix decimal /tbs_tb/dut_tbs/encoded_spike
add wave -noupdate -color White /tbs_tb/dut_tbs/encoded_spike_strb
add wave -noupdate -divider FIFO
add wave -noupdate -color Gold -radix unsigned /tbs_tb/dut_tbs/spike_memory_0/head
add wave -noupdate -color Gold -radix unsigned /tbs_tb/dut_tbs/spike_memory_0/tail
add wave -noupdate -color Gold -radix unsigned /tbs_tb/dut_tbs/spike_memory_0/fifo_fill_count
add wave -noupdate -color Gold /tbs_tb/dut_tbs/enable_write_mux
add wave -noupdate -color Gold /tbs_tb/dut_tbs/spike_memory_0/write_delayed_strb
add wave -noupdate -color Gold /tbs_tb/dut_tbs/select_enable_write
add wave -noupdate -color Gold /tbs_tb/dut_tbs/enable_read
add wave -noupdate -color Gold -radix sfixed /tbs_tb/dut_tbs/b_data
add wave -noupdate /tbs_tb/dut_tbs/spike_memory_0/read_strb
add wave -noupdate /tbs_tb/dut_tbs/read_strb
add wave -noupdate -color Gold /tbs_tb/dut_tbs/fifo_full
add wave -noupdate -color Gold /tbs_tb/dut_tbs/fifo_empty
add wave -noupdate -divider Memory2UART
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/memory2uart_0/BYTES
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/memory2uart_0/COUNTER_LENGTH
add wave -noupdate -color {Lime Green} -radix unsigned /tbs_tb/dut_tbs/memory2uart_0/memory_data_i
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/memory2uart_0/tx_start_strb
add wave -noupdate -color {Lime Green} -radix unsigned /tbs_tb/dut_tbs/memory2uart_0/UART_data_o
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/memory2uart_0/counter
add wave -noupdate -divider UART
add wave -noupdate -color Gold -radix binary -childformat {{/tbs_tb/dut_tbs/UART_data(7) -radix sfixed} {/tbs_tb/dut_tbs/UART_data(6) -radix sfixed} {/tbs_tb/dut_tbs/UART_data(5) -radix sfixed} {/tbs_tb/dut_tbs/UART_data(4) -radix sfixed} {/tbs_tb/dut_tbs/UART_data(3) -radix sfixed} {/tbs_tb/dut_tbs/UART_data(2) -radix sfixed} {/tbs_tb/dut_tbs/UART_data(1) -radix sfixed} {/tbs_tb/dut_tbs/UART_data(0) -radix sfixed}} -subitemconfig {/tbs_tb/dut_tbs/UART_data(7) {-color Gold -height 15 -radix sfixed} /tbs_tb/dut_tbs/UART_data(6) {-color Gold -height 15 -radix sfixed} /tbs_tb/dut_tbs/UART_data(5) {-color Gold -height 15 -radix sfixed} /tbs_tb/dut_tbs/UART_data(4) {-color Gold -height 15 -radix sfixed} /tbs_tb/dut_tbs/UART_data(3) {-color Gold -height 15 -radix sfixed} /tbs_tb/dut_tbs/UART_data(2) {-color Gold -height 15 -radix sfixed} /tbs_tb/dut_tbs/UART_data(1) {-color Gold -height 15 -radix sfixed} /tbs_tb/dut_tbs/UART_data(0) {-color Gold -height 15 -radix sfixed}} /tbs_tb/dut_tbs/UART_data
add wave -noupdate -color Gold -radix unsigned /tbs_tb/dut_tbs/uart_0/uart_tx_0/transmit_counter
add wave -noupdate -color Gold /tbs_tb/dut_tbs/uart_0/uart_tx_0/TX_state
add wave -noupdate -color Gold /tbs_tb/dut_tbs/uart_0/uart_tx_0/tx_o
add wave -noupdate -color Gold /tbs_tb/dut_tbs/uart_0/tx_strb_o
add wave -noupdate -color Gold /tbs_tb/dut_tbs/uart_0/baud_strb_gen_0/baud_strb_o
add wave -noupdate -divider OUTPUTS
add wave -noupdate -color Red /tbs_tb/dut_tbs/charge_deactive_upper_o
add wave -noupdate -color Red /tbs_tb/dut_tbs/charge_direction_upper_o
add wave -noupdate -color White /tbs_tb/dut_tbs/charge_deactive_lower_o
add wave -noupdate -color White /tbs_tb/dut_tbs/charge_direction_lower_o
add wave -noupdate -color Gold /tbs_tb/dut_tbs/zero_switch_in_upper_o
add wave -noupdate -color Gold /tbs_tb/dut_tbs/zero_switch_en_upper_o
add wave -noupdate -color Gold /tbs_tb/dut_tbs/zero_switch_in_lower_o
add wave -noupdate -color Gold /tbs_tb/dut_tbs/zero_switch_en_lower_o
add wave -noupdate -color Magenta /tbs_tb/dut_tbs/enable_analog_o
add wave -noupdate -color Magenta /tbs_tb/dut_tbs/input_analog_o
add wave -noupdate -color Gray55 /tbs_tb/dut_tbs/init_led_o
add wave -noupdate -color Gray55 /tbs_tb/dut_tbs/overflow_led_o
add wave -noupdate -color Gray55 /tbs_tb/dut_tbs/underflow_led_o
add wave -noupdate -color {Lime Green} /tbs_tb/dut_tbs/tx_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1893624635 ps} 0} {{Cursor 2} {18963662 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 233
configure wave -valuecolwidth 304
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
WaveRestoreZoom {11646550 ps} {73197550 ps}
