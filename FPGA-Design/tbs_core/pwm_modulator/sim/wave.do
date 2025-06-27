onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate /pwm_modulator_tb/dut_pwm_modulator/PWM_COUNTER_BITWIDTH
add wave -noupdate /pwm_modulator_tb/dut_pwm_modulator/PWM_COUNTER_MAX
add wave -noupdate -divider INPUTS
add wave -noupdate /pwm_modulator_tb/dut_pwm_modulator/clock_i
add wave -noupdate /pwm_modulator_tb/dut_pwm_modulator/reset_i
add wave -noupdate /pwm_modulator_tb/dut_pwm_modulator/enable_i
add wave -noupdate -radix unsigned /pwm_modulator_tb/dut_pwm_modulator/on_cnt_val_i
add wave -noupdate -divider INTERNAL
add wave -noupdate -radix unsigned /pwm_modulator_tb/dut_pwm_modulator/counter_value
add wave -noupdate -divider OUTPUTS
add wave -noupdate /pwm_modulator_tb/dut_pwm_modulator/pwm_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {321500000 ps} 0} {{Cursor 2} {328250000 ps} 0} {{Cursor 3} {360250000 ps} 0}
quietly wave cursor active 3
configure wave -namecolwidth 184
configure wave -valuecolwidth 101
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
WaveRestoreZoom {0 ps} {2101575 ns}
