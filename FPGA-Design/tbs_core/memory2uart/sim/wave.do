onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate /memory2uart_tb/dut_memory2uart/DATA_BITWIDTH
add wave -noupdate /memory2uart_tb/dut_memory2uart/UART_DATA_LENGTH
add wave -noupdate /memory2uart_tb/dut_memory2uart/BYTES
add wave -noupdate /memory2uart_tb/dut_memory2uart/BITWIDTH
add wave -noupdate -divider INPUTS
add wave -noupdate /memory2uart_tb/dut_memory2uart/clock_i
add wave -noupdate /memory2uart_tb/dut_memory2uart/reset_i
add wave -noupdate /memory2uart_tb/dut_memory2uart/read_strb_i
add wave -noupdate /memory2uart_tb/dut_memory2uart/tx_strb_i
add wave -noupdate -radix binary -childformat {{/memory2uart_tb/dut_memory2uart/memory_data_i(16) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(15) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(14) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(13) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(12) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(11) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(10) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(9) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(8) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(7) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(6) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(5) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(4) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(3) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(2) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(1) -radix binary} {/memory2uart_tb/dut_memory2uart/memory_data_i(0) -radix binary}} -subitemconfig {/memory2uart_tb/dut_memory2uart/memory_data_i(16) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(15) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(14) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(13) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(12) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(11) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(10) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(9) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(8) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(7) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(6) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(5) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(4) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(3) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(2) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(1) {-height 15 -radix binary} /memory2uart_tb/dut_memory2uart/memory_data_i(0) {-height 15 -radix binary}} /memory2uart_tb/dut_memory2uart/memory_data_i
add wave -noupdate -divider {INTERNAL SIGNALS}
add wave -noupdate /memory2uart_tb/dut_memory2uart/shift_reg_out
add wave -noupdate /memory2uart_tb/dut_memory2uart/next_shift_reg_out
add wave -noupdate /memory2uart_tb/dut_memory2uart/counter
add wave -noupdate /memory2uart_tb/dut_memory2uart/next_counter
add wave -noupdate /memory2uart_tb/dut_memory2uart/data
add wave -noupdate -divider OUTPUTS
add wave -noupdate /memory2uart_tb/dut_memory2uart/UART_data_o
add wave -noupdate /memory2uart_tb/dut_memory2uart/tx_start_strb_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 113
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
WaveRestoreZoom {0 ps} {5355 ns}
