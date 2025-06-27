onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTs
add wave -noupdate /spike_2_thermocode_tb/dut_spike_2_thermocode/THERMO_BITS
add wave -noupdate -divider INPUTs
add wave -noupdate /spike_2_thermocode_tb/dut_spike_2_thermocode/spike_i
add wave -noupdate -radix unsigned /spike_2_thermocode_tb/dut_spike_2_thermocode/thermo_i
add wave -noupdate -divider INTERNAL
add wave -noupdate /spike_2_thermocode_tb/dut_spike_2_thermocode/plus
add wave -noupdate /spike_2_thermocode_tb/dut_spike_2_thermocode/minus
add wave -noupdate -divider OUTPUTs
add wave -noupdate -radix unsigned /spike_2_thermocode_tb/dut_spike_2_thermocode/thermo_o
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {26250 ps}
