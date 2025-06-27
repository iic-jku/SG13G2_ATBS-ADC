v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 0 0 65 0 {}
L 4 1860 -160 1860 0 {}
L 4 1860 -160 3180 -160 {}
L 4 1860 -80 3180 -80 {}
L 4 2490 -80 2490 0 {}
L 4 2490 -160 2490 -80 {}
L 4 2200 -80 2200 0 {}
L 4 360 0 540 0 {}
L 4 540 0 3180 0 {}
L 4 0 -2440 0 0 {}
L 4 0 -2440 3180 -2440 {}
L 4 3180 -2440 3180 0 {}
P 4 5 40 -1160 40 -880 520 -880 520 -1160 40 -1160 {dash = 8}
P 4 5 40 -200 40 -800 1160 -800 1160 -200 40 -200 {dash = 8}
P 4 5 2340 -740 3140 -740 3140 -200 2340 -200 2340 -740 {dash = 8}
P 4 7 40 -2240 3140 -2240 3140 -820 2100 -820 2100 -1240 40 -1240 40 -2240 {dash = 8}
P 4 5 1200 -1040 2060 -1040 2060 -200 1200 -200 1200 -1040 {dash = 8}
P 5 38 140 -15 135 -10 125 0 135 10 147.5 22.5 155 30 147.5 30 140 30 135 30 130 25 125 20 115 10 105 20 100 25 95 30 90 30 82.5 30 75 30 82.5 22.5 95 10 105 0 95 -10 82.5 -22.5 75 -30 82.5 -30 90 -30 95 -30 100 -25 105 -20 115 -10 125 -20 130 -25 135 -30 140 -30 147.5 -30 155 -30 147.5 -22.5 140 -15 {fill=true
bezier=1}
T {Fully-Differential Fixed-Window Adaptive Threshold-Based Sampling ADC} 160 -2410 0 0 1.5 1.5 {}
T {ToDo: try RC LPF between 
bio amplifier and DAC} 1230 -1720 2 0 0.35 0.35 {}
T {Additional ESD protection 
external on eval. board} 460 -2200 0 0 0.4 0.4 {}
T {ToDo: Make additional VDD pin for
Vcm Generator & Input switches?
Now, connected to VDD_DIG!} 560 -1160 0 0 0.4 0.4 {}
T {2025-03-17} 2500 -60 0 0 0.8 0.8 {}
T {Simon Dorrer} 1870 -140 0 0 0.8 0.8 {}
T {Page 1 of 1} 1870 -60 0 0 0.8 0.8 {}
T {Fully-Diff. Fixed-Window ATBS Top Level} 2500 -120 0 0 0.6 0.6 {vcenter=true}
T {Rev. 1.0} 2210 -60 0 0 0.8 0.8 {}
T {SCHEM} 155 -25 0 0 1 1 {}
T {Vcm Generator} 40 -1210 0 0 0.6 0.6 {}
T {Level-Up Shifter @ Outputs} 2340 -790 0 0 0.6 0.6 {}
T {Schmitt Trigger + Level-Down Shifter @ Inputs} 40 -845 0 0 0.6 0.6 {}
T {Buffers for Digital Core signals} 1200 -1085 0 0 0.6 0.6 {}
T {Bio-Analog Front-End + Digital Core} 40 -2285 0 0 0.6 0.6 {}
T {These buffers should be placed close to the corresponding blocks in the layout. 
In this way, a clear digital signal without any distortion is present.} 1200 -1150 0 0 0.4 0.4 {}
N 2920 -2040 2960 -2040 {
lab=clock}
N 2920 -2000 2960 -2000 {
lab=reset_n}
N 2920 -1260 2960 -1260 {lab=idle_led}
N 2920 -1900 2960 -1900 {
lab=trigger_start_sampling}
N 2920 -1800 2960 -1800 {
lab=trigger_start_mode}
N 2920 -1760 2960 -1760 {
lab=adaptive_mode}
N 2920 -1720 2960 -1720 {
lab=control_mode}
N 2920 -1680 2960 -1680 {
lab=signal_select_in}
N 2920 -1640 2960 -1640 {
lab=enable}
N 2920 -1600 2960 -1600 {
lab=select_tbs_delta_steps}
N 2920 -1400 2960 -1400 {lab=uart_rx}
N 2920 -1360 2960 -1360 {lab=uart_tx}
N 2920 -1220 2960 -1220 {lab=overflow_led}
N 2920 -1180 2960 -1180 {lab=underflow_led}
N 960 -680 980 -680 {lab=clock}
N 300 -680 320 -680 {lab=di_clock}
N 560 -760 560 -740 {lab=VDD_IO}
N 2700 -260 2700 -240 {lab=VSS}
N 2620 -700 2620 -680 {lab=VDD_DIG}
N 2780 -700 2780 -680 {lab=VDD_IO}
N 2920 -560 2940 -560 {lab=do_uart_tx}
N 2460 -560 2480 -560 {lab=uart_tx}
N 960 -640 980 -640 {lab=reset_n}
N 300 -640 320 -640 {lab=di_reset_n}
N 960 -600 980 -600 {lab=trigger_start_sampling}
N 300 -600 320 -600 {lab=di_trigger_start_sampling}
N 960 -560 980 -560 {lab=trigger_start_mode}
N 300 -560 320 -560 {lab=di_trigger_start_mode}
N 640 -260 640 -240 {lab=VSS}
N 960 -520 980 -520 {lab=adaptive_mode}
N 300 -520 320 -520 {lab=di_adaptive_mode}
N 960 -480 980 -480 {lab=control_mode}
N 300 -480 320 -480 {lab=di_control_mode}
N 720 -760 720 -740 {lab=VDD_DIG}
N 960 -440 980 -440 {lab=signal_select_in}
N 300 -440 320 -440 {lab=di_signal_select_in}
N 960 -400 980 -400 {lab=enable}
N 300 -400 320 -400 {lab=di_enable}
N 960 -360 980 -360 {lab=select_tbs_delta_steps}
N 300 -360 320 -360 {lab=di_select_tbs_delta_steps}
N 960 -320 980 -320 {lab=uart_rx}
N 300 -320 320 -320 {lab=di_uart_rx}
N 2920 -500 2940 -500 {lab=do_idle_led}
N 2460 -500 2480 -500 {lab=idle_led}
N 2920 -440 2940 -440 {lab=do_overflow_led}
N 2460 -440 2480 -440 {lab=overflow_led}
N 2920 -380 2940 -380 {lab=do_underflow_led}
N 2460 -380 2480 -380 {lab=underflow_led}
N 960 -1720 960 -1700 {lab=voutn_amp}
N 960 -1780 960 -1760 {lab=voutp_amp}
N 1420 -1480 1420 -1460 {lab=VSS}
N 660 -1540 660 -1520 {lab=VSS}
N 640 -1960 640 -1940 {lab=VDD_AMP}
N 1980 -2020 1980 -2000 {lab=VDD_COMP}
N 1980 -1840 1980 -1820 {lab=VSS}
N 2100 -1840 2100 -1820 {lab=phi_comp_buf}
N 1980 -1660 1980 -1640 {lab=VDD_COMP}
N 1980 -1480 1980 -1460 {lab=VSS}
N 2100 -1480 2100 -1460 {lab=phi_comp_buf}
N 960 -1700 1040 -1700 {lab=voutn_amp}
N 1080 -1480 1080 -1440 {lab=VSS}
N 1200 -1480 1200 -1440 {lab=VDD_DIG}
N 1040 -1660 1040 -1420 {lab=voutn_amp}
N 1040 -1420 1080 -1420 {lab=voutn_amp}
N 960 -1780 1040 -1780 {lab=voutp_amp}
N 1080 -2040 1080 -2000 {lab=VSS}
N 1200 -2040 1200 -2000 {lab=VDD_DIG}
N 1040 -1820 1040 -1780 {lab=voutp_amp}
N 1040 -2060 1080 -2060 {lab=voutp_amp}
N 1280 -1660 1280 -1400 {lab=voutn_switch}
N 500 -1960 500 -1940 {lab=phi_cmfb_1_buf}
N 540 -1960 540 -1940 {lab=phi_cmfb_2_buf}
N 780 -1540 780 -1520 {lab=phi_R_1_buf}
N 820 -1540 820 -1520 {lab=phi_R_2_buf}
N 780 -1960 780 -1940 {lab=phi_bias_1_buf}
N 820 -1960 820 -1940 {lab=phi_bias_2_buf}
N 490 -1540 490 -1520 {lab=en_cap_1_buf}
N 570 -1540 570 -1520 {lab=en_cap_3_buf}
N 530 -1540 530 -1520 {lab=en_cap_2_buf}
N 680 -1960 680 -1940 {lab=bio_amp_en_buf}
N 1040 -1820 1060 -1820 {lab=voutp_amp}
N 1040 -1660 1060 -1660 {lab=voutn_amp}
N 1040 -1700 1040 -1660 {lab=voutn_amp}
N 340 -920 340 -900 {lab=VSS}
N 2920 -960 2960 -960 {lab=spdt_ctrl}
N 2920 -1040 2960 -1040 {lab=en_cap_1}
N 2920 -1020 2960 -1020 {lab=en_cap_2}
N 2920 -1000 2960 -1000 {lab=en_cap_3}
N 2920 -1080 2960 -1080 {lab=bio_amp_en}
N 2280 -1080 2320 -1080 {lab=phi_cmfb_1}
N 2280 -1060 2320 -1060 {lab=phi_cmfb_2}
N 2280 -1020 2320 -1020 {lab=phi_R_1}
N 2280 -1000 2320 -1000 {lab=phi_R_2}
N 2280 -1200 2320 -1200 {lab=phi_vcm_generator_1}
N 2280 -1180 2320 -1180 {lab=phi_vcm_generator_2}
N 2280 -1140 2320 -1140 {lab=phi_bias_1}
N 2280 -1120 2320 -1120 {lab=phi_bias_2}
N 340 -1140 340 -1120 {lab=VDD_DIG}
N 240 -1060 260 -1060 {lab=phi_vcm_generator_1_buf}
N 240 -980 260 -980 {lab=phi_vcm_generator_2_buf}
N 420 -1020 460 -1020 {lab=Vcm}
N 2620 -2140 2620 -2100 {lab=VDD_DIG}
N 1840 -880 1860 -880 {lab=phi_comp_buf}
N 1380 -880 1400 -880 {lab=phi_comp}
N 1840 -940 1860 -940 {lab=phi_vcm_generator_1_buf}
N 1380 -940 1400 -940 {lab=phi_vcm_generator_1}
N 1840 -920 1860 -920 {lab=phi_vcm_generator_2_buf}
N 1380 -920 1400 -920 {lab=phi_vcm_generator_2}
N 1840 -300 1860 -300 {lab=spdt_ctrl_buf}
N 1380 -300 1400 -300 {lab=spdt_ctrl}
N 1840 -600 1860 -600 {lab=phi_bias_1_buf}
N 1380 -600 1400 -600 {lab=phi_bias_1}
N 1840 -580 1860 -580 {lab=phi_bias_2_buf}
N 1380 -580 1400 -580 {lab=phi_bias_2}
N 1840 -540 1860 -540 {lab=phi_cmfb_1_buf}
N 1380 -540 1400 -540 {lab=phi_cmfb_1}
N 1840 -520 1860 -520 {lab=phi_cmfb_2_buf}
N 1380 -520 1400 -520 {lab=phi_cmfb_2}
N 1840 -480 1860 -480 {lab=phi_R_1_buf}
N 1380 -480 1400 -480 {lab=phi_R_1}
N 1840 -460 1860 -460 {lab=phi_R_2_buf}
N 1380 -460 1400 -460 {lab=phi_R_2}
N 1840 -420 1860 -420 {lab=en_cap_1_buf}
N 1840 -400 1860 -400 {lab=en_cap_2_buf}
N 1840 -380 1860 -380 {lab=en_cap_3_buf}
N 1380 -380 1400 -380 {lab=en_cap_3}
N 1840 -340 1860 -340 {lab=bio_amp_en_buf}
N 1380 -340 1400 -340 {lab=bio_amp_en}
N 2280 -2020 2320 -2020 {lab=phi_comp}
N 1280 -2080 1280 -1820 {lab=voutp_switch}
N 1320 -1740 1360 -1740 {lab=Vcm}
N 420 -1780 460 -1780 {lab=#net1}
N 420 -1740 460 -1740 {lab=Vcm}
N 420 -1700 460 -1700 {lab=#net2}
N 1840 -1940 1920 -1940 {lab=vdac_upperp}
N 1840 -1960 1840 -1940 {lab=vdac_upperp}
N 1880 -1900 1920 -1900 {lab=vdac_uppern}
N 1500 -2020 1500 -2000 {lab=VDD_DAC}
N 1420 -2020 1500 -2020 {lab=VDD_DAC}
N 1500 -2040 1500 -2020 {lab=VDD_DAC}
N 1420 -2020 1420 -2000 {lab=VDD_DAC}
N 2620 -900 2620 -860 {lab=VSS}
N 2920 -1500 2960 -1500 {lab=spike}
N 2280 -1960 2280 -1920 {lab=vcomp_upper}
N 1800 -1900 1840 -1900 {lab=vdac_upperp}
N 1840 -1940 1840 -1900 {lab=vdac_upperp}
N 1800 -1820 1880 -1820 {lab=vdac_uppern}
N 1880 -1900 1880 -1820 {lab=vdac_uppern}
N 1800 -1660 1880 -1660 {lab=vdac_lowerp}
N 1880 -1580 1920 -1580 {lab=vdac_lowerp}
N 1880 -1660 1880 -1580 {lab=vdac_lowerp}
N 1840 -1540 1920 -1540 {lab=vdac_lowern}
N 1800 -1580 1840 -1580 {lab=vdac_lowern}
N 1840 -1580 1840 -1540 {lab=vdac_lowern}
N 1840 -1540 1840 -1520 {lab=vdac_lowern}
N 1740 -1480 1740 -1440 {lab=phi_dac_lower_buf}
N 1580 -1480 1580 -1440 {lab=dac_D0_lower_buf}
N 1620 -1480 1620 -1440 {lab=dac_D1_lower_buf}
N 1660 -1480 1660 -1440 {lab=dac_D2_lower_buf}
N 1700 -1480 1700 -1440 {lab=dac_D3_lower_buf}
N 1740 -2040 1740 -2000 {lab=phi_dac_upper_buf}
N 1580 -2040 1580 -2000 {lab=dac_D0_upper_buf}
N 1620 -2040 1620 -2000 {lab=dac_D1_upper_buf}
N 1660 -2040 1660 -2000 {lab=dac_D2_upper_buf}
N 1700 -2040 1700 -2000 {lab=dac_D3_upper_buf}
N 1380 -720 1400 -720 {lab=phi_dac_lower}
N 1380 -700 1400 -700 {lab=dac_D0_lower}
N 1380 -680 1400 -680 {lab=dac_D1_lower}
N 1380 -660 1400 -660 {lab=dac_D2_lower}
N 1380 -640 1400 -640 {lab=dac_D3_lower}
N 1380 -840 1400 -840 {lab=phi_dac_upper}
N 1380 -820 1400 -820 {lab=dac_D0_upper}
N 1380 -800 1400 -800 {lab=dac_D1_upper}
N 1380 -780 1400 -780 {lab=dac_D2_upper}
N 1380 -760 1400 -760 {lab=dac_D3_upper}
N 2280 -1920 2320 -1920 {lab=vcomp_upper}
N 2280 -1560 2320 -1560 {lab=vcomp_lower}
N 2280 -1560 2280 -1520 {lab=vcomp_lower}
N 2160 -1560 2280 -1560 {lab=vcomp_lower}
N 2280 -1460 2320 -1460 {lab=phi_dac_lower}
N 2280 -1420 2320 -1420 {lab=dac_D0_lower}
N 2280 -1380 2320 -1380 {lab=dac_D1_lower}
N 2280 -1340 2320 -1340 {lab=dac_D2_lower}
N 2160 -1920 2280 -1920 {lab=vcomp_upper}
N 2280 -1820 2320 -1820 {lab=phi_dac_upper}
N 2280 -1780 2320 -1780 {lab=dac_D0_upper}
N 2280 -1740 2320 -1740 {lab=dac_D1_upper}
N 2280 -1700 2320 -1700 {lab=dac_D2_upper}
N 2280 -1660 2320 -1660 {lab=dac_D3_upper}
N 2280 -1300 2320 -1300 {lab=dac_D3_lower}
N 280 -1960 280 -1940 {lab=VDD_AMP}
N 280 -1780 280 -1760 {lab=VSS}
N 140 -1860 180 -1860 {lab=vecgp}
N 280 -1720 280 -1700 {lab=VDD_AMP}
N 280 -1540 280 -1520 {lab=VSS}
N 140 -1620 180 -1620 {lab=vecgn}
N 340 -1860 420 -1860 {lab=#net1}
N 340 -1620 420 -1620 {lab=#net2}
N 420 -1700 420 -1620 {lab=#net2}
N 1620 -1000 1620 -980 {lab=VDD_DIG}
N 1620 -260 1620 -240 {lab=VSS}
N 1380 -420 1400 -420 {lab=en_cap_1}
N 1380 -400 1400 -400 {lab=en_cap_2}
N 1840 -720 1860 -720 {lab=phi_dac_lower_buf}
N 1840 -700 1860 -700 {lab=dac_D0_lower_buf}
N 1840 -680 1860 -680 {lab=dac_D1_lower_buf}
N 1840 -660 1860 -660 {lab=dac_D2_lower_buf}
N 1840 -640 1860 -640 {lab=dac_D3_lower_buf}
N 1840 -840 1860 -840 {lab=phi_dac_upper_buf}
N 1840 -820 1860 -820 {lab=dac_D0_upper_buf}
N 1840 -800 1860 -800 {lab=dac_D1_upper_buf}
N 1840 -780 1860 -780 {lab=dac_D2_upper_buf}
N 1840 -760 1860 -760 {lab=dac_D3_upper_buf}
N 1200 -2080 1280 -2080 {lab=voutp_switch}
N 1200 -1400 1280 -1400 {lab=voutn_switch}
N 1280 -1820 1360 -1820 {lab=voutp_switch}
N 1280 -1660 1360 -1660 {lab=voutn_switch}
N 860 -1760 960 -1760 {lab=voutp_amp}
N 860 -1720 960 -1720 {lab=voutn_amp}
N 280 -2200 280 -2180 {lab=VDD_AMP}
N 280 -2020 280 -2000 {lab=VSS}
N 280 -1480 280 -1460 {lab=VDD_AMP}
N 280 -1300 280 -1280 {lab=VSS}
N 420 -1860 420 -1780 {lab=#net1}
N 140 -1380 180 -1380 {lab=vbncn}
N 140 -2100 180 -2100 {lab=vbncp}
N 340 -2100 1080 -2100 {lab=#net3}
N 1140 -2200 1140 -2140 {lab=spdt_ctrl_buf}
N 1280 -2120 1280 -2080 {lab=voutp_switch}
N 1040 -2060 1040 -1820 {lab=voutp_amp}
N 340 -1380 1080 -1380 {lab=#net4}
N 1140 -1340 1140 -1280 {lab=spdt_ctrl_buf}
N 1280 -1400 1280 -1360 {lab=voutn_switch}
N 1880 -1960 1880 -1900 {lab=vdac_uppern}
N 1880 -1580 1880 -1520 {lab=vdac_lowerp}
C {devices/iopin.sym} 2620 -2140 2 0 {name=p1 lab=VDD_DIG}
C {devices/iopin.sym} 660 -1520 1 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 1980 -2020 3 0 {name=p5 lab=VDD_COMP}
C {devices/ipin.sym} 140 -1860 0 0 {name=p6 lab=vecgp}
C {devices/lab_pin.sym} 2620 -860 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1980 -1660 1 0 {name=p12 sig_type=std_logic lab=VDD_COMP}
C {devices/ipin.sym} 300 -680 2 1 {name=p21 lab=di_clock}
C {devices/ipin.sym} 300 -640 0 0 {name=p22 lab=di_reset_n}
C {devices/iopin.sym} 1500 -2040 3 0 {name=p13 lab=VDD_DAC}
C {devices/ipin.sym} 300 -320 2 1 {name=p4 lab=di_uart_rx}
C {opin.sym} 2940 -560 0 0 {name=p15 lab=do_uart_tx}
C {ipin.sym} 300 -600 2 1 {name=p16 lab=di_trigger_start_sampling}
C {ipin.sym} 300 -560 2 1 {name=p17 lab=di_trigger_start_mode}
C {ipin.sym} 300 -520 2 1 {name=p18 lab=di_adaptive_mode}
C {ipin.sym} 300 -480 2 1 {name=p23 lab=di_control_mode}
C {ipin.sym} 300 -440 2 1 {name=p24 lab=di_signal_select_in}
C {ipin.sym} 300 -400 2 1 {name=p25 lab=di_enable}
C {ipin.sym} 300 -360 2 1 {name=p26 lab=di_select_tbs_delta_steps}
C {opin.sym} 2940 -500 0 0 {name=p27 lab=do_idle_led}
C {opin.sym} 2940 -440 0 0 {name=p28 lab=do_overflow_led}
C {opin.sym} 2940 -380 0 0 {name=p29 lab=do_underflow_led}
C {opin.sym} 1840 -1960 1 1 {name=p32 lab=vdac_upperp}
C {opin.sym} 1840 -1520 3 1 {name=p7 lab=vdac_lowern}
C {devices/iopin.sym} 640 -1960 3 0 {name=p19 lab=VDD_AMP}
C {devices/ipin.sym} 140 -1620 0 0 {name=p34 lab=vecgn}
C {bio_amplifier/bio_amplifier.sym} 660 -1740 0 0 {name=x1}
C {spdt_switch/spdt_switch.sym} 1140 -1400 1 0 {name=x2 W_P_TG=3.0u L_P_TG=0.13u W_N_TG=1.0u L_N_TG=0.13u}
C {spdt_switch/spdt_switch.sym} 1140 -2080 1 1 {name=x3 W_P_TG=3.0u L_P_TG=0.13u W_N_TG=1.0u L_N_TG=0.13u}
C {comparator/discrete_time/DT_comparator.sym} 2040 -1920 0 0 {name=x4}
C {comparator/discrete_time/DT_comparator.sym} 2040 -1560 0 0 {name=x5}
C {devices/ipin.sym} 140 -2100 0 0 {name=p8 lab=vbncp}
C {devices/ipin.sym} 140 -1380 0 0 {name=p11 lab=vbncn}
C {lab_wire.sym} 980 -680 0 1 {name=p14 sig_type=std_logic lab=clock}
C {devices/iopin.sym} 560 -760 2 0 {name=p31 lab=VDD_IO}
C {lab_wire.sym} 2960 -2040 0 1 {name=p38 sig_type=std_logic lab=clock}
C {devices/lab_pin.sym} 2700 -240 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2780 -700 2 1 {name=p40 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 2620 -700 0 0 {name=p41 sig_type=std_logic lab=VDD_DIG}
C {lab_wire.sym} 980 -600 0 1 {name=p48 sig_type=std_logic lab=trigger_start_sampling}
C {devices/lab_pin.sym} 640 -240 2 1 {name=p58 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 980 -480 0 1 {name=p68 sig_type=std_logic lab=control_mode}
C {devices/lab_pin.sym} 720 -760 2 1 {name=p73 sig_type=std_logic lab=VDD_DIG}
C {lab_wire.sym} 970 -400 0 1 {name=p80 sig_type=std_logic lab=enable}
C {lab_wire.sym} 2960 -1260 0 1 {name=p102 sig_type=std_logic lab=idle_led}
C {lab_wire.sym} 2960 -1220 0 1 {name=p103 sig_type=std_logic lab=overflow_led}
C {lab_wire.sym} 2960 -1180 0 1 {name=p104 sig_type=std_logic lab=underflow_led}
C {lab_wire.sym} 2960 -1360 0 1 {name=p105 sig_type=std_logic lab=uart_tx}
C {lab_wire.sym} 2460 -560 0 0 {name=p106 sig_type=std_logic lab=uart_tx}
C {lab_wire.sym} 2460 -500 0 0 {name=p107 sig_type=std_logic lab=idle_led}
C {lab_wire.sym} 2460 -440 0 0 {name=p108 sig_type=std_logic lab=overflow_led}
C {lab_wire.sym} 2460 -380 0 0 {name=p109 sig_type=std_logic lab=underflow_led}
C {lab_wire.sym} 980 -640 0 1 {name=p46 sig_type=std_logic lab=reset_n}
C {lab_wire.sym} 980 -560 0 1 {name=p67 sig_type=std_logic lab=trigger_start_mode}
C {lab_wire.sym} 980 -520 0 1 {name=p79 sig_type=std_logic lab=adaptive_mode}
C {lab_wire.sym} 980 -440 0 1 {name=p110 sig_type=std_logic lab=signal_select_in}
C {lab_wire.sym} 980 -360 0 1 {name=p111 sig_type=std_logic lab=select_tbs_delta_steps}
C {lab_wire.sym} 980 -320 0 1 {name=p112 sig_type=std_logic lab=uart_rx}
C {lab_wire.sym} 2960 -2000 0 1 {name=p113 sig_type=std_logic lab=reset_n}
C {lab_wire.sym} 2960 -1900 0 1 {name=p114 sig_type=std_logic lab=trigger_start_sampling}
C {lab_wire.sym} 2960 -1800 0 1 {name=p115 sig_type=std_logic lab=trigger_start_mode}
C {lab_wire.sym} 2960 -1760 0 1 {name=p116 sig_type=std_logic lab=adaptive_mode}
C {lab_wire.sym} 2960 -1720 0 1 {name=p117 sig_type=std_logic lab=control_mode}
C {lab_wire.sym} 2960 -1680 0 1 {name=p118 sig_type=std_logic lab=signal_select_in}
C {lab_wire.sym} 2960 -1640 0 1 {name=p119 sig_type=std_logic lab=enable}
C {lab_wire.sym} 2960 -1600 0 1 {name=p120 sig_type=std_logic lab=select_tbs_delta_steps}
C {lab_wire.sym} 2960 -1400 0 1 {name=p121 sig_type=std_logic lab=uart_rx}
C {digital_core/atbs_core_fixed_window_board.sym} 2620 -1540 0 0 {name=x30}
C {devices/lab_pin.sym} 1420 -1460 3 0 {name=p122 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1980 -1820 3 0 {name=p123 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1980 -1460 3 0 {name=p124 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2280 -1960 0 0 {name=p128 sig_type=std_logic lab=vcomp_upper}
C {lab_wire.sym} 2280 -1520 2 1 {name=p129 sig_type=std_logic lab=vcomp_lower}
C {devices/lab_pin.sym} 1080 -1480 1 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1080 -2000 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1200 -2000 3 0 {name=p33 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 340 -900 2 0 {name=p126 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 2280 -1820 0 0 {name=p132 sig_type=std_logic lab=phi_dac_upper}
C {devices/lab_pin.sym} 1200 -1480 1 0 {name=p125 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 340 -1140 2 0 {name=p133 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_wire.sym} 2100 -1820 1 1 {name=p130 sig_type=std_logic lab=phi_comp_buf}
C {devices/lab_wire.sym} 2100 -1460 3 0 {name=p131 sig_type=std_logic lab=phi_comp_buf}
C {devices/lab_wire.sym} 240 -1060 0 0 {name=p134 sig_type=std_logic lab=phi_vcm_generator_1_buf}
C {devices/lab_wire.sym} 2280 -1780 0 0 {name=p144 sig_type=std_logic lab=dac_D0_upper}
C {devices/lab_wire.sym} 2280 -1740 0 0 {name=p145 sig_type=std_logic lab=dac_D1_upper}
C {devices/lab_wire.sym} 2280 -1700 0 0 {name=p146 sig_type=std_logic lab=dac_D2_upper}
C {devices/lab_wire.sym} 2280 -1660 0 0 {name=p147 sig_type=std_logic lab=dac_D3_upper}
C {devices/lab_wire.sym} 1140 -1280 2 0 {name=p150 sig_type=std_logic lab=spdt_ctrl_buf}
C {devices/lab_wire.sym} 240 -980 0 0 {name=p158 sig_type=std_logic lab=phi_vcm_generator_2_buf}
C {devices/lab_wire.sym} 460 -1020 0 1 {name=p135 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 420 -1740 0 0 {name=p127 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 2960 -960 0 1 {name=p159 sig_type=std_logic lab=spdt_ctrl}
C {devices/lab_wire.sym} 1140 -2200 0 1 {name=p151 sig_type=std_logic lab=spdt_ctrl_buf}
C {devices/lab_wire.sym} 2280 -1200 0 0 {name=p136 sig_type=std_logic lab=phi_vcm_generator_1}
C {devices/lab_wire.sym} 2280 -1180 0 0 {name=p137 sig_type=std_logic lab=phi_vcm_generator_2}
C {devices/lab_wire.sym} 780 -1520 3 0 {name=p152 sig_type=std_logic lab=phi_R_1_buf}
C {devices/lab_wire.sym} 820 -1520 3 0 {name=p153 sig_type=std_logic lab=phi_R_2_buf}
C {devices/lab_wire.sym} 780 -1960 3 1 {name=p154 sig_type=std_logic lab=phi_bias_1_buf}
C {devices/lab_wire.sym} 820 -1960 3 1 {name=p155 sig_type=std_logic lab=phi_bias_2_buf}
C {devices/lab_wire.sym} 500 -1960 3 1 {name=p156 sig_type=std_logic lab=phi_cmfb_1_buf}
C {devices/lab_wire.sym} 540 -1960 3 1 {name=p157 sig_type=std_logic lab=phi_cmfb_2_buf}
C {devices/lab_wire.sym} 2280 -1020 0 0 {name=p160 sig_type=std_logic lab=phi_R_1}
C {devices/lab_wire.sym} 2280 -1000 0 0 {name=p161 sig_type=std_logic lab=phi_R_2}
C {devices/lab_wire.sym} 2280 -1140 0 0 {name=p162 sig_type=std_logic lab=phi_bias_1}
C {devices/lab_wire.sym} 2280 -1120 0 0 {name=p163 sig_type=std_logic lab=phi_bias_2}
C {devices/lab_wire.sym} 2280 -1080 0 0 {name=p164 sig_type=std_logic lab=phi_cmfb_1}
C {devices/lab_wire.sym} 2280 -1060 0 0 {name=p165 sig_type=std_logic lab=phi_cmfb_2}
C {devices/lab_wire.sym} 490 -1520 3 0 {name=p166 sig_type=std_logic lab=en_cap_1_buf}
C {devices/lab_wire.sym} 530 -1520 3 0 {name=p167 sig_type=std_logic lab=en_cap_2_buf}
C {devices/lab_wire.sym} 570 -1520 3 0 {name=p168 sig_type=std_logic lab=en_cap_3_buf}
C {devices/lab_wire.sym} 2960 -1040 0 1 {name=p169 sig_type=std_logic lab=en_cap_1}
C {devices/lab_wire.sym} 2960 -1020 0 1 {name=p170 sig_type=std_logic lab=en_cap_2}
C {devices/lab_wire.sym} 2960 -1000 0 1 {name=p171 sig_type=std_logic lab=en_cap_3}
C {devices/lab_wire.sym} 680 -1960 3 1 {name=p172 sig_type=std_logic lab=bio_amp_en_buf}
C {devices/lab_wire.sym} 2960 -1080 0 1 {name=p173 sig_type=std_logic lab=bio_amp_en}
C {lab_wire.sym} 1060 -1820 0 1 {name=p174 sig_type=std_logic lab=voutp_amp}
C {lab_wire.sym} 1060 -1660 2 0 {name=p175 sig_type=std_logic lab=voutn_amp}
C {lab_wire.sym} 1280 -1360 2 0 {name=p176 sig_type=std_logic lab=voutn_switch}
C {lab_wire.sym} 1280 -2120 0 1 {name=p177 sig_type=std_logic lab=voutp_switch}
C {devices/lab_wire.sym} 1320 -1740 0 0 {name=p178 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 1380 -880 0 0 {name=p197 sig_type=std_logic lab=phi_comp}
C {devices/lab_wire.sym} 1380 -940 0 0 {name=p198 sig_type=std_logic lab=phi_vcm_generator_1}
C {devices/lab_wire.sym} 1380 -480 0 0 {name=p200 sig_type=std_logic lab=phi_R_1}
C {devices/lab_wire.sym} 1380 -460 0 0 {name=p201 sig_type=std_logic lab=phi_R_2}
C {devices/lab_wire.sym} 1380 -600 0 0 {name=p202 sig_type=std_logic lab=phi_bias_1}
C {devices/lab_wire.sym} 1380 -580 0 0 {name=p203 sig_type=std_logic lab=phi_bias_2}
C {devices/lab_wire.sym} 1380 -540 0 0 {name=p204 sig_type=std_logic lab=phi_cmfb_1}
C {devices/lab_wire.sym} 1380 -300 0 0 {name=p206 sig_type=std_logic lab=spdt_ctrl}
C {devices/lab_wire.sym} 1380 -380 0 0 {name=p209 sig_type=std_logic lab=en_cap_3}
C {devices/lab_wire.sym} 1380 -340 0 0 {name=p210 sig_type=std_logic lab=bio_amp_en}
C {devices/lab_wire.sym} 1860 -880 0 1 {name=p214 sig_type=std_logic lab=phi_comp_buf}
C {devices/lab_wire.sym} 1860 -940 0 1 {name=p216 sig_type=std_logic lab=phi_vcm_generator_1_buf}
C {devices/lab_wire.sym} 1380 -920 0 0 {name=p217 sig_type=std_logic lab=phi_vcm_generator_2}
C {devices/lab_wire.sym} 1860 -920 0 1 {name=p220 sig_type=std_logic lab=phi_vcm_generator_2_buf}
C {devices/lab_wire.sym} 1860 -300 0 1 {name=p199 sig_type=std_logic lab=spdt_ctrl_buf}
C {devices/lab_wire.sym} 1860 -600 0 1 {name=p226 sig_type=std_logic lab=phi_bias_1_buf}
C {devices/lab_wire.sym} 1860 -580 0 1 {name=p230 sig_type=std_logic lab=phi_bias_2_buf}
C {devices/lab_wire.sym} 1860 -540 0 1 {name=p233 sig_type=std_logic lab=phi_cmfb_1_buf}
C {devices/lab_wire.sym} 1380 -520 0 0 {name=p223 sig_type=std_logic lab=phi_cmfb_2}
C {devices/lab_wire.sym} 1860 -520 0 1 {name=p227 sig_type=std_logic lab=phi_cmfb_2_buf}
C {devices/lab_wire.sym} 1860 -480 0 1 {name=p238 sig_type=std_logic lab=phi_R_1_buf}
C {devices/lab_wire.sym} 1860 -460 0 1 {name=p242 sig_type=std_logic lab=phi_R_2_buf}
C {devices/lab_wire.sym} 1860 -420 0 1 {name=p246 sig_type=std_logic lab=en_cap_1_buf}
C {devices/lab_wire.sym} 1860 -400 0 1 {name=p249 sig_type=std_logic lab=en_cap_2_buf}
C {devices/lab_wire.sym} 1860 -380 0 1 {name=p252 sig_type=std_logic lab=en_cap_3_buf}
C {devices/lab_wire.sym} 1860 -340 0 1 {name=p256 sig_type=std_logic lab=bio_amp_en_buf}
C {devices/lab_wire.sym} 2280 -2020 0 0 {name=p205 sig_type=std_logic lab=phi_comp}
C {vcm_generator/vcm_generator.sym} 340 -1020 0 0 {name=x32 C_VCM=1p W_P_VCM=1.0u L_P_VCM=0.13u W_N_VCM=1.0u L_N_VCM=0.13u}
C {dac/dac.sym} 1580 -1860 0 0 {name=x31 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u C2=1024f Cu=8f Cucomp=8.1f}
C {top_level/auxiliary/input_hardware.sym} 640 -480 0 0 {name=x6}
C {top_level/auxiliary/output_hardware.sym} 2700 -460 0 0 {name=x7}
C {devices/lab_wire.sym} 2280 -1460 0 0 {name=p35 sig_type=std_logic lab=phi_dac_lower}
C {devices/lab_wire.sym} 2280 -1420 0 0 {name=p36 sig_type=std_logic lab=dac_D0_lower}
C {devices/lab_wire.sym} 2280 -1380 0 0 {name=p37 sig_type=std_logic lab=dac_D1_lower}
C {devices/lab_wire.sym} 2280 -1340 0 0 {name=p42 sig_type=std_logic lab=dac_D2_lower}
C {devices/lab_wire.sym} 2280 -1300 0 0 {name=p43 sig_type=std_logic lab=dac_D3_lower}
C {devices/lab_wire.sym} 1740 -1440 3 0 {name=p44 sig_type=std_logic lab=phi_dac_lower_buf}
C {devices/lab_wire.sym} 1580 -1440 3 0 {name=p45 sig_type=std_logic lab=dac_D0_lower_buf}
C {devices/lab_wire.sym} 1620 -1440 3 0 {name=p47 sig_type=std_logic lab=dac_D1_lower_buf}
C {devices/lab_wire.sym} 1660 -1440 3 0 {name=p49 sig_type=std_logic lab=dac_D2_lower_buf}
C {devices/lab_wire.sym} 1700 -1440 3 0 {name=p50 sig_type=std_logic lab=dac_D3_lower_buf}
C {devices/lab_wire.sym} 1740 -2040 3 1 {name=p51 sig_type=std_logic lab=phi_dac_upper_buf}
C {devices/lab_wire.sym} 1580 -2040 3 1 {name=p52 sig_type=std_logic lab=dac_D0_upper_buf}
C {devices/lab_wire.sym} 1620 -2040 3 1 {name=p53 sig_type=std_logic lab=dac_D1_upper_buf}
C {devices/lab_wire.sym} 1660 -2040 3 1 {name=p54 sig_type=std_logic lab=dac_D2_upper_buf}
C {devices/lab_wire.sym} 1700 -2040 3 1 {name=p55 sig_type=std_logic lab=dac_D3_upper_buf}
C {devices/lab_wire.sym} 1380 -720 0 0 {name=p20 sig_type=std_logic lab=phi_dac_lower}
C {devices/lab_wire.sym} 1380 -700 0 0 {name=p56 sig_type=std_logic lab=dac_D0_lower}
C {devices/lab_wire.sym} 1380 -680 0 0 {name=p57 sig_type=std_logic lab=dac_D1_lower}
C {devices/lab_wire.sym} 1380 -660 0 0 {name=p59 sig_type=std_logic lab=dac_D2_lower}
C {devices/lab_wire.sym} 1380 -640 0 0 {name=p60 sig_type=std_logic lab=dac_D3_lower}
C {devices/lab_wire.sym} 1380 -840 0 0 {name=p61 sig_type=std_logic lab=phi_dac_upper}
C {devices/lab_wire.sym} 1380 -820 0 0 {name=p62 sig_type=std_logic lab=dac_D0_upper}
C {devices/lab_wire.sym} 1380 -800 0 0 {name=p63 sig_type=std_logic lab=dac_D1_upper}
C {devices/lab_wire.sym} 1380 -780 0 0 {name=p64 sig_type=std_logic lab=dac_D2_upper}
C {devices/lab_wire.sym} 1380 -760 0 0 {name=p65 sig_type=std_logic lab=dac_D3_upper}
C {devices/lab_wire.sym} 1860 -840 0 1 {name=p66 sig_type=std_logic lab=phi_dac_upper_buf}
C {devices/lab_wire.sym} 1860 -820 0 1 {name=p69 sig_type=std_logic lab=dac_D0_upper_buf}
C {devices/lab_wire.sym} 1860 -800 0 1 {name=p70 sig_type=std_logic lab=dac_D1_upper_buf}
C {devices/lab_wire.sym} 1860 -780 0 1 {name=p71 sig_type=std_logic lab=dac_D2_upper_buf}
C {devices/lab_wire.sym} 1860 -760 0 1 {name=p72 sig_type=std_logic lab=dac_D3_upper_buf}
C {devices/lab_wire.sym} 1860 -720 0 1 {name=p74 sig_type=std_logic lab=phi_dac_lower_buf}
C {devices/lab_wire.sym} 1860 -700 0 1 {name=p75 sig_type=std_logic lab=dac_D0_lower_buf}
C {devices/lab_wire.sym} 1860 -680 0 1 {name=p76 sig_type=std_logic lab=dac_D1_lower_buf}
C {devices/lab_wire.sym} 1860 -660 0 1 {name=p77 sig_type=std_logic lab=dac_D2_lower_buf}
C {devices/lab_wire.sym} 1860 -640 0 1 {name=p78 sig_type=std_logic lab=dac_D3_lower_buf}
C {top_level/auxiliary/esd_protection.sym} 280 -1860 0 0 {name=x8}
C {devices/lab_pin.sym} 280 -1760 0 0 {name=p81 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -1960 0 0 {name=p82 lab=VDD_AMP}
C {top_level/auxiliary/esd_protection.sym} 280 -1620 0 0 {name=x9}
C {devices/lab_pin.sym} 280 -1520 0 0 {name=p84 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -1720 0 0 {name=p85 lab=VDD_AMP}
C {top_level/auxiliary/buffers.sym} 1620 -620 0 0 {name=x10}
C {devices/lab_pin.sym} 1620 -1000 0 0 {name=p83 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1620 -240 0 0 {name=p86 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1380 -420 0 0 {name=p87 sig_type=std_logic lab=en_cap_1}
C {devices/lab_wire.sym} 1380 -400 0 0 {name=p88 sig_type=std_logic lab=en_cap_2}
C {top_level/auxiliary/esd_protection.sym} 280 -2100 0 0 {name=x11}
C {devices/lab_pin.sym} 280 -2000 0 0 {name=p89 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -2200 0 0 {name=p90 lab=VDD_AMP}
C {top_level/auxiliary/esd_protection.sym} 280 -1380 0 0 {name=x12}
C {devices/lab_pin.sym} 280 -1280 0 0 {name=p91 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -1480 0 0 {name=p92 lab=VDD_AMP}
C {lab_wire.sym} 2960 -1500 0 1 {name=p30 sig_type=std_logic lab=spike}
C {opin.sym} 1880 -1960 1 1 {name=p93 lab=vdac_uppern}
C {opin.sym} 1880 -1520 3 1 {name=p94 lab=vdac_lowerp}
