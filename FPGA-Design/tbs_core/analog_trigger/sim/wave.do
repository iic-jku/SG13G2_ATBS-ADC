onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate /analog_trigger_tb/dut_analog_trigger/TRIGGER_COUNTER_BITWIDTH
add wave -noupdate /analog_trigger_tb/TRIGGER_COUNTER_MAX
add wave -noupdate -divider INPUTS
add wave -noupdate /analog_trigger_tb/dut_analog_trigger/clock_i
add wave -noupdate /analog_trigger_tb/dut_analog_trigger/reset_i
add wave -noupdate /analog_trigger_tb/dut_analog_trigger/enable_i
add wave -noupdate -radix unsigned /analog_trigger_tb/dut_analog_trigger/period_adj_i
add wave -noupdate -radix unsigned /analog_trigger_tb/dut_analog_trigger/duty_cycle_adj_i
add wave -noupdate -divider INTERNAL
add wave -noupdate -radix unsigned /analog_trigger_tb/dut_analog_trigger/counter_value
add wave -noupdate -divider OUTPUTS
add wave -noupdate /analog_trigger_tb/dut_analog_trigger/analog_trigger_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {900250000 ps} 0} {{Cursor 2} {910250000 ps} 0} {{Cursor 3} {920250000 ps} 0}
quietly wave cursor active 3
configure wave -namecolwidth 150
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
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {3571575 ns}
