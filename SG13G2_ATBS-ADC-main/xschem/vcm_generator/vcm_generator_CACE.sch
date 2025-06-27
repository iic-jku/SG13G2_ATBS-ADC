v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Bufferless Vcm Generator based on Switched Capacitor Charge-Pump} 340 -1740 0 0 1 1 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1025 -1120 0 0 0.2 0.2 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1300 -380 0 0 0.2 0.2 {}
N 1240 -1260 1240 -1120 {
lab=#net1}
N 1240 -920 1240 -820 {
lab=#net2}
N 1240 -560 1240 -420 {
lab=#net3}
N 1240 -560 1340 -560 {
lab=#net3}
N 1240 -660 1240 -560 {
lab=#net3}
N 1240 -1260 1340 -1260 {
lab=#net1}
N 1240 -1360 1240 -1260 {
lab=#net1}
N 1500 -1260 1600 -1260 {
lab=Vcm}
N 1600 -1260 1600 -560 {
lab=Vcm}
N 1500 -560 1600 -560 {
lab=Vcm}
N 1600 -1260 1700 -1260 {
lab=Vcm}
N 940 -920 1240 -920 {
lab=#net2}
N 980 -600 1020 -600 {
lab=VSS}
N 1020 -620 1020 -600 {
lab=VSS}
N 860 -620 860 -600 {
lab=VDD}
N 860 -600 900 -600 {
lab=VDD}
N 1280 -760 1320 -760 {
lab=VSS}
N 1320 -780 1320 -760 {
lab=VSS}
N 1160 -780 1160 -760 {
lab=VDD}
N 1160 -760 1200 -760 {
lab=VDD}
N 1400 -620 1400 -600 {
lab=VDD}
N 1400 -520 1400 -500 {
lab=VSS}
N 980 -580 1020 -580 {
lab=di_phi_1_n}
N 1160 -1440 1200 -1440 {
lab=di_phi_2}
N 1280 -1440 1320 -1440 {
lab=di_phi_2_n}
N 1400 -1220 1400 -1200 {
lab=VSS}
N 1400 -1320 1400 -1300 {
lab=VDD}
N 1280 -740 1320 -740 {
lab=di_phi_2_n}
N 1160 -740 1200 -740 {
lab=di_phi_2}
N 1420 -1320 1420 -1300 {
lab=di_phi_1}
N 1420 -1220 1420 -1200 {
lab=di_phi_1_n}
N 860 -580 900 -580 {
lab=di_phi_1}
N 1420 -520 1420 -500 {
lab=di_phi_1_n}
N 1420 -620 1420 -600 {
lab=di_phi_1}
N 1240 -1600 1240 -1520 {
lab=VDD}
N 940 -500 940 -240 {
lab=VSS}
N 940 -920 940 -660 {
lab=#net2}
N 1160 -1480 1160 -1460 {
lab=VDD}
N 1160 -1460 1200 -1460 {
lab=VDD}
N 1280 -1460 1320 -1460 {
lab=VSS}
N 1320 -1480 1320 -1460 {
lab=VSS}
N 460 -1280 540 -1280 {lab=di_phi_2}
N 680 -1280 760 -1280 {lab=di_phi_2_n}
N 600 -1240 600 -1220 {lab=VSS}
N 600 -1340 600 -1320 {lab=VDD}
N 460 -1540 540 -1540 {lab=di_phi_1}
N 680 -1540 760 -1540 {lab=di_phi_1_n}
N 600 -1500 600 -1480 {lab=VSS}
N 600 -1600 600 -1580 {lab=VDD}
N 1240 -1060 1240 -920 {lab=#net2}
N 1240 -360 1240 -240 {lab=VSS}
C {devices/iopin.sym} 1240 -1600 3 0 {name=p11 lab=VDD}
C {devices/opin.sym} 1700 -1260 0 0 {name=p2 lab=Vcm}
C {devices/iopin.sym} 1240 -240 1 0 {name=p1 lab=VSS}
C {devices/ipin.sym} 460 -1540 0 0 {name=p10 lab=di_phi_1}
C {devices/ipin.sym} 460 -1280 0 0 {name=p3 lab=di_phi_2}
C {lab_pin.sym} 940 -240 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 860 -620 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1020 -620 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1320 -780 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1160 -780 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1400 -620 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1400 -500 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1160 -740 0 0 {name=p13 sig_type=std_logic lab=di_phi_2}
C {lab_pin.sym} 1400 -1320 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1400 -1200 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1320 -740 2 0 {name=p21 sig_type=std_logic lab=di_phi_2_n}
C {lab_pin.sym} 860 -580 0 0 {name=p22 sig_type=std_logic lab=di_phi_1}
C {lab_pin.sym} 1010 -580 2 0 {name=p14 sig_type=std_logic lab=di_phi_1_n}
C {lab_pin.sym} 1420 -500 3 0 {name=p23 sig_type=std_logic lab=di_phi_1_n}
C {lab_pin.sym} 1420 -620 1 0 {name=p24 sig_type=std_logic lab=di_phi_1}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {lab_pin.sym} 1160 -1480 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1320 -1480 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1240 -1440 3 1 {name=x1 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1420 -1260 0 0 {name=x2 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1240 -740 3 1 {name=x3 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1420 -560 0 0 {name=x4 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 940 -580 3 1 {name=x5 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {lab_pin.sym} 1160 -1440 0 0 {name=p25 sig_type=std_logic lab=di_phi_2}
C {lab_pin.sym} 1420 -1320 1 0 {name=p26 sig_type=std_logic lab=di_phi_1}
C {lab_pin.sym} 1420 -1200 3 0 {name=p15 sig_type=std_logic lab=di_phi_1_n}
C {lab_pin.sym} 1320 -1440 2 0 {name=p16 sig_type=std_logic lab=di_phi_2_n}
C {lab_pin.sym} 600 -1220 3 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -1340 1 0 {name=p30 sig_type=std_logic lab=VDD}
C {inverter/inverter_lv.sym} 600 -1540 0 0 {name=x9 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {lab_pin.sym} 600 -1480 3 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -1600 1 0 {name=p34 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 760 -1280 2 0 {name=p27 sig_type=std_logic lab=di_phi_2_n}
C {lab_pin.sym} 760 -1540 2 0 {name=p28 sig_type=std_logic lab=di_phi_1_n}
C {inverter/inverter_lv.sym} 600 -1280 0 0 {name=x8 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {capa.sym} 1240 -1090 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1240 -390 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
