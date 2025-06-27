onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Constants
add wave -noupdate -color {Lime Green} /spike_memory_tb/dut_spike_memory/DATA_BITWIDTH
add wave -noupdate -color {Lime Green} /spike_memory_tb/dut_spike_memory/ADDR_BITWIDTH
add wave -noupdate -color {Lime Green} /spike_memory_tb/dut_spike_memory/RAM_DEPTH
add wave -noupdate /spike_memory_tb/dut_spike_memory/N_TX
add wave -noupdate /spike_memory_tb/dut_spike_memory/READ_DELAY
add wave -noupdate -divider Inputs
add wave -noupdate -color {Spring Green} /spike_memory_tb/dut_spike_memory/clock_i
add wave -noupdate -color {Spring Green} /spike_memory_tb/dut_spike_memory/reset_i
add wave -noupdate -color {Spring Green} /spike_memory_tb/dut_spike_memory/enable_write_i
add wave -noupdate -color {Spring Green} -radix unsigned /spike_memory_tb/dut_spike_memory/a_data_i
add wave -noupdate -color {Spring Green} /spike_memory_tb/dut_spike_memory/enable_read_i
add wave -noupdate -color {Spring Green} /spike_memory_tb/dut_spike_memory/tx_strb_i
add wave -noupdate -divider {Internal signals}
add wave -noupdate -color Magenta -radix unsigned /spike_memory_tb/dut_spike_memory/head
add wave -noupdate -color Magenta -radix unsigned /spike_memory_tb/dut_spike_memory/tail
add wave -noupdate -color Magenta -radix unsigned /spike_memory_tb/dut_spike_memory/fifo_fill_count
add wave -noupdate -color Magenta /spike_memory_tb/dut_spike_memory/write_strb
add wave -noupdate -color Magenta /spike_memory_tb/dut_spike_memory/write_delayed_strb
add wave -noupdate -divider Outputs
add wave -noupdate -color Cyan -radix unsigned /spike_memory_tb/dut_spike_memory/b_data_o
add wave -noupdate -color Cyan /spike_memory_tb/dut_spike_memory/read_strb_o
add wave -noupdate -color Cyan /spike_memory_tb/dut_spike_memory/fifo_full_o
add wave -noupdate -color Cyan /spike_memory_tb/dut_spike_memory/fifo_empty_o
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
WaveRestoreZoom {0 ps} {165060 ns}
