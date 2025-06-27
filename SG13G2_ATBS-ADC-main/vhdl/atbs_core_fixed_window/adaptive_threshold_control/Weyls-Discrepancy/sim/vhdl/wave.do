onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CONSTANTS
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/WEYLSD_BITS
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/LEVEL_OF_REG
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/N_THERMOCODES
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/N_BUF_REG
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/N_DELAY
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/THERMO_BITS
add wave -noupdate -radix unsigned /weyls_discrepancy_tb/dut_weyls_discrepancy/THERMO_INIT
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/THERMO_INIT
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/IN_BITS_ENC
add wave -noupdate -divider INPUTS
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/clock_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/reset_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/spikes_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/spikes_strb_i
add wave -noupdate -divider OUTPUTS
add wave -noupdate -radix unsigned -childformat {{/weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o(4) -radix unsigned} {/weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o(3) -radix decimal} {/weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o(2) -radix decimal} {/weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o(1) -radix decimal} {/weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o(0) -radix decimal}} -subitemconfig {/weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o(4) {-height 15 -radix unsigned} /weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o(3) {-height 15 -radix decimal} /weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o(2) {-height 15 -radix decimal} /weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o(1) {-height 15 -radix decimal} /weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o(0) {-height 15 -radix decimal}} /weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_o
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_strb_o
add wave -noupdate -divider {INTERNAL SIGNALS}
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/buf_reg
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/next_buf_reg
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/sync_weylsd_strb
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/next_weylsd_strb
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/thermocodes
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/buf_thermocodes
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/orresult
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/temp_orresult
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/next_weylsd
add wave -noupdate -radix unsigned /weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_neg
add wave -noupdate -radix unsigned /weyls_discrepancy_tb/dut_weyls_discrepancy/weylsd_pos
add wave -noupdate -divider SPIKE0
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(0)/spike_2_tc/spike_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(0)/spike_2_tc/thermo_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(0)/spike_2_tc/thermo_o
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(0)/spike_2_tc/plus
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(0)/spike_2_tc/minus
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(0)/spike_2_tc/thermo
add wave -noupdate -divider SPIKE1
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(1)/spike_2_tc/spike_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(1)/spike_2_tc/thermo_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(1)/spike_2_tc/thermo_o
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(1)/spike_2_tc/plus
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(1)/spike_2_tc/minus
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(1)/spike_2_tc/thermo
add wave -noupdate -divider SPIKE2
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(2)/spike_2_tc/spike_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(2)/spike_2_tc/thermo_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(2)/spike_2_tc/thermo_o
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(2)/spike_2_tc/plus
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(2)/spike_2_tc/minus
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(2)/spike_2_tc/thermo
add wave -noupdate -divider SPIKE3
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(3)/spike_2_tc/spike_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(3)/spike_2_tc/thermo_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(3)/spike_2_tc/thermo_o
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(3)/spike_2_tc/plus
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(3)/spike_2_tc/minus
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(3)/spike_2_tc/thermo
add wave -noupdate -divider SPIKE4
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(4)/spike_2_tc/spike_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(4)/spike_2_tc/thermo_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(4)/spike_2_tc/thermo_o
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(4)/spike_2_tc/plus
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(4)/spike_2_tc/minus
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/gen_spike_2_tc(4)/spike_2_tc/thermo
add wave -noupdate -divider PRIORITY_ENCODER
add wave -noupdate -divider lower
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/priority_encoder_0/code_i
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/priority_encoder_0/bin_o
add wave -noupdate -radix unsigned /weyls_discrepancy_tb/dut_weyls_discrepancy/priority_encoder_0/bin
add wave -noupdate -divider upper
add wave -noupdate /weyls_discrepancy_tb/dut_weyls_discrepancy/priority_encoder_1/code_i
add wave -noupdate -radix unsigned /weyls_discrepancy_tb/dut_weyls_discrepancy/priority_encoder_1/bin_o
add wave -noupdate -radix unsigned /weyls_discrepancy_tb/dut_weyls_discrepancy/priority_encoder_1/bin
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 495
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
WaveRestoreZoom {0 ps} {997500 ps}
