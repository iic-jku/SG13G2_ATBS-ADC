onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate /sync_chain_tb/dut_sync_chain/N_FF
add wave -noupdate /sync_chain_tb/dut_sync_chain/N_CHANNELS
add wave -noupdate -divider INPUTS
add wave -noupdate /sync_chain_tb/dut_sync_chain/clock_i
add wave -noupdate /sync_chain_tb/dut_sync_chain/reset_i
add wave -noupdate /sync_chain_tb/comp_upper
add wave -noupdate /sync_chain_tb/comp_lower
add wave -noupdate -expand /sync_chain_tb/dut_sync_chain/async_i
add wave -noupdate -divider OUTPUTS
add wave -noupdate /sync_chain_tb/comp_upper_sync
add wave -noupdate /sync_chain_tb/comp_lower_sync
add wave -noupdate -expand /sync_chain_tb/dut_sync_chain/sync_o
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
WaveRestoreZoom {0 ps} {766500 ps}
