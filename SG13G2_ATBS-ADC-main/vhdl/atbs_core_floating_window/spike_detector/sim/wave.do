onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider INPUTS
add wave -noupdate /spike_detector_tb/dut_spike_detector/clock_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/reset_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/detection_en_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/comp_upper_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/comp_lower_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/change_upper_strb_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/change_lower_strb_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/stopped_changing_upper_strb_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/stopped_changing_lower_strb_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/increasing_en_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/decreasing_en_i
add wave -noupdate /spike_detector_tb/dut_spike_detector/pause_detection_strb_i
add wave -noupdate -divider INTERNAL
add wave -noupdate /spike_detector_tb/dut_spike_detector/hold_spike
add wave -noupdate /spike_detector_tb/dut_spike_detector/lock_detection
add wave -noupdate /spike_detector_tb/dut_spike_detector/upper_is_changing
add wave -noupdate /spike_detector_tb/dut_spike_detector/lower_is_changing
add wave -noupdate /spike_detector_tb/dut_spike_detector/is_changing
add wave -noupdate /spike_detector_tb/dut_spike_detector/is_changing_f_edge
add wave -noupdate -divider OUTPUTS
add wave -noupdate /spike_detector_tb/dut_spike_detector/spike_o
add wave -noupdate /spike_detector_tb/dut_spike_detector/spike_strb_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0} {{Cursor 2} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 228
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
WaveRestoreZoom {0 ps} {97881 ns}
