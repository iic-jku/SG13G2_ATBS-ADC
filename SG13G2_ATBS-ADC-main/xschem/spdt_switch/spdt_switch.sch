v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Single Pole, Double Throw (SPDT) Switch with two TG} 590 -1660 0 0 1 1 {}
T {di_spdt_ctrl = 1, di_spdt_ctrl_n = 0: v_c connected to v_a, v_b = HIGH-Z
di_spdt_ctrl = 0, di_spdt_ctrl_n = 1: v_c connected to v_b, v_a = HIGH-Z} 900 -1360 0 0 0.4 0.4 {}
N 1280 -720 1280 -620 {
lab=v_c}
N 1460 -740 1460 -660 {
lab=VDD}
N 1500 -740 1500 -700 {
lab=di_spdt_ctrl_n}
N 880 -620 1000 -620 {
lab=v_a}
N 1160 -620 1280 -620 {
lab=v_c}
N 1560 -620 1680 -620 {
lab=v_b}
N 1480 -540 1500 -540 {
lab=di_spdt_ctrl}
N 1500 -540 1500 -500 {
lab=di_spdt_ctrl}
N 1480 -700 1480 -660 {
lab=di_spdt_ctrl_n}
N 1480 -700 1500 -700 {
lab=di_spdt_ctrl_n}
N 1480 -580 1480 -540 {
lab=di_spdt_ctrl}
N 1460 -580 1460 -500 {
lab=VSS}
N 1280 -620 1400 -620 {
lab=v_c}
N 1060 -740 1060 -660 {
lab=VDD}
N 1060 -580 1060 -500 {
lab=VSS}
N 1080 -700 1080 -660 {
lab=di_spdt_ctrl}
N 1080 -700 1100 -700 {
lab=di_spdt_ctrl}
N 1100 -740 1100 -700 {
lab=di_spdt_ctrl}
N 1080 -580 1080 -540 {
lab=di_spdt_ctrl_n}
N 1080 -540 1100 -540 {
lab=di_spdt_ctrl_n}
N 1100 -540 1100 -500 {
lab=di_spdt_ctrl_n}
N 1140 -1100 1220 -1100 {lab=di_spdt_ctrl}
N 1360 -1100 1440 -1100 {lab=di_spdt_ctrl_n}
N 1280 -1060 1280 -1040 {lab=VSS}
N 1280 -1160 1280 -1140 {lab=VDD}
C {devices/iopin.sym} 880 -620 0 1 {name=p2 lab=v_a}
C {devices/iopin.sym} 1680 -620 0 0 {name=p4 lab=v_b}
C {devices/iopin.sym} 1280 -720 3 0 {name=p1 lab=v_c}
C {devices/lab_pin.sym} 1460 -500 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1460 -740 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1500 -740 1 0 {name=p7 sig_type=std_logic lab=di_spdt_ctrl_n}
C {devices/lab_pin.sym} 1500 -500 3 0 {name=p19 sig_type=std_logic lab=di_spdt_ctrl}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1280 -1160 3 0 {name=p10 lab=VDD}
C {devices/iopin.sym} 1280 -1040 1 0 {name=p11 lab=VSS}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1080 -620 0 0 {name=x1 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1480 -620 0 0 {name=x2 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG}
C {lab_pin.sym} 1440 -1100 2 0 {name=p27 sig_type=std_logic lab=di_spdt_ctrl_n}
C {inverter/inverter_lv.sym} 1280 -1100 0 0 {name=x8 W_P=W_P_TG L_P=L_P_TG W_N=W_N_TG L_N=L_N_TG}
C {devices/ipin.sym} 1140 -1100 0 0 {name=p3 lab=di_spdt_ctrl}
C {devices/lab_pin.sym} 1100 -740 1 0 {name=p8 sig_type=std_logic lab=di_spdt_ctrl}
C {devices/lab_pin.sym} 1060 -500 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1060 -740 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1100 -500 3 0 {name=p5 sig_type=std_logic lab=di_spdt_ctrl_n}
