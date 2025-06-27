v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Programmable Capacitor x3} 950 -1710 0 0 1 1 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1335 -1130 0 0 0.3 0.3 {}
T {3-Bit Thermometer coded programmable capacitor:
-) di_en = [0 0 0]: open (required if bio-amplifier is not used)
-) di_en = [0 0 1]: Ctot1 = C1
-) di_en = [0 1 1]: Ctot2 = C1 + C2
-) di_en = [1 1 1]: Ctot3 = C1 + C2 + C3} 280 -1590 0 0 0.4 0.4 {}
N 920 -1020 920 -700 {lab=vcap_1}
N 1700 -1340 1700 -1020 {lab=vcap_2}
N 1700 -1020 1860 -1020 {lab=vcap_2}
N 1700 -1020 1700 -700 {lab=vcap_2}
N 1140 -1460 1140 -1380 {lab=VDD}
N 1180 -1460 1180 -1420 {lab=di_en_3}
N 1160 -1420 1180 -1420 {lab=di_en_3}
N 1160 -1420 1160 -1380 {lab=di_en_3}
N 1160 -1300 1160 -1260 {lab=di_en_3_n}
N 1160 -1260 1180 -1260 {lab=di_en_3_n}
N 1180 -1260 1180 -1220 {lab=di_en_3_n}
N 1140 -1300 1140 -1220 {lab=VSS}
N 1140 -1140 1140 -1060 {lab=VDD}
N 1180 -1140 1180 -1100 {lab=di_en_2}
N 1160 -1100 1180 -1100 {lab=di_en_2}
N 1160 -1100 1160 -1060 {lab=di_en_2}
N 1160 -980 1160 -940 {lab=di_en_2_n}
N 1160 -940 1180 -940 {lab=di_en_2_n}
N 1180 -940 1180 -900 {lab=di_en_2_n}
N 1140 -980 1140 -900 {lab=VSS}
N 1140 -820 1140 -740 {lab=VDD}
N 1180 -820 1180 -780 {lab=di_en_1}
N 1160 -780 1180 -780 {lab=di_en_1}
N 1160 -780 1160 -740 {lab=di_en_1}
N 1160 -660 1160 -620 {lab=di_en_1_n}
N 1160 -620 1180 -620 {lab=di_en_1_n}
N 1180 -620 1180 -580 {lab=di_en_1_n}
N 1140 -660 1140 -580 {lab=VSS}
N 600 -400 680 -400 {lab=di_en_1}
N 820 -400 900 -400 {lab=di_en_1_n}
N 740 -360 740 -340 {lab=VSS}
N 740 -460 740 -440 {lab=VDD}
N 1160 -400 1240 -400 {lab=di_en_2}
N 1380 -400 1460 -400 {lab=di_en_2_n}
N 1300 -360 1300 -340 {lab=VSS}
N 1300 -460 1300 -440 {lab=VDD}
N 1720 -400 1800 -400 {lab=di_en_3}
N 1940 -400 2020 -400 {lab=di_en_3_n}
N 1860 -360 1860 -340 {lab=VSS}
N 1860 -460 1860 -440 {lab=VDD}
N 920 -1340 920 -1020 {lab=vcap_1}
N 760 -1020 920 -1020 {lab=vcap_1}
N 920 -1340 1080 -1340 {lab=vcap_1}
N 920 -1020 1080 -1020 {lab=vcap_1}
N 1500 -700 1700 -700 {lab=vcap_2}
N 1500 -1020 1700 -1020 {lab=vcap_2}
N 1500 -1340 1700 -1340 {lab=vcap_2}
N 920 -700 1080 -700 {lab=vcap_1}
N 1240 -700 1440 -700 {lab=#net1}
N 1240 -1340 1440 -1340 {lab=#net2}
N 1240 -1020 1440 -1020 {lab=#net3}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {iopin.sym} 760 -1020 2 0 {name=p1 lab=vcap_1}
C {iopin.sym} 1860 -1020 0 0 {name=p2 lab=vcap_2}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1160 -1340 0 0 {name=x6 W_P=W_P_PC L_P=L_P_PC W_N=W_N_PC L_N=L_N_PC}
C {lab_pin.sym} 1180 -820 0 1 {name=p20 sig_type=std_logic lab=di_en_1}
C {lab_pin.sym} 1180 -580 0 1 {name=p21 sig_type=std_logic lab=di_en_1_n}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1160 -1020 0 0 {name=x5 W_P=W_P_PC L_P=L_P_PC W_N=W_N_PC L_N=L_N_PC}
C {lab_pin.sym} 1140 -1140 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1140 -900 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1180 -1140 0 1 {name=p25 sig_type=std_logic lab=di_en_2}
C {lab_pin.sym} 1180 -900 0 1 {name=p26 sig_type=std_logic lab=di_en_2_n}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1160 -700 0 0 {name=x4 W_P=W_P_PC L_P=L_P_PC W_N=W_N_PC L_N=L_N_PC}
C {lab_pin.sym} 1140 -820 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1140 -580 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1180 -1460 0 1 {name=p29 sig_type=std_logic lab=di_en_3}
C {lab_pin.sym} 1180 -1220 0 1 {name=p30 sig_type=std_logic lab=di_en_3_n}
C {capa.sym} 1470 -1340 3 1 {name=C3
m=1
value=C3
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1470 -1020 3 1 {name=C2
m=1
value=C2
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1470 -700 3 1 {name=C1
m=1
value=C1
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 900 -400 0 1 {name=p14 sig_type=std_logic lab=di_en_1_n}
C {lab_pin.sym} 1460 -400 0 1 {name=p15 sig_type=std_logic lab=di_en_2_n}
C {devices/ipin.sym} 600 -400 2 1 {name=p18 lab=di_en_1}
C {devices/ipin.sym} 1160 -400 2 1 {name=p19 lab=di_en_2}
C {lab_pin.sym} 740 -340 3 0 {name=p31 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 740 -460 1 0 {name=p32 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1300 -340 3 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 -460 1 0 {name=p34 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2020 -400 0 1 {name=p35 sig_type=std_logic lab=di_en_3_n}
C {devices/ipin.sym} 1720 -400 2 1 {name=p36 lab=di_en_3}
C {lab_pin.sym} 1860 -340 3 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1860 -460 1 0 {name=p38 sig_type=std_logic lab=VDD}
C {inverter/inverter_lv.sym} 740 -400 0 0 {name=x1 W_P=W_P_PC L_P=L_P_PC W_N=W_N_PC L_N=L_N_PC}
C {inverter/inverter_lv.sym} 1300 -400 0 0 {name=x2 W_P=W_P_PC L_P=L_P_PC W_N=W_N_PC L_N=L_N_PC}
C {inverter/inverter_lv.sym} 1860 -400 0 0 {name=x3 W_P=W_P_PC L_P=L_P_PC W_N=W_N_PC L_N=L_N_PC}
C {devices/iopin.sym} 1140 -1460 0 1 {name=p11 lab=VDD}
C {devices/iopin.sym} 1140 -1220 2 0 {name=p8 lab=VSS}
