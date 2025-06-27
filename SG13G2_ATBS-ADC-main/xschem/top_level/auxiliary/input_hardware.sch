v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 1220 -1640 1220 -200 {dash = 16}
T {Schmitt Trigger + Level-Down Shifter @ Inputs} 680 -1735 0 0 1 1 {}
N 900 -1440 920 -1440 {lab=do_clock}
N 320 -1440 340 -1440 {lab=di_clock}
N 780 -1540 780 -1520 {lab=VDD_IO}
N 420 -1540 420 -1520 {lab=VDD_IO}
N 420 -1360 420 -1340 {lab=VSS}
N 820 -1360 820 -1340 {lab=VSS}
N 860 -1540 860 -1520 {lab=VDD_DIG}
N 900 -1180 920 -1180 {lab=do_reset_n}
N 320 -1180 340 -1180 {lab=di_reset_n}
N 780 -1280 780 -1260 {lab=VDD_IO}
N 420 -1280 420 -1260 {lab=VDD_IO}
N 420 -1100 420 -1080 {lab=VSS}
N 820 -1100 820 -1080 {lab=VSS}
N 860 -1280 860 -1260 {lab=VDD_DIG}
N 900 -920 920 -920 {lab=do_trigger_start_sampling}
N 320 -920 340 -920 {lab=di_trigger_start_sampling}
N 780 -1020 780 -1000 {lab=VDD_IO}
N 420 -1020 420 -1000 {lab=VDD_IO}
N 420 -840 420 -820 {lab=VSS}
N 820 -840 820 -820 {lab=VSS}
N 860 -1020 860 -1000 {lab=VDD_DIG}
N 900 -660 920 -660 {lab=do_trigger_start_mode}
N 320 -660 340 -660 {lab=di_trigger_start_mode}
N 780 -760 780 -740 {lab=VDD_IO}
N 420 -760 420 -740 {lab=VDD_IO}
N 420 -580 420 -560 {lab=VSS}
N 820 -580 820 -560 {lab=VSS}
N 860 -760 860 -740 {lab=VDD_DIG}
N 900 -400 920 -400 {lab=do_adaptive_mode}
N 320 -400 340 -400 {lab=di_adaptive_mode}
N 780 -500 780 -480 {lab=VDD_IO}
N 420 -500 420 -480 {lab=VDD_IO}
N 420 -320 420 -300 {lab=VSS}
N 820 -320 820 -300 {lab=VSS}
N 860 -500 860 -480 {lab=VDD_DIG}
N 2120 -1440 2140 -1440 {lab=do_control_mode}
N 1540 -1440 1560 -1440 {lab=di_control_mode}
N 2000 -1540 2000 -1520 {lab=VDD_IO}
N 1640 -1540 1640 -1520 {lab=VDD_IO}
N 1640 -1360 1640 -1340 {lab=VSS}
N 2040 -1360 2040 -1340 {lab=VSS}
N 2080 -1540 2080 -1520 {lab=VDD_DIG}
N 2120 -1180 2140 -1180 {lab=do_signal_select_in}
N 1540 -1180 1560 -1180 {lab=di_signal_select_in}
N 2000 -1280 2000 -1260 {lab=VDD_IO}
N 1640 -1280 1640 -1260 {lab=VDD_IO}
N 1640 -1100 1640 -1080 {lab=VSS}
N 2040 -1100 2040 -1080 {lab=VSS}
N 2080 -1280 2080 -1260 {lab=VDD_DIG}
N 2120 -920 2140 -920 {lab=do_enable}
N 1540 -920 1560 -920 {lab=di_enable}
N 2000 -1020 2000 -1000 {lab=VDD_IO}
N 1640 -1020 1640 -1000 {lab=VDD_IO}
N 1640 -840 1640 -820 {lab=VSS}
N 2040 -840 2040 -820 {lab=VSS}
N 2080 -1020 2080 -1000 {lab=VDD_DIG}
N 2120 -660 2140 -660 {lab=do_select_tbs_delta_steps}
N 1540 -660 1560 -660 {lab=di_select_tbs_delta_steps}
N 2000 -760 2000 -740 {lab=VDD_IO}
N 1640 -760 1640 -740 {lab=VDD_IO}
N 1640 -580 1640 -560 {lab=VSS}
N 2040 -580 2040 -560 {lab=VSS}
N 2080 -760 2080 -740 {lab=VDD_DIG}
N 2120 -400 2140 -400 {lab=do_uart_rx}
N 1540 -400 1560 -400 {lab=di_uart_rx}
N 2000 -500 2000 -480 {lab=VDD_IO}
N 1640 -500 1640 -480 {lab=VDD_IO}
N 1640 -320 1640 -300 {lab=VSS}
N 2040 -320 2040 -300 {lab=VSS}
N 2080 -500 2080 -480 {lab=VDD_DIG}
N 500 -400 740 -400 {lab=#net1}
N 500 -1440 740 -1440 {lab=#net2}
N 500 -1180 740 -1180 {lab=#net3}
N 500 -920 740 -920 {lab=#net4}
N 500 -660 740 -660 {lab=#net5}
N 1720 -1440 1960 -1440 {lab=#net6}
N 1720 -1180 1960 -1180 {lab=#net7}
N 1720 -920 1960 -920 {lab=#net8}
N 1720 -660 1960 -660 {lab=#net9}
N 1720 -400 1960 -400 {lab=#net10}
C {devices/ipin.sym} 320 -1440 2 1 {name=p21 lab=di_clock}
C {devices/ipin.sym} 320 -1180 0 0 {name=p22 lab=di_reset_n}
C {devices/ipin.sym} 1540 -400 2 1 {name=p4 lab=di_uart_rx}
C {ipin.sym} 320 -920 2 1 {name=p16 lab=di_trigger_start_sampling}
C {ipin.sym} 320 -660 2 1 {name=p17 lab=di_trigger_start_mode}
C {ipin.sym} 320 -400 2 1 {name=p18 lab=di_adaptive_mode}
C {ipin.sym} 1540 -1440 2 1 {name=p23 lab=di_control_mode}
C {ipin.sym} 1540 -1180 2 1 {name=p24 lab=di_signal_select_in}
C {ipin.sym} 1540 -920 2 1 {name=p25 lab=di_enable}
C {ipin.sym} 1540 -660 2 1 {name=p26 lab=di_select_tbs_delta_steps}
C {schmitt_trigger/schmitt_trigger.sym} 420 -1440 0 0 {name=x6 W_P_ST=3.0u L_P_ST=0.50u W_N_ST=1.0u L_N_ST=0.50u R=4}
C {level_shifter/level_down_shifter.sym} 820 -1440 0 0 {name=x7 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
C {opin.sym} 920 -1440 0 0 {name=p14 sig_type=std_logic lab=do_clock}
C {devices/iopin.sym} 420 -1540 2 0 {name=p31 lab=VDD_IO}
C {devices/lab_pin.sym} 820 -1340 2 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 780 -1540 0 0 {name=p36 sig_type=std_logic lab=VDD_IO}
C {devices/iopin.sym} 860 -1540 2 1 {name=p37 sig_type=std_logic lab=VDD_DIG}
C {schmitt_trigger/schmitt_trigger.sym} 420 -1180 0 0 {name=x10 W_P_ST=3.0u L_P_ST=0.50u W_N_ST=1.0u L_N_ST=0.50u R=4}
C {level_shifter/level_down_shifter.sym} 820 -1180 0 0 {name=x11 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
C {devices/lab_pin.sym} 420 -1080 0 0 {name=p47 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 -1080 2 0 {name=p49 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -1280 0 0 {name=p50 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 860 -1280 2 0 {name=p51 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 780 -1280 0 0 {name=p45 sig_type=std_logic lab=VDD_IO}
C {schmitt_trigger/schmitt_trigger.sym} 420 -920 0 0 {name=x12 W_P_ST=3.0u L_P_ST=0.50u W_N_ST=1.0u L_N_ST=0.50u R=4}
C {level_shifter/level_down_shifter.sym} 820 -920 0 0 {name=x13 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
C {opin.sym} 920 -920 2 1 {name=p48 sig_type=std_logic lab=do_trigger_start_sampling}
C {devices/lab_pin.sym} 420 -820 0 0 {name=p52 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 -820 2 0 {name=p54 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 780 -1020 0 0 {name=p55 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 860 -1020 2 0 {name=p56 sig_type=std_logic lab=VDD_DIG}
C {schmitt_trigger/schmitt_trigger.sym} 420 -660 0 0 {name=x14 W_P_ST=3.0u L_P_ST=0.50u W_N_ST=1.0u L_N_ST=0.50u R=4}
C {level_shifter/level_down_shifter.sym} 820 -660 0 0 {name=x15 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
C {devices/lab_pin.sym} 420 -560 0 0 {name=p57 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 -560 2 0 {name=p58 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -760 0 0 {name=p59 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 860 -760 2 0 {name=p60 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 780 -760 0 0 {name=p61 sig_type=std_logic lab=VDD_IO}
C {schmitt_trigger/schmitt_trigger.sym} 420 -400 0 0 {name=x16 W_P_ST=3.0u L_P_ST=0.50u W_N_ST=1.0u L_N_ST=0.50u R=4}
C {level_shifter/level_down_shifter.sym} 820 -400 0 0 {name=x17 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
C {devices/lab_pin.sym} 420 -300 0 0 {name=p62 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 -300 2 0 {name=p63 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -500 0 0 {name=p64 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 860 -500 2 0 {name=p65 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 780 -500 0 0 {name=p66 sig_type=std_logic lab=VDD_IO}
C {schmitt_trigger/schmitt_trigger.sym} 1640 -1440 0 0 {name=x18 W_P_ST=3.0u L_P_ST=0.50u W_N_ST=1.0u L_N_ST=0.50u R=4}
C {level_shifter/level_down_shifter.sym} 2040 -1440 0 0 {name=x19 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
C {opin.sym} 2140 -1440 2 1 {name=p68 sig_type=std_logic lab=do_control_mode}
C {devices/lab_pin.sym} 1640 -1340 0 0 {name=p69 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2040 -1340 2 0 {name=p71 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2000 -1540 0 0 {name=p72 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 2080 -1540 2 0 {name=p73 sig_type=std_logic lab=VDD_DIG}
C {schmitt_trigger/schmitt_trigger.sym} 1640 -1180 0 0 {name=x20 W_P_ST=3.0u L_P_ST=0.50u W_N_ST=1.0u L_N_ST=0.50u R=4}
C {level_shifter/level_down_shifter.sym} 2040 -1180 0 0 {name=x21 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
C {devices/lab_pin.sym} 1640 -1080 0 0 {name=p74 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2040 -1080 2 0 {name=p75 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1640 -1280 0 0 {name=p76 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 2080 -1280 2 0 {name=p77 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 2000 -1280 0 0 {name=p78 sig_type=std_logic lab=VDD_IO}
C {schmitt_trigger/schmitt_trigger.sym} 1640 -920 0 0 {name=x22 W_P_ST=3.0u L_P_ST=0.50u W_N_ST=1.0u L_N_ST=0.50u R=4}
C {level_shifter/level_down_shifter.sym} 2040 -920 0 0 {name=x23 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
C {opin.sym} 2140 -920 2 1 {name=p80 sig_type=std_logic lab=do_enable}
C {devices/lab_pin.sym} 1640 -820 0 0 {name=p81 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2040 -820 2 0 {name=p83 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2000 -1020 0 0 {name=p84 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 2080 -1020 2 0 {name=p85 sig_type=std_logic lab=VDD_DIG}
C {schmitt_trigger/schmitt_trigger.sym} 1640 -660 0 0 {name=x24 W_P_ST=3.0u L_P_ST=0.50u W_N_ST=1.0u L_N_ST=0.50u R=4}
C {level_shifter/level_down_shifter.sym} 2040 -660 0 0 {name=x25 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
C {devices/lab_pin.sym} 1640 -560 0 0 {name=p86 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2040 -560 2 0 {name=p87 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1640 -760 0 0 {name=p88 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 2080 -760 2 0 {name=p89 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 2000 -760 0 0 {name=p90 sig_type=std_logic lab=VDD_IO}
C {schmitt_trigger/schmitt_trigger.sym} 1640 -400 0 0 {name=x26 W_P_ST=3.0u L_P_ST=0.50u W_N_ST=1.0u L_N_ST=0.50u R=4}
C {level_shifter/level_down_shifter.sym} 2040 -400 0 0 {name=x27 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
C {devices/lab_pin.sym} 1640 -300 0 0 {name=p91 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2040 -300 2 0 {name=p92 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1640 -500 0 0 {name=p93 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 2080 -500 2 0 {name=p94 sig_type=std_logic lab=VDD_DIG}
C {devices/lab_pin.sym} 2000 -500 0 0 {name=p95 sig_type=std_logic lab=VDD_IO}
C {opin.sym} 920 -1180 0 0 {name=p46 sig_type=std_logic lab=do_reset_n}
C {opin.sym} 920 -660 2 1 {name=p67 sig_type=std_logic lab=do_trigger_start_mode}
C {opin.sym} 920 -400 2 1 {name=p79 sig_type=std_logic lab=do_adaptive_mode}
C {opin.sym} 2140 -1180 2 1 {name=p110 sig_type=std_logic lab=do_signal_select_in}
C {opin.sym} 2140 -660 2 1 {name=p111 sig_type=std_logic lab=do_select_tbs_delta_steps}
C {opin.sym} 2140 -400 2 1 {name=p112 sig_type=std_logic lab=do_uart_rx}
C {devices/lab_pin.sym} 1640 -1540 0 0 {name=p70 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 1640 -1020 0 0 {name=p82 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 420 -1020 0 0 {name=p53 sig_type=std_logic lab=VDD_IO}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 420 -1340 2 0 {name=p1 lab=VSS}
