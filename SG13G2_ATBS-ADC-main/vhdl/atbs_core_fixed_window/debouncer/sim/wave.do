onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate /debouncer_tb/dut_debouncer/DEBOUNCER_BITWIDTH
add wave -noupdate /debouncer_tb/dut_debouncer/DEBOUNCER_MAX
add wave -noupdate -divider INPUTS
add wave -noupdate /debouncer_tb/dut_debouncer/clock_i
add wave -noupdate /debouncer_tb/dut_debouncer/reset_i
add wave -noupdate /debouncer_tb/dut_debouncer/bouncing_i
add wave -noupdate -divider INTERNAL
add wave -noupdate /debouncer_tb/dut_debouncer/bouncing_sync
add wave -noupdate /debouncer_tb/dut_debouncer/bouncing_sync_d
add wave -noupdate /debouncer_tb/dut_debouncer/bouncing_edge_r
add wave -noupdate /debouncer_tb/dut_debouncer/state
add wave -noupdate -radix unsigned /debouncer_tb/dut_debouncer/counter_value
add wave -noupdate /debouncer_tb/dut_debouncer/reset_counter_strb
add wave -noupdate -divider OUTPUT
add wave -noupdate /debouncer_tb/dut_debouncer/debounced_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8683750000 ps} 0} {{Cursor 2} {16875750000 ps} 0}
quietly wave cursor active 2
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
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {53673112500 ps}
