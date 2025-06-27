v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Level-Up Shifter @ Outputs} 860 -1730 0 0 1 1 {}
N 1180 -1220 1180 -1200 {lab=VSS}
N 1140 -1400 1140 -1380 {lab=VDD_DIG}
N 1220 -1400 1220 -1380 {lab=VDD_IO}
N 1260 -1300 1280 -1300 {lab=do_uart_tx}
N 1080 -1300 1100 -1300 {lab=di_uart_tx}
N 1180 -960 1180 -940 {lab=VSS}
N 1140 -1140 1140 -1120 {lab=VDD_DIG}
N 1220 -1140 1220 -1120 {lab=VDD_IO}
N 1260 -1040 1280 -1040 {lab=do_idle_led}
N 1080 -1040 1100 -1040 {lab=di_idle_led}
N 1180 -700 1180 -680 {lab=VSS}
N 1140 -880 1140 -860 {lab=VDD_DIG}
N 1220 -880 1220 -860 {lab=VDD_IO}
N 1260 -780 1280 -780 {lab=do_overflow_led}
N 1080 -780 1100 -780 {lab=di_overflow_led}
N 1180 -440 1180 -420 {lab=VSS}
N 1140 -620 1140 -600 {lab=VDD_DIG}
N 1220 -620 1220 -600 {lab=VDD_IO}
N 1260 -520 1280 -520 {lab=do_underflow_led}
N 1080 -520 1100 -520 {lab=underflow_led}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {opin.sym} 1280 -1300 0 0 {name=p15 lab=do_uart_tx}
C {opin.sym} 1280 -1040 0 0 {name=p27 lab=do_idle_led}
C {opin.sym} 1280 -780 0 0 {name=p28 lab=do_overflow_led}
C {opin.sym} 1280 -520 0 0 {name=p29 lab=do_underflow_led}
C {level_shifter/level_up_shifter.sym} 1180 -1300 0 0 {name=x8 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=10.0u L_N_HV=0.50u W_P_LV=1.0u L_P_LV=0.13u W_N_LV=1.0u L_N_LV=0.13u}
C {devices/iopin.sym} 1180 -1200 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1220 -1400 2 1 {name=p40 sig_type=std_logic lab=VDD_IO}
C {devices/iopin.sym} 1140 -1400 0 1 {name=p41 sig_type=std_logic lab=VDD_DIG}
C {level_shifter/level_up_shifter.sym} 1180 -1040 0 0 {name=x9 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=10.0u L_N_HV=0.50u W_P_LV=1.0u L_P_LV=0.13u W_N_LV=1.0u L_N_LV=0.13u}
C {devices/lab_pin.sym} 1180 -940 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1220 -1140 2 0 {name=p43 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 1140 -1140 0 0 {name=p44 sig_type=std_logic lab=VDD_DIG}
C {level_shifter/level_up_shifter.sym} 1180 -780 0 0 {name=x28 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=10.0u L_N_HV=0.50u W_P_LV=1.0u L_P_LV=0.13u W_N_LV=1.0u L_N_LV=0.13u}
C {devices/lab_pin.sym} 1180 -680 0 0 {name=p96 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1220 -880 2 0 {name=p97 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 1140 -880 0 0 {name=p98 sig_type=std_logic lab=VDD_DIG}
C {level_shifter/level_up_shifter.sym} 1180 -520 0 0 {name=x29 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=10.0u L_N_HV=0.50u W_P_LV=1.0u L_P_LV=0.13u W_N_LV=1.0u L_N_LV=0.13u}
C {devices/lab_pin.sym} 1180 -420 0 0 {name=p99 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1220 -620 2 0 {name=p100 sig_type=std_logic lab=VDD_IO}
C {devices/lab_pin.sym} 1140 -620 0 0 {name=p101 sig_type=std_logic lab=VDD_DIG}
C {ipin.sym} 1080 -1040 0 0 {name=p107 sig_type=std_logic lab=di_idle_led}
C {ipin.sym} 1080 -780 0 0 {name=p108 sig_type=std_logic lab=di_overflow_led}
C {ipin.sym} 1080 -520 0 0 {name=p109 sig_type=std_logic lab=di_underflow_led}
C {ipin.sym} 1080 -1300 0 0 {name=p1 sig_type=std_logic lab=di_uart_tx}
