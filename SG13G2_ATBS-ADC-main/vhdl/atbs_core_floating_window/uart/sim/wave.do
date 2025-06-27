onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTs
add wave -noupdate /uart_tb/dut_uart/UART_BAUD_COUNTER_BITWIDTH
add wave -noupdate /uart_tb/dut_uart/UART_DATA_LENGTH
add wave -noupdate /uart_tb/UART_BAUD_COUNTER_MAX
add wave -noupdate /uart_tb/UART_BAUD_COUNTER_19200
add wave -noupdate /uart_tb/UART_BAUD_COUNTER_38400
add wave -noupdate /uart_tb/UART_BAUD_COUNTER_57600
add wave -noupdate /uart_tb/UART_BAUD_COUNTER_115200
add wave -noupdate -divider I/Os
add wave -noupdate /uart_tb/dut_uart/clock_i
add wave -noupdate /uart_tb/dut_uart/reset_i
add wave -noupdate -radix unsigned /uart_tb/dut_uart/baudrate_adj_i
add wave -noupdate -divider TRANSMITTER
add wave -noupdate -radix unsigned /uart_tb/dut_uart/uart_tx_0/transmit_counter_value
add wave -noupdate -radix unsigned /uart_tb/dut_uart/uart_tx_0/baud_counter_value
add wave -noupdate /uart_tb/dut_uart/uart_tx_0/tx_state
add wave -noupdate /uart_tb/dut_uart/tx_start_strb_i
add wave -noupdate -radix unsigned /uart_tb/dut_uart/tx_data_i
add wave -noupdate /uart_tb/dut_uart/tx_strb_o
add wave -noupdate /uart_tb/dut_uart/tx_o
add wave -noupdate -divider RECEIVER
add wave -noupdate -radix unsigned /uart_tb/dut_uart/uart_rx_0/receive_counter_value
add wave -noupdate -radix unsigned /uart_tb/dut_uart/uart_rx_0/baud_counter_value
add wave -noupdate /uart_tb/dut_uart/uart_rx_0/rx_state
add wave -noupdate /uart_tb/dut_uart/rx_i
add wave -noupdate /uart_tb/dut_uart/rx_data_strb_o
add wave -noupdate -radix unsigned -childformat {{/uart_tb/dut_uart/rx_data_o(7) -radix unsigned} {/uart_tb/dut_uart/rx_data_o(6) -radix unsigned} {/uart_tb/dut_uart/rx_data_o(5) -radix unsigned} {/uart_tb/dut_uart/rx_data_o(4) -radix unsigned} {/uart_tb/dut_uart/rx_data_o(3) -radix unsigned} {/uart_tb/dut_uart/rx_data_o(2) -radix unsigned} {/uart_tb/dut_uart/rx_data_o(1) -radix unsigned} {/uart_tb/dut_uart/rx_data_o(0) -radix unsigned}} -subitemconfig {/uart_tb/dut_uart/rx_data_o(7) {-height 15 -radix unsigned} /uart_tb/dut_uart/rx_data_o(6) {-height 15 -radix unsigned} /uart_tb/dut_uart/rx_data_o(5) {-height 15 -radix unsigned} /uart_tb/dut_uart/rx_data_o(4) {-height 15 -radix unsigned} /uart_tb/dut_uart/rx_data_o(3) {-height 15 -radix unsigned} /uart_tb/dut_uart/rx_data_o(2) {-height 15 -radix unsigned} /uart_tb/dut_uart/rx_data_o(1) {-height 15 -radix unsigned} /uart_tb/dut_uart/rx_data_o(0) {-height 15 -radix unsigned}} /uart_tb/dut_uart/rx_data_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 223
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
WaveRestoreZoom {0 ps} {43790512500 ps}
