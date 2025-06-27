v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 180 -1520 720 -1520 720 -640 180 -640 180 -1520 {dash = 8}
P 4 5 760 -1520 1300 -1520 1300 -640 760 -640 760 -1520 {dash = 8}
P 4 5 1340 -1520 2320 -1520 2320 -640 1340 -640 1340 -1520 {dash = 8}
P 4 5 180 -560 840 -560 840 -220 180 -220 180 -560 {dash = 8}
P 4 5 880 -560 1320 -560 1320 -400 880 -400 880 -560 {dash = 8}
P 4 5 1360 -560 1820 -560 1820 -400 1360 -400 1360 -560 {dash = 8}
T {Buffers for Digital Core signals} 910 -1725 0 0 1 1 {}
T {Buffers for Upper C-DAC} 180 -1560 0 0 0.5 0.5 {}
T {Buffers for Lower C-DAC} 760 -1560 0 0 0.5 0.5 {}
T {Buffers for Bio-Signal Amplifier} 1340 -1560 0 0 0.5 0.5 {}
T {Buffers for Vcm-Generator} 180 -570 2 1 0.5 0.5 {}
T {Buffers for SPDT} 880 -570 2 1 0.5 0.5 {}
T {Buffers for Comparator} 1360 -570 2 1 0.5 0.5 {}
N 440 -1140 440 -1120 {lab=VDD_DIG}
N 440 -1040 440 -1020 {lab=VSS}
N 500 -1080 520 -1080 {lab=do_dac_D1_upper}
N 360 -1080 380 -1080 {lab=di_dac_D1_upper}
N 440 -960 440 -940 {lab=VDD_DIG}
N 440 -860 440 -840 {lab=VSS}
N 500 -900 520 -900 {lab=do_dac_D2_upper}
N 360 -900 380 -900 {lab=di_dac_D2_upper}
N 440 -1500 440 -1480 {lab=VDD_DIG}
N 440 -1400 440 -1380 {lab=VSS}
N 500 -1440 520 -1440 {lab=do_phi_dac_upper}
N 360 -1440 380 -1440 {lab=di_phi_dac_upper}
N 440 -1320 440 -1300 {lab=VDD_DIG}
N 440 -1220 440 -1200 {lab=VSS}
N 500 -1260 520 -1260 {lab=do_dac_D0_upper}
N 360 -1260 380 -1260 {lab=di_dac_D0_upper}
N 440 -780 440 -760 {lab=VDD_DIG}
N 440 -680 440 -660 {lab=VSS}
N 500 -720 520 -720 {lab=do_dac_D3_upper}
N 360 -720 380 -720 {lab=di_dac_D3_upper}
N 1020 -1140 1020 -1120 {lab=VDD_DIG}
N 1020 -1040 1020 -1020 {lab=VSS}
N 1080 -1080 1100 -1080 {lab=do_dac_D1_lower}
N 940 -1080 960 -1080 {lab=di_dac_D1_lower}
N 1020 -960 1020 -940 {lab=VDD_DIG}
N 1020 -860 1020 -840 {lab=VSS}
N 1080 -900 1100 -900 {lab=do_dac_D2_lower}
N 940 -900 960 -900 {lab=di_dac_D2_lower}
N 1020 -1500 1020 -1480 {lab=VDD_DIG}
N 1020 -1400 1020 -1380 {lab=VSS}
N 1080 -1440 1100 -1440 {lab=do_phi_dac_lower}
N 940 -1440 960 -1440 {lab=di_phi_dac_lower}
N 1020 -1320 1020 -1300 {lab=VDD_DIG}
N 1020 -1220 1020 -1200 {lab=VSS}
N 1080 -1260 1100 -1260 {lab=do_dac_D0_lower}
N 940 -1260 960 -1260 {lab=di_dac_D0_lower}
N 1020 -780 1020 -760 {lab=VDD_DIG}
N 1020 -680 1020 -660 {lab=VSS}
N 1080 -720 1100 -720 {lab=do_dac_D3_lower}
N 940 -720 960 -720 {lab=di_dac_D3_lower}
N 500 -540 500 -520 {lab=VDD_DIG}
N 500 -440 500 -420 {lab=VSS}
N 560 -480 580 -480 {lab=do_phi_vcm_generator_1}
N 420 -480 440 -480 {lab=di_phi_vcm_generator_1}
N 500 -360 500 -340 {lab=VDD_DIG}
N 500 -260 500 -240 {lab=VSS}
N 560 -300 580 -300 {lab=do_phi_vcm_generator_2}
N 420 -300 440 -300 {lab=di_phi_vcm_generator_2}
N 1580 -1500 1580 -1480 {lab=VDD_DIG}
N 1580 -1400 1580 -1380 {lab=VSS}
N 1640 -1440 1660 -1440 {lab=do_phi_cmfb_1}
N 1500 -1440 1520 -1440 {lab=di_phi_cmfb_1}
N 1580 -1320 1580 -1300 {lab=VDD_DIG}
N 1580 -1220 1580 -1200 {lab=VSS}
N 1640 -1260 1660 -1260 {lab=do_phi_cmfb_2}
N 1500 -1260 1520 -1260 {lab=di_phi_cmfb_2}
N 1580 -540 1580 -520 {lab=VDD_DIG}
N 1580 -440 1580 -420 {lab=VSS}
N 1640 -480 1660 -480 {lab=do_phi_comp}
N 1500 -480 1520 -480 {lab=di_phi_comp}
N 2080 -1500 2080 -1480 {lab=VDD_DIG}
N 2080 -1400 2080 -1380 {lab=VSS}
N 2140 -1440 2160 -1440 {lab=do_phi_bias_1}
N 2000 -1440 2020 -1440 {lab=di_phi_bias_1}
N 1580 -960 1580 -940 {lab=VDD_DIG}
N 1580 -860 1580 -840 {lab=VSS}
N 1640 -900 1660 -900 {lab=do_en_cap_2}
N 1500 -900 1520 -900 {lab=di_en_cap_2}
N 1580 -1140 1580 -1120 {lab=VDD_DIG}
N 1580 -1040 1580 -1020 {lab=VSS}
N 1640 -1080 1660 -1080 {lab=do_en_cap_1}
N 1500 -1080 1520 -1080 {lab=di_en_cap_1}
N 1100 -540 1100 -520 {lab=VDD_DIG}
N 1100 -440 1100 -420 {lab=VSS}
N 1160 -480 1180 -480 {lab=do_spdt_ctrl}
N 1020 -480 1040 -480 {lab=di_spdt_ctrl}
N 2080 -1320 2080 -1300 {lab=VDD_DIG}
N 2080 -1220 2080 -1200 {lab=VSS}
N 2140 -1260 2160 -1260 {lab=do_phi_bias_2}
N 2000 -1260 2020 -1260 {lab=di_phi_bias_2}
N 2080 -1140 2080 -1120 {lab=VDD_DIG}
N 2080 -1040 2080 -1020 {lab=VSS}
N 2140 -1080 2160 -1080 {lab=do_phi_R_1}
N 2000 -1080 2020 -1080 {lab=di_phi_R_1}
N 2080 -960 2080 -940 {lab=VDD_DIG}
N 2080 -860 2080 -840 {lab=VSS}
N 2140 -900 2160 -900 {lab=do_phi_R_2}
N 2000 -900 2020 -900 {lab=di_phi_R_2}
N 1580 -800 1580 -780 {lab=VDD_DIG}
N 1580 -700 1580 -680 {lab=VSS}
N 1640 -740 1660 -740 {lab=do_en_cap_3}
N 1500 -740 1520 -740 {lab=di_en_cap_3}
N 2080 -800 2080 -780 {lab=VDD_DIG}
N 2080 -700 2080 -680 {lab=VSS}
N 2140 -740 2160 -740 {lab=do_en_cap_2}
N 2000 -740 2020 -740 {lab=di_bio_amp_en}
C {buffer/buffer_lv.sym} 440 -1080 0 0 {name=x3 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 440 -1140 2 0 {name=p231 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 440 -1020 2 0 {name=p232 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 440 -900 0 0 {name=x4 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 440 -960 2 0 {name=p234 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 440 -840 2 0 {name=p235 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 440 -1440 0 0 {name=x1 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/iopin.sym} 440 -1500 2 1 {name=p224 sig_type=std_logic lab=VDD_DIG}
C {devices/iopin.sym} 440 -1380 2 1 {name=p225 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 440 -1260 0 0 {name=x2 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 440 -1320 2 0 {name=p228 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 440 -1200 2 0 {name=p229 sig_type=std_logic lab=VSS}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {buffer/buffer_lv.sym} 440 -720 0 0 {name=x5 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 440 -780 2 0 {name=p2 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 440 -660 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 360 -1440 0 0 {name=p61 sig_type=std_logic lab=di_phi_dac_upper}
C {devices/ipin.sym} 360 -1260 0 0 {name=p62 sig_type=std_logic lab=di_dac_D0_upper}
C {devices/ipin.sym} 360 -1080 0 0 {name=p63 sig_type=std_logic lab=di_dac_D1_upper}
C {devices/ipin.sym} 360 -900 0 0 {name=p64 sig_type=std_logic lab=di_dac_D2_upper}
C {devices/ipin.sym} 360 -720 0 0 {name=p65 sig_type=std_logic lab=di_dac_D3_upper}
C {devices/opin.sym} 520 -1440 0 0 {name=p66 sig_type=std_logic lab=do_phi_dac_upper}
C {devices/opin.sym} 520 -1260 0 0 {name=p69 sig_type=std_logic lab=do_dac_D0_upper}
C {devices/opin.sym} 520 -1080 0 0 {name=p70 sig_type=std_logic lab=do_dac_D1_upper}
C {devices/opin.sym} 520 -900 0 0 {name=p71 sig_type=std_logic lab=do_dac_D2_upper}
C {devices/opin.sym} 520 -720 0 0 {name=p72 sig_type=std_logic lab=do_dac_D3_upper}
C {buffer/buffer_lv.sym} 1020 -1080 0 0 {name=x6 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1020 -1140 2 0 {name=p5 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1020 -1020 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1020 -900 0 0 {name=x7 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1020 -960 2 0 {name=p7 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1020 -840 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1020 -1440 0 0 {name=x8 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1020 -1500 2 0 {name=p9 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1020 -1380 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1020 -1260 0 0 {name=x9 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1020 -1320 2 0 {name=p11 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1020 -1200 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1020 -720 0 0 {name=x10 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1020 -780 2 0 {name=p13 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1020 -660 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 940 -1440 0 0 {name=p15 sig_type=std_logic lab=di_phi_dac_lower}
C {devices/ipin.sym} 940 -1260 0 0 {name=p16 sig_type=std_logic lab=di_dac_D0_lower}
C {devices/ipin.sym} 940 -1080 0 0 {name=p17 sig_type=std_logic lab=di_dac_D1_lower}
C {devices/ipin.sym} 940 -900 0 0 {name=p18 sig_type=std_logic lab=di_dac_D2_lower}
C {devices/ipin.sym} 940 -720 0 0 {name=p19 sig_type=std_logic lab=di_dac_D3_lower}
C {devices/opin.sym} 1100 -1440 0 0 {name=p21 sig_type=std_logic lab=do_phi_dac_lower}
C {devices/opin.sym} 1100 -1260 0 0 {name=p22 sig_type=std_logic lab=do_dac_D0_lower}
C {devices/opin.sym} 1100 -1080 0 0 {name=p23 sig_type=std_logic lab=do_dac_D1_lower}
C {devices/opin.sym} 1100 -900 0 0 {name=p24 sig_type=std_logic lab=do_dac_D2_lower}
C {devices/opin.sym} 1100 -720 0 0 {name=p25 sig_type=std_logic lab=do_dac_D3_lower}
C {buffer/buffer_lv.sym} 500 -480 0 0 {name=x11 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 500 -540 2 0 {name=p20 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 500 -420 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 420 -480 0 0 {name=p27 sig_type=std_logic lab=di_phi_vcm_generator_1}
C {devices/opin.sym} 580 -480 0 0 {name=p28 sig_type=std_logic lab=do_phi_vcm_generator_1}
C {buffer/buffer_lv.sym} 500 -300 0 0 {name=x12 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 500 -360 2 0 {name=p29 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 500 -240 2 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 420 -300 0 0 {name=p31 sig_type=std_logic lab=di_phi_vcm_generator_2}
C {devices/opin.sym} 580 -300 0 0 {name=p32 sig_type=std_logic lab=do_phi_vcm_generator_2}
C {buffer/buffer_lv.sym} 1580 -1440 0 0 {name=x13 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1580 -1500 2 0 {name=p33 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1580 -1380 2 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1500 -1440 0 0 {name=p35 sig_type=std_logic lab=di_phi_cmfb_1}
C {devices/opin.sym} 1660 -1440 0 0 {name=p36 sig_type=std_logic lab=do_phi_cmfb_1}
C {buffer/buffer_lv.sym} 1580 -1260 0 0 {name=x14 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1580 -1320 2 0 {name=p37 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1580 -1200 2 0 {name=p38 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1500 -1260 0 0 {name=p39 sig_type=std_logic lab=di_phi_cmfb_2}
C {devices/opin.sym} 1660 -1260 0 0 {name=p40 sig_type=std_logic lab=do_phi_cmfb_2}
C {buffer/buffer_lv.sym} 1580 -480 0 0 {name=x15 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1580 -540 2 0 {name=p41 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1580 -420 2 0 {name=p42 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1500 -480 0 0 {name=p43 sig_type=std_logic lab=di_phi_comp}
C {devices/opin.sym} 1660 -480 0 0 {name=p44 sig_type=std_logic lab=do_phi_comp}
C {buffer/buffer_lv.sym} 2080 -1440 0 0 {name=x16 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 2080 -1500 2 0 {name=p45 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 2080 -1380 2 0 {name=p46 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 2000 -1440 0 0 {name=p47 sig_type=std_logic lab=di_phi_bias_1}
C {devices/opin.sym} 2160 -1440 0 0 {name=p48 sig_type=std_logic lab=do_phi_bias_1}
C {buffer/buffer_lv.sym} 1580 -900 0 0 {name=x17 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1580 -960 2 0 {name=p1 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1580 -840 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1500 -900 0 0 {name=p49 sig_type=std_logic lab=di_en_cap_2}
C {devices/opin.sym} 1660 -900 0 0 {name=p50 sig_type=std_logic lab=do_en_cap_2}
C {buffer/buffer_lv.sym} 1580 -1080 0 0 {name=x18 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1580 -1140 2 0 {name=p51 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1580 -1020 2 0 {name=p52 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1500 -1080 0 0 {name=p53 sig_type=std_logic lab=di_en_cap_1}
C {devices/opin.sym} 1660 -1080 0 0 {name=p54 sig_type=std_logic lab=do_en_cap_1}
C {buffer/buffer_lv.sym} 1100 -480 0 0 {name=x19 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1100 -540 2 0 {name=p55 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1100 -420 2 0 {name=p56 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1020 -480 0 0 {name=p57 sig_type=std_logic lab=di_spdt_ctrl}
C {devices/opin.sym} 1180 -480 0 0 {name=p58 sig_type=std_logic lab=do_spdt_ctrl}
C {buffer/buffer_lv.sym} 2080 -1260 0 0 {name=x20 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 2080 -1320 2 0 {name=p59 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 2080 -1200 2 0 {name=p60 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 2000 -1260 0 0 {name=p67 sig_type=std_logic lab=di_phi_bias_2}
C {devices/opin.sym} 2160 -1260 0 0 {name=p68 sig_type=std_logic lab=do_phi_bias_2}
C {buffer/buffer_lv.sym} 2080 -1080 0 0 {name=x21 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 2080 -1140 2 0 {name=p73 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 2080 -1020 2 0 {name=p74 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 2000 -1080 0 0 {name=p75 sig_type=std_logic lab=di_phi_R_1}
C {devices/opin.sym} 2160 -1080 0 0 {name=p76 sig_type=std_logic lab=do_phi_R_1}
C {buffer/buffer_lv.sym} 2080 -900 0 0 {name=x22 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 2080 -960 2 0 {name=p77 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 2080 -840 2 0 {name=p78 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 2000 -900 0 0 {name=p79 sig_type=std_logic lab=di_phi_R_2}
C {devices/opin.sym} 2160 -900 0 0 {name=p80 sig_type=std_logic lab=do_phi_R_2}
C {buffer/buffer_lv.sym} 1580 -740 0 0 {name=x23 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1580 -800 2 0 {name=p81 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 1580 -680 2 0 {name=p82 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1500 -740 0 0 {name=p83 sig_type=std_logic lab=di_en_cap_3}
C {devices/opin.sym} 1660 -740 0 0 {name=p84 sig_type=std_logic lab=do_en_cap_3}
C {buffer/buffer_lv.sym} 2080 -740 0 0 {name=x24 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 2080 -800 2 0 {name=p85 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 2080 -680 2 0 {name=p86 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 2000 -740 0 0 {name=p87 sig_type=std_logic lab=di_bio_amp_en}
C {devices/opin.sym} 2160 -740 0 0 {name=p88 sig_type=std_logic lab=do_bio_amp_en}
