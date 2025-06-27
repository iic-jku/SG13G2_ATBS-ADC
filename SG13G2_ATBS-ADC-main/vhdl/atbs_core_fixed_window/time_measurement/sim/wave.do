onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate -color {Lime Green} /time_measurement_tb/dut_time_measurement/TIME_COUNTER_BITWIDTH
add wave -noupdate -color {Lime Green} /time_measurement_tb/dut_time_measurement/TIME_COUNTER_MAX
add wave -noupdate -divider INPUTS
add wave -noupdate /time_measurement_tb/dut_time_measurement/clock_i
add wave -noupdate /time_measurement_tb/dut_time_measurement/reset_i
add wave -noupdate -divider OUTPUTS
add wave -noupdate /time_measurement_tb/dut_time_measurement/overflow_strb_o
add wave -noupdate -radix unsigned /time_measurement_tb/dut_time_measurement/curr_time_o
add wave -noupdate /time_measurement_tb/dut_time_measurement/curr_time_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 182
configure wave -valuecolwidth 119
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
WaveRestoreZoom {0 ps} {10500021 ns}
