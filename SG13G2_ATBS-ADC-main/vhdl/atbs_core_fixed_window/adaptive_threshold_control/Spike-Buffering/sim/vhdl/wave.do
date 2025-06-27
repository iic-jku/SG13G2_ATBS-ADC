onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTs
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/TIME_COUNTER_BITWIDTH
add wave -noupdate -divider INPUTs
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/clock_i
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/reset_i
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/overflow_strb_i
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/curr_time_i
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/spike_i
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/spike_strb_i
add wave -noupdate -radix unsigned /spike_shift_reg_tb/dut_spike_shift_reg/win_length_i
add wave -noupdate -divider INTERNAL
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/timestamps
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/spikes
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/win_end
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/overflow_marker
add wave -noupdate -divider OUTPUTs
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/spikes_o
add wave -noupdate /spike_shift_reg_tb/dut_spike_shift_reg/spikes_strb_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 196
configure wave -valuecolwidth 88
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
WaveRestoreZoom {0 ps} {10494750 ps}
