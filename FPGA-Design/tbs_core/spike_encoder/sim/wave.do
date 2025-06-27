onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/TIME_COUNTER_BITWIDTH
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/DATA_BITWIDTH
add wave -noupdate -divider INPUTS
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/clock_i
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/reset_i
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/spike_i
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/spike_strb_i
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/overflow_strb_i
add wave -noupdate -radix decimal /spike_encoder_tb/dut_spike_encoder/curr_time_i
add wave -noupdate -divider OUTPUTS
add wave -noupdate -radix unsigned /spike_encoder_tb/dut_spike_encoder/encoded_spike_o
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/encoded_spike_strb_o
add wave -noupdate -divider INTERNAL
add wave -noupdate -radix decimal /spike_encoder_tb/dut_spike_encoder/encoded_spike
add wave -noupdate -radix decimal /spike_encoder_tb/dut_spike_encoder/next_encoded_spike
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/encoded_spike_strb
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/next_encoded_spike_strb
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/delayed_spike_strb
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/next_delayed_spike_strb
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/delayed_spike
add wave -noupdate /spike_encoder_tb/dut_spike_encoder/next_delayed_spike
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 273
configure wave -valuecolwidth 100
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1312500 ps}
