v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 0 0 65 0 {}
L 4 820 -160 820 0 {}
L 4 820 -160 2140 -160 {}
L 4 820 -80 2140 -80 {}
L 4 1450 -80 1450 0 {}
L 4 1450 -160 1450 -80 {}
L 4 1160 -80 1160 0 {}
L 4 360 0 540 0 {}
L 4 -0 -1820 0 0 {}
L 4 2140 -1820 2140 0 {}
L 4 540 -0 2140 -0 {}
L 4 -0 -1820 2140 -1820 {}
P 4 5 60 -500 60 -220 540 -220 540 -500 60 -500 {dash = 8}
P 4 1 -30 -1570 {}
P 4 7 60 -640 60 -1640 2080 -1640 2080 -220 960 -220 960 -640 60 -640 {dash = 8}
P 5 38 140 -15 135 -10 125 0 135 10 147.5 22.5 155 30 147.5 30 140 30 135 30 130 25 125 20 115 10 105 20 100 25 95 30 90 30 82.5 30 75 30 82.5 22.5 95 10 105 0 95 -10 82.5 -22.5 75 -30 82.5 -30 90 -30 95 -30 100 -25 105 -20 115 -10 125 -20 130 -25 135 -30 140 -30 147.5 -30 155 -30 147.5 -22.5 140 -15 {fill=true
bezier=1}
T {Fully-Differential Fixed-Window Adaptive Threshold-Based Sampling ADC} 120 -1800 0 0 1 1 {}
T {2025-03-17} 1460 -60 0 0 0.8 0.8 {}
T {Simon Dorrer} 830 -140 0 0 0.8 0.8 {}
T {Page 1 of 1} 830 -60 0 0 0.8 0.8 {}
T {Fully-Diff. Fixed-Window ATBS Top Level} 1460 -120 0 0 0.6 0.6 {vcenter=true}
T {Rev. 1.0} 1170 -60 0 0 0.8 0.8 {}
T {SCHEM} 155 -25 0 0 1 1 {}
T {Vcm Generator} 60 -550 0 0 0.6 0.6 {}
T {Analog Front-End + Digital Core} 60 -1685 0 0 0.6 0.6 {}
T {(without bio-amplifier and without auxiliary circuits)} 680 -1720 0 0 0.8 0.8 {}
N 1780 -660 1820 -660 {lab=do_idle_led}
N 1780 -800 1820 -800 {lab=di_uart_rx}
N 1780 -760 1820 -760 {lab=do_uart_tx}
N 1780 -620 1820 -620 {lab=do_overflow_led}
N 1780 -580 1820 -580 {lab=do_underflow_led}
N 280 -880 280 -860 {lab=VSS}
N 840 -1420 840 -1400 {lab=VDD_COMP}
N 840 -1240 840 -1220 {lab=VSS}
N 960 -1240 960 -1220 {lab=phi_comp}
N 840 -1060 840 -1040 {lab=VDD_COMP}
N 840 -880 840 -860 {lab=VSS}
N 960 -880 960 -860 {lab=phi_comp}
N 360 -260 360 -240 {lab=VSS}
N 1780 -360 1820 -360 {lab=spdt_ctrl}
N 1780 -440 1820 -440 {lab=en_cap_1}
N 1780 -420 1820 -420 {lab=en_cap_2}
N 1780 -400 1820 -400 {lab=en_cap_3}
N 1780 -480 1820 -480 {lab=bio_amp_en}
N 1140 -480 1180 -480 {lab=phi_cmfb_1}
N 1140 -460 1180 -460 {lab=phi_cmfb_2}
N 1140 -420 1180 -420 {lab=phi_R_1}
N 1140 -400 1180 -400 {lab=phi_R_2}
N 1140 -600 1180 -600 {lab=phi_vcm_generator_1}
N 1140 -580 1180 -580 {lab=phi_vcm_generator_2}
N 1140 -540 1180 -540 {lab=phi_bias_1}
N 1140 -520 1180 -520 {lab=phi_bias_2}
N 360 -480 360 -460 {lab=VDD_DIG}
N 260 -400 280 -400 {lab=phi_vcm_generator_1}
N 260 -320 280 -320 {lab=phi_vcm_generator_2}
N 440 -360 480 -360 {lab=Vcm}
N 1480 -1540 1480 -1500 {lab=VDD_DIG}
N 1140 -1420 1180 -1420 {lab=phi_comp}
N 180 -1140 220 -1140 {lab=Vcm}
N 360 -1420 360 -1400 {lab=VDD_DAC}
N 280 -1420 360 -1420 {lab=VDD_DAC}
N 360 -1440 360 -1420 {lab=VDD_DAC}
N 280 -1420 280 -1400 {lab=VDD_DAC}
N 1480 -300 1480 -260 {lab=VSS}
N 1780 -900 1820 -900 {lab=spike}
N 1140 -1360 1140 -1320 {lab=vcomp_upper}
N 600 -880 600 -840 {lab=phi_dac_lower}
N 440 -880 440 -840 {lab=dac_D0_lower}
N 480 -880 480 -840 {lab=dac_D1_lower}
N 520 -880 520 -840 {lab=dac_D2_lower}
N 560 -880 560 -840 {lab=dac_D3_lower}
N 600 -1440 600 -1400 {lab=phi_dac_upper}
N 440 -1440 440 -1400 {lab=dac_D0_upper}
N 480 -1440 480 -1400 {lab=dac_D1_upper}
N 520 -1440 520 -1400 {lab=dac_D2_upper}
N 560 -1440 560 -1400 {lab=dac_D3_upper}
N 1140 -1320 1180 -1320 {lab=vcomp_upper}
N 1140 -960 1180 -960 {lab=vcomp_lower}
N 1140 -960 1140 -920 {lab=vcomp_lower}
N 1020 -960 1140 -960 {lab=vcomp_lower}
N 1140 -860 1180 -860 {lab=phi_dac_lower}
N 1140 -820 1180 -820 {lab=dac_D0_lower}
N 1140 -780 1180 -780 {lab=dac_D1_lower}
N 1140 -740 1180 -740 {lab=dac_D2_lower}
N 1020 -1320 1140 -1320 {lab=vcomp_upper}
N 1140 -1220 1180 -1220 {lab=phi_dac_upper}
N 1140 -1180 1180 -1180 {lab=dac_D0_upper}
N 1140 -1140 1180 -1140 {lab=dac_D1_upper}
N 1140 -1100 1180 -1100 {lab=dac_D2_upper}
N 1140 -1060 1180 -1060 {lab=dac_D3_upper}
N 1140 -700 1180 -700 {lab=dac_D3_lower}
N 740 -980 740 -920 {lab=vdac_lowerp}
N 700 -940 700 -920 {lab=vdac_lowern}
N 740 -1300 740 -1220 {lab=vdac_uppern}
N 660 -1300 700 -1300 {lab=vdac_upperp}
N 700 -1340 700 -1300 {lab=vdac_upperp}
N 700 -1340 780 -1340 {lab=vdac_upperp}
N 700 -1360 700 -1340 {lab=vdac_upperp}
N 660 -1220 740 -1220 {lab=vdac_uppern}
N 740 -1300 780 -1300 {lab=vdac_uppern}
N 740 -1360 740 -1300 {lab=vdac_uppern}
N 660 -980 700 -980 {lab=vdac_lowern}
N 700 -940 780 -940 {lab=vdac_lowern}
N 700 -980 700 -940 {lab=vdac_lowern}
N 660 -1060 740 -1060 {lab=vdac_lowerp}
N 740 -980 780 -980 {lab=vdac_lowerp}
N 740 -1060 740 -980 {lab=vdac_lowerp}
N 1780 -1440 1820 -1440 {
lab=di_clock}
N 1780 -1400 1820 -1400 {
lab=di_reset_n}
N 1780 -1300 1820 -1300 {
lab=di_trigger_start_sampling}
N 1780 -1200 1820 -1200 {
lab=di_trigger_start_mode}
N 1780 -1160 1820 -1160 {
lab=di_adaptive_mode}
N 1780 -1120 1820 -1120 {
lab=di_control_mode}
N 1780 -1080 1820 -1080 {
lab=di_signal_select_in}
N 1780 -1040 1820 -1040 {
lab=di_enable}
N 1780 -1000 1820 -1000 {
lab=di_select_tbs_delta_steps}
N 180 -1220 220 -1220 {lab=vbncp}
N 180 -1060 220 -1060 {lab=vbncn}
C {devices/iopin.sym} 1480 -1540 2 0 {name=p1 lab=VDD_DIG}
C {devices/iopin.sym} 840 -1420 3 0 {name=p5 lab=VDD_COMP}
C {devices/iopin.sym} 1480 -260 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 -1060 1 0 {name=p12 sig_type=std_logic lab=VDD_COMP}
C {devices/ipin.sym} 1820 -1440 2 0 {name=p21 lab=di_clock}
C {devices/ipin.sym} 1820 -1400 0 1 {name=p22 lab=di_reset_n}
C {devices/iopin.sym} 360 -1440 3 0 {name=p13 lab=VDD_DAC}
C {devices/ipin.sym} 1820 -800 2 0 {name=p4 lab=di_uart_rx}
C {opin.sym} 1820 -760 0 0 {name=p15 lab=do_uart_tx}
C {ipin.sym} 1820 -1300 2 0 {name=p16 lab=di_trigger_start_sampling}
C {ipin.sym} 1820 -1200 2 0 {name=p17 lab=di_trigger_start_mode}
C {ipin.sym} 1820 -1160 2 0 {name=p18 lab=di_adaptive_mode}
C {ipin.sym} 1820 -1120 2 0 {name=p23 lab=di_control_mode}
C {ipin.sym} 1820 -1080 2 0 {name=p24 lab=di_signal_select_in}
C {ipin.sym} 1820 -1040 2 0 {name=p25 lab=di_enable}
C {ipin.sym} 1820 -1000 2 0 {name=p26 lab=di_select_tbs_delta_steps}
C {opin.sym} 1820 -660 0 0 {name=p27 lab=do_idle_led}
C {opin.sym} 1820 -620 0 0 {name=p28 lab=do_overflow_led}
C {opin.sym} 1820 -580 0 0 {name=p29 lab=do_underflow_led}
C {comparator/discrete_time/DT_comparator.sym} 900 -1320 0 0 {name=x4}
C {comparator/discrete_time/DT_comparator.sym} 900 -960 0 0 {name=x5}
C {devices/ipin.sym} 180 -1220 0 0 {name=p8 lab=vbncp}
C {devices/ipin.sym} 180 -1060 0 0 {name=p11 lab=vbncn}
C {digital_core/atbs_core_fixed_window_board.sym} 1480 -940 0 0 {name=x30}
C {devices/lab_pin.sym} 280 -860 3 0 {name=p122 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 -1220 3 0 {name=p123 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 -860 3 0 {name=p124 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1140 -1360 0 0 {name=p128 sig_type=std_logic lab=vcomp_upper}
C {lab_wire.sym} 1140 -920 2 1 {name=p129 sig_type=std_logic lab=vcomp_lower}
C {devices/lab_pin.sym} 360 -240 2 0 {name=p126 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1140 -1220 0 0 {name=p132 sig_type=std_logic lab=phi_dac_upper}
C {devices/lab_pin.sym} 360 -480 2 0 {name=p133 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_wire.sym} 960 -1220 1 1 {name=p130 sig_type=std_logic lab=phi_comp}
C {devices/lab_wire.sym} 960 -860 3 0 {name=p131 sig_type=std_logic lab=phi_comp}
C {devices/lab_wire.sym} 260 -400 0 0 {name=p134 sig_type=std_logic lab=phi_vcm_generator_1}
C {devices/lab_wire.sym} 1140 -1180 0 0 {name=p144 sig_type=std_logic lab=dac_D0_upper}
C {devices/lab_wire.sym} 1140 -1140 0 0 {name=p145 sig_type=std_logic lab=dac_D1_upper}
C {devices/lab_wire.sym} 1140 -1100 0 0 {name=p146 sig_type=std_logic lab=dac_D2_upper}
C {devices/lab_wire.sym} 1140 -1060 0 0 {name=p147 sig_type=std_logic lab=dac_D3_upper}
C {devices/lab_wire.sym} 260 -320 0 0 {name=p158 sig_type=std_logic lab=phi_vcm_generator_2}
C {devices/lab_wire.sym} 480 -360 0 1 {name=p135 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 1820 -360 0 1 {name=p159 sig_type=std_logic lab=spdt_ctrl}
C {devices/lab_wire.sym} 1140 -600 0 0 {name=p136 sig_type=std_logic lab=phi_vcm_generator_1}
C {devices/lab_wire.sym} 1140 -580 0 0 {name=p137 sig_type=std_logic lab=phi_vcm_generator_2}
C {devices/lab_wire.sym} 1140 -420 0 0 {name=p160 sig_type=std_logic lab=phi_R_1}
C {devices/lab_wire.sym} 1140 -400 0 0 {name=p161 sig_type=std_logic lab=phi_R_2}
C {devices/lab_wire.sym} 1140 -540 0 0 {name=p162 sig_type=std_logic lab=phi_bias_1}
C {devices/lab_wire.sym} 1140 -520 0 0 {name=p163 sig_type=std_logic lab=phi_bias_2}
C {devices/lab_wire.sym} 1140 -480 0 0 {name=p164 sig_type=std_logic lab=phi_cmfb_1}
C {devices/lab_wire.sym} 1140 -460 0 0 {name=p165 sig_type=std_logic lab=phi_cmfb_2}
C {devices/lab_wire.sym} 1820 -440 0 1 {name=p169 sig_type=std_logic lab=en_cap_1}
C {devices/lab_wire.sym} 1820 -420 0 1 {name=p170 sig_type=std_logic lab=en_cap_2}
C {devices/lab_wire.sym} 1820 -400 0 1 {name=p171 sig_type=std_logic lab=en_cap_3}
C {devices/lab_wire.sym} 1820 -480 0 1 {name=p173 sig_type=std_logic lab=bio_amp_en}
C {devices/lab_wire.sym} 180 -1140 0 0 {name=p178 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 1140 -1420 0 0 {name=p205 sig_type=std_logic lab=phi_comp}
C {vcm_generator/vcm_generator.sym} 360 -360 0 0 {name=x32 C_VCM=1p W_P_VCM=1.0u L_P_VCM=0.13u W_N_VCM=1.0u L_N_VCM=0.13u}
C {dac/dac.sym} 440 -1260 0 0 {name=x31 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u C2=1024f Cu=8f Cucomp=8.1f}
C {devices/lab_wire.sym} 1140 -860 0 0 {name=p35 sig_type=std_logic lab=phi_dac_lower}
C {devices/lab_wire.sym} 1140 -820 0 0 {name=p36 sig_type=std_logic lab=dac_D0_lower}
C {devices/lab_wire.sym} 1140 -780 0 0 {name=p37 sig_type=std_logic lab=dac_D1_lower}
C {devices/lab_wire.sym} 1140 -740 0 0 {name=p42 sig_type=std_logic lab=dac_D2_lower}
C {devices/lab_wire.sym} 1140 -700 0 0 {name=p43 sig_type=std_logic lab=dac_D3_lower}
C {devices/lab_wire.sym} 600 -840 3 0 {name=p44 sig_type=std_logic lab=phi_dac_lower}
C {devices/lab_wire.sym} 440 -840 3 0 {name=p45 sig_type=std_logic lab=dac_D0_lower}
C {devices/lab_wire.sym} 480 -840 3 0 {name=p47 sig_type=std_logic lab=dac_D1_lower}
C {devices/lab_wire.sym} 520 -840 3 0 {name=p49 sig_type=std_logic lab=dac_D2_lower}
C {devices/lab_wire.sym} 560 -840 3 0 {name=p50 sig_type=std_logic lab=dac_D3_lower}
C {devices/lab_wire.sym} 600 -1440 3 1 {name=p51 sig_type=std_logic lab=phi_dac_upper}
C {devices/lab_wire.sym} 440 -1440 3 1 {name=p52 sig_type=std_logic lab=dac_D0_upper}
C {devices/lab_wire.sym} 480 -1440 3 1 {name=p53 sig_type=std_logic lab=dac_D1_upper}
C {devices/lab_wire.sym} 520 -1440 3 1 {name=p54 sig_type=std_logic lab=dac_D2_upper}
C {devices/lab_wire.sym} 560 -1440 3 1 {name=p55 sig_type=std_logic lab=dac_D3_upper}
C {lab_wire.sym} 1820 -900 0 1 {name=p2 sig_type=std_logic lab=spike}
C {opin.sym} 700 -1360 1 1 {name=p32 lab=vdac_upperp}
C {opin.sym} 700 -920 3 1 {name=p7 lab=vdac_lowern}
C {opin.sym} 740 -1360 1 1 {name=p93 lab=vdac_uppern}
C {opin.sym} 740 -920 3 1 {name=p94 lab=vdac_lowerp}
