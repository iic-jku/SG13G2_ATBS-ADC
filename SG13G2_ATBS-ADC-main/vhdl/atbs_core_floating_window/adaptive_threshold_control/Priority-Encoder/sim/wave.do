onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTs
add wave -noupdate /priority_encoder_tb/dut_priority_encoder/IN_BITS
add wave -noupdate /priority_encoder_tb/dut_priority_encoder/OUT_BITS
add wave -noupdate -divider INPUTs
add wave -noupdate /priority_encoder_tb/dut_priority_encoder/clock_i
add wave -noupdate /priority_encoder_tb/dut_priority_encoder/reset_i
add wave -noupdate -radix unsigned /priority_encoder_tb/dut_priority_encoder/code_i
add wave -noupdate -divider OUTPUTs
add wave -noupdate -radix unsigned /priority_encoder_tb/dut_priority_encoder/bin_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {34125 ns}
