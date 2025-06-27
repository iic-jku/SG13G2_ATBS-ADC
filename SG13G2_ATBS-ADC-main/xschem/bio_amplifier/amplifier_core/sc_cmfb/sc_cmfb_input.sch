v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Switched-Capacitor Common-Mode Feedback (CMFB) for Input Stage} 320 -1690 0 0 1 1 {}
T {Switched-capacitor common-mode feedback (CMFB) for input stage:
-) This circuit is a simplified version from the output stage SC CMFB.
-) With this SC CMFB, it is not possible to set the output common-mode voltage Vcmfb according to a reference Vcmref. 
Vcmfb equals Vcmfb = (Voutp + Voutn) / 2.
-) The TG switches, together with C3 and C4, form a SC resistor equivalent. C1 and C2 add an additional pole for filtering the switching noise. 
Hence, this circuit ideally can be seen as two resistors in series and two capacitors in parallel yielding a voltage divider with low-pass capability.
-) Leakage current introduces voltage offset to Vcmfb. Since TG with dummy transistors increase the leakage current, 
the TG version without dummy transistors is used.} 120 -1560 0 0 0.6 0.6 {}
T {Vcmfb = (Voutp + Voutn) / 2} 980 -692.5 0 0 0.4 0.4 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1075 -900 0 0 0.2 0.2 {}
N 1520 -800 1520 -760 {lab=di_phi_2}
N 1520 -800 1540 -800 {lab=di_phi_2}
N 1540 -840 1540 -800 {lab=di_phi_2}
N 1500 -840 1500 -760 {lab=VDD}
N 1520 -1020 1520 -980 {lab=di_phi_2_n}
N 1520 -980 1540 -980 {lab=di_phi_2_n}
N 1540 -980 1540 -940 {lab=di_phi_2_n}
N 1500 -1020 1500 -940 {lab=VSS}
N 1500 -680 1500 -600 {lab=VSS}
N 1520 -680 1520 -640 {lab=di_phi_2_n}
N 1520 -640 1540 -640 {lab=di_phi_2_n}
N 1540 -640 1540 -600 {lab=di_phi_2_n}
N 1720 -1060 1840 -1060 {lab=#net1}
N 2000 -1060 2120 -1060 {lab=#net2}
N 1720 -380 1840 -380 {lab=#net3}
N 1600 -720 1720 -720 {lab=#net2}
N 2000 -380 2120 -380 {lab=#net2}
N 1320 -720 1440 -720 {lab=Vcmfb}
N 1320 -380 1440 -380 {lab=Voutn}
N 1320 -1060 1440 -1060 {lab=Voutp}
N 1320 -1060 1320 -920 {lab=Voutp}
N 1200 -1060 1320 -1060 {lab=Voutp}
N 1320 -860 1320 -720 {lab=Vcmfb}
N 1200 -720 1320 -720 {lab=Vcmfb}
N 1320 -720 1320 -580 {lab=Vcmfb}
N 1320 -520 1320 -380 {lab=Voutn}
N 2120 -720 2120 -380 {lab=#net2}
N 1200 -380 1320 -380 {lab=Voutn}
N 1520 -460 1520 -420 {lab=di_phi_2}
N 1520 -460 1540 -460 {lab=di_phi_2}
N 1540 -500 1540 -460 {lab=di_phi_2}
N 1500 -500 1500 -420 {lab=VDD}
N 1520 -340 1520 -300 {lab=di_phi_2_n}
N 1520 -300 1540 -300 {lab=di_phi_2_n}
N 1540 -300 1540 -260 {lab=di_phi_2_n}
N 1500 -340 1500 -260 {lab=VSS}
N 1920 -340 1920 -300 {lab=di_phi_1_n}
N 1920 -300 1940 -300 {lab=di_phi_1_n}
N 1940 -300 1940 -260 {lab=di_phi_1_n}
N 1900 -340 1900 -260 {lab=VSS}
N 1920 -460 1920 -420 {lab=di_phi_1}
N 1920 -460 1940 -460 {lab=di_phi_1}
N 1940 -500 1940 -460 {lab=di_phi_1}
N 1900 -500 1900 -420 {lab=VDD}
N 1720 -860 1720 -720 {lab=#net2}
N 1720 -1060 1720 -920 {lab=#net1}
N 1600 -1060 1720 -1060 {lab=#net1}
N 1720 -720 1720 -580 {lab=#net2}
N 1720 -520 1720 -380 {lab=#net3}
N 1600 -380 1720 -380 {lab=#net3}
N 1720 -720 2120 -720 {lab=#net2}
N 2120 -1060 2120 -720 {lab=#net2}
N 1520 -1140 1520 -1100 {lab=di_phi_2}
N 1520 -1140 1540 -1140 {lab=di_phi_2}
N 1540 -1180 1540 -1140 {lab=di_phi_2}
N 1500 -1180 1500 -1100 {lab=VDD}
N 1920 -1140 1920 -1100 {lab=di_phi_1}
N 1920 -1140 1940 -1140 {lab=di_phi_1}
N 1940 -1180 1940 -1140 {lab=di_phi_1}
N 1900 -1180 1900 -1100 {lab=VDD}
N 1920 -1020 1920 -980 {lab=di_phi_1_n}
N 1920 -980 1940 -980 {lab=di_phi_1_n}
N 1940 -980 1940 -940 {lab=di_phi_1_n}
N 1900 -1020 1900 -940 {lab=VSS}
N 460 -1060 540 -1060 {lab=di_phi_1}
N 680 -1060 760 -1060 {lab=di_phi_1_n}
N 600 -1020 600 -1000 {lab=VSS}
N 600 -1120 600 -1100 {lab=VDD}
N 460 -380 540 -380 {lab=di_phi_2}
N 680 -380 760 -380 {lab=di_phi_2_n}
N 600 -340 600 -320 {lab=VSS}
N 600 -440 600 -420 {lab=VDD}
C {devices/iopin.sym} 1500 -940 2 0 {name=p12 lab=VSS}
C {devices/iopin.sym} 1500 -1180 2 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 1200 -720 2 0 {name=p36 lab=Vcmfb}
C {devices/iopin.sym} 1200 -1060 2 0 {name=p14 lab=Voutp}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1520 -1060 0 0 {name=x1 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB}
C {capa.sym} 1320 -890 0 0 {name=C1
m=1
value=\{a*C1\}
footprint=1206
device="ceramic capacitor"}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/lab_pin.sym} 1940 -500 2 0 {name=p31 sig_type=std_logic lab=di_phi_1}
C {devices/lab_pin.sym} 1940 -260 2 0 {name=p32 sig_type=std_logic lab=di_phi_1_n}
C {devices/lab_pin.sym} 1540 -840 2 0 {name=p33 sig_type=std_logic lab=di_phi_2}
C {devices/lab_pin.sym} 1540 -600 2 0 {name=p34 sig_type=std_logic lab=di_phi_2_n}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1520 -720 0 0 {name=x2 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1520 -380 0 0 {name=x3 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1920 -1060 0 0 {name=x4 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1920 -380 0 0 {name=x5 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB}
C {capa.sym} 1320 -550 0 0 {name=C2
m=1
value=\{a*C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1720 -890 0 0 {name=C3
m=1
value=C1
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1720 -550 0 0 {name=C4
m=1
value=C1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1540 -500 2 0 {name=p1 sig_type=std_logic lab=di_phi_2}
C {devices/lab_pin.sym} 1540 -260 2 0 {name=p2 sig_type=std_logic lab=di_phi_2_n}
C {devices/lab_pin.sym} 1500 -840 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1500 -600 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1500 -500 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1500 -260 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1900 -1180 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1900 -940 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1900 -500 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1900 -260 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1200 -380 2 0 {name=p15 lab=Voutn}
C {devices/ipin.sym} 460 -1060 0 0 {name=p19 lab=di_phi_1}
C {devices/ipin.sym} 460 -380 0 0 {name=p20 lab=di_phi_2}
C {inverter/inverter_lv.sym} 600 -1060 0 0 {name=x7 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB}
C {lab_pin.sym} 600 -1000 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -1120 1 0 {name=p37 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 600 -320 3 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -440 1 0 {name=p39 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 760 -1060 2 0 {name=p21 sig_type=std_logic lab=di_phi_1_n}
C {devices/lab_pin.sym} 760 -380 2 0 {name=p22 sig_type=std_logic lab=di_phi_2_n}
C {inverter/inverter_lv.sym} 600 -380 0 0 {name=x6 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB}
C {devices/lab_pin.sym} 1540 -940 2 0 {name=p11 sig_type=std_logic lab=di_phi_2_n}
C {devices/lab_pin.sym} 1940 -940 2 0 {name=p3 sig_type=std_logic lab=di_phi_1_n}
C {devices/lab_pin.sym} 1540 -1180 2 0 {name=p9 sig_type=std_logic lab=di_phi_2}
C {devices/lab_pin.sym} 1940 -1180 2 0 {name=p10 sig_type=std_logic lab=di_phi_1}
