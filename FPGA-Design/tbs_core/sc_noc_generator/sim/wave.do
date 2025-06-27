onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate /sc_noc_generator_tb/dut_noc_generator/SC_NOC_COUNTER_BITWIDTH
add wave -noupdate -divider INPUTS
add wave -noupdate /sc_noc_generator_tb/dut_noc_generator/clock_i
add wave -noupdate /sc_noc_generator_tb/dut_noc_generator/reset_i
add wave -noupdate /sc_noc_generator_tb/dut_noc_generator/enable_i
add wave -noupdate -radix unsigned /sc_noc_generator_tb/dut_noc_generator/period_adj_i
add wave -noupdate -radix unsigned /sc_noc_generator_tb/dut_noc_generator/duty_cycle_adj_i
add wave -noupdate -radix unsigned /sc_noc_generator_tb/dut_noc_generator/overlap_adj_i
add wave -noupdate -divider INTERNAL
add wave -noupdate -radix unsigned /sc_noc_generator_tb/dut_noc_generator/counter_value
add wave -noupdate -divider OUTPUTS
add wave -noupdate /sc_noc_generator_tb/dut_noc_generator/sc_noc_1_o
add wave -noupdate /sc_noc_generator_tb/dut_noc_generator/sc_noc_2_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {768250000 ps} 0} {{Cursor 2} {896250000 ps} 0} {{Cursor 3} {1024250000 ps} 0}
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
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {9408918750 ps}
