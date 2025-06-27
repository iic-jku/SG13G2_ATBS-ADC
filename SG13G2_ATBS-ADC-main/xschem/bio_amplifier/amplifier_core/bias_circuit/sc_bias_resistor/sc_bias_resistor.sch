v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Antiparallel Shunt-type Switched-Capacitor Resistor for Bias Circuit} 320 -1690 0 0 1 1 {}
T {Antiparallel Shunt-type Switched-Capacitor Resistor for Bias Circuit:
-) This configuration equals two parallel connected SC resistor equivalents.
-) The bias current and gm can be adjusted with different clock frequencies. 
By changing the bias current and gm, the bio-signal amplifier's transit frequency and gain can be adjusted.
-) The antiparallel configuration simultaneously lowers switching transients and 
effectively doubles the switching frequency at the output, which can be filtered out more easily.
-) The remaining ripple voltage caused by the switched-capacitor implementation is suppressed 
by additional decoupling capacitors (PMOS or MIM).} 240 -1560 0 0 0.6 0.6 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 635 -540 0 0 0.2 0.2 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1755 -540 0 0 0.2 0.2 {}
N 1100 -1120 1100 -1000 {lab=sc_R_a}
N 1100 -720 1100 -600 {lab=#net1}
N 860 -720 1100 -720 {lab=#net1}
N 1100 -840 1100 -720 {lab=#net1}
N 1100 -440 1100 -320 {lab=sc_R_b}
N 860 -720 860 -560 {lab=#net1}
N 860 -500 860 -320 {lab=sc_R_b}
N 860 -320 1100 -320 {lab=sc_R_b}
N 1460 -1120 1460 -1000 {lab=sc_R_a}
N 1460 -720 1460 -600 {lab=#net2}
N 1460 -720 1700 -720 {lab=#net2}
N 1460 -840 1460 -720 {lab=#net2}
N 1460 -440 1460 -320 {lab=sc_R_b}
N 1700 -720 1700 -560 {lab=#net2}
N 1700 -500 1700 -320 {lab=sc_R_b}
N 1460 -320 1700 -320 {lab=sc_R_b}
N 1280 -1120 1460 -1120 {lab=sc_R_a}
N 1280 -320 1460 -320 {lab=sc_R_b}
N 1280 -1160 1280 -1120 {lab=sc_R_a}
N 1100 -1120 1280 -1120 {lab=sc_R_a}
N 1280 -320 1280 -280 {lab=sc_R_b}
N 1100 -320 1280 -320 {lab=sc_R_b}
N 1140 -940 1160 -940 {lab=VDD}
N 1040 -940 1060 -940 {lab=VSS}
N 1040 -540 1060 -540 {lab=VSS}
N 1140 -540 1160 -540 {lab=VDD}
N 1400 -540 1420 -540 {lab=VDD}
N 1400 -940 1420 -940 {lab=VDD}
N 1500 -940 1520 -940 {lab=VSS}
N 1500 -540 1520 -540 {lab=VSS}
N 1040 -920 1060 -920 {lab=di_phi_1_n}
N 1140 -920 1160 -920 {lab=di_phi_1}
N 1140 -520 1160 -520 {lab=di_phi_2}
N 1040 -520 1060 -520 {lab=di_phi_2_n}
N 1400 -920 1420 -920 {lab=di_phi_2}
N 1500 -920 1520 -920 {lab=di_phi_2_n}
N 1400 -520 1420 -520 {lab=di_phi_1}
N 1500 -520 1520 -520 {lab=di_phi_1_n}
N 340 -1120 420 -1120 {lab=di_phi_1}
N 560 -1120 640 -1120 {lab=di_phi_1_n}
N 480 -1080 480 -1060 {lab=VSS}
N 480 -1180 480 -1160 {lab=VDD}
N 340 -860 420 -860 {lab=di_phi_2}
N 560 -860 640 -860 {lab=di_phi_2_n}
N 480 -820 480 -800 {lab=VSS}
N 480 -920 480 -900 {lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1040 -940 2 0 {name=p12 lab=VSS}
C {devices/iopin.sym} 1160 -940 0 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 1280 -1160 3 0 {name=p36 lab=sc_R_a}
C {devices/iopin.sym} 1280 -280 1 0 {name=p14 lab=sc_R_b}
C {devices/ipin.sym} 340 -1120 0 0 {name=p10 lab=di_phi_1}
C {devices/ipin.sym} 340 -860 2 1 {name=p9 lab=di_phi_2}
C {capa.sym} 860 -530 0 0 {name=C1
m=1
value=Cs
footprint=1206
device="ceramic capacitor"}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1100 -920 1 0 {name=x1 W_P=W_P_R L_P=L_P_R W_N=W_N_R L_N=L_N_R}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1100 -520 1 0 {name=x2 W_P=W_P_R L_P=L_P_R W_N=W_N_R L_N=L_N_R}
C {capa.sym} 1700 -530 0 1 {name=C2
m=1
value=Cs
footprint=1206
device="ceramic capacitor"}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1460 -920 3 1 {name=x3 W_P=W_P_R L_P=L_P_R W_N=W_N_R L_N=L_N_R}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1460 -520 3 1 {name=x4 W_P=W_P_R L_P=L_P_R W_N=W_N_R L_N=L_N_R}
C {lab_wire.sym} 1040 -540 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1160 -540 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1400 -540 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1400 -940 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1520 -940 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1520 -540 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1520 -520 2 0 {name=p13 sig_type=std_logic lab=di_phi_1_n}
C {lab_wire.sym} 1400 -520 2 1 {name=p15 sig_type=std_logic lab=di_phi_1}
C {lab_wire.sym} 1520 -920 2 0 {name=p16 sig_type=std_logic lab=di_phi_2_n}
C {lab_wire.sym} 1400 -920 2 1 {name=p17 sig_type=std_logic lab=di_phi_2}
C {inverter/inverter_lv.sym} 480 -1120 0 0 {name=x5 W_P=W_P_R L_P=L_P_R W_N=W_N_R L_N=L_N_R}
C {lab_pin.sym} 480 -1060 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 -1180 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -1120 2 0 {name=p18 sig_type=std_logic lab=di_phi_1_n}
C {lab_wire.sym} 1160 -920 2 0 {name=p19 sig_type=std_logic lab=di_phi_1}
C {lab_wire.sym} 1040 -920 2 1 {name=p3 sig_type=std_logic lab=di_phi_1_n}
C {inverter/inverter_lv.sym} 480 -860 0 0 {name=x6 W_P=W_P_R L_P=L_P_R W_N=W_N_R L_N=L_N_R}
C {lab_pin.sym} 480 -800 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 -920 1 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1160 -520 2 0 {name=p22 sig_type=std_logic lab=di_phi_2}
C {lab_wire.sym} 1040 -520 2 1 {name=p11 sig_type=std_logic lab=di_phi_2_n}
C {lab_wire.sym} 640 -860 2 0 {name=p25 sig_type=std_logic lab=di_phi_2_n}
