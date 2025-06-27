v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Shunt-type Switched-Capacitor Resistor for Biosignal Amplifier Feedback} 320 -1690 0 0 1 1 {}
T {Shunt-type switched capacitor topology to implement a high-value resistor for the feedback of the biosignal amplifier:
-) A high-value resistor can also be implemented with a series-type topology but with higher output-referred noise.
-) The SC resistor needs a non-overlapping clock (NOC) signal.
-) In contrast to integrated RC filters, the precision of switched capacitor circuits is governed by the switching frequency 
and by the capacitor ratios, which can be controlled to extremely high precision in MOS-type integrated circuit technologies.
-) In order to increase the overall resistance without decreasing the capacitance (would increase leakage current) 
N multiple stages of SC resistors can be cascaded. In the continuous domain, this would equal a series circuit of N equal resistors. 
The overall equivalent resistance can therefore be calculated as Req,shunt = N/(fclk Cshunt).
-) Furthermore, Cshunt should be way smaller than the parallel feedback capacitor.
-) Since Cshunt is so small, use a MOM capacitor for best linearity.
-) To minimize leakage currents, TGs without dummy transistors are used.} 240 -1560 0 0 0.6 0.6 {}
T {ToDo: Test HV TG, is VGS too big? Is a bootstrap switch needed?} 400 -270 0 0 1 1 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1165 -340 0 0 0.2 0.2 {}
N 620 -620 700 -620 {
lab=#net1}
N 940 -620 1020 -620 {
lab=#net2}
N 1260 -620 1340 -620 {
lab=#net3}
N 1580 -620 1660 -620 {
lab=#net4}
N 300 -620 380 -620 {
lab=sc_fb_a}
N 1900 -620 1980 -620 {
lab=#net5}
N 2140 -620 2220 -620 {
lab=sc_fb_b}
N 460 -700 460 -660 {lab=di_phi_1}
N 460 -700 480 -700 {lab=di_phi_1}
N 480 -740 480 -700 {lab=di_phi_1}
N 440 -740 440 -660 {lab=VDD}
N 460 -580 460 -540 {lab=di_phi_1_n}
N 460 -540 480 -540 {lab=di_phi_1_n}
N 480 -540 480 -500 {lab=di_phi_1_n}
N 440 -580 440 -500 {lab=VSS}
N 780 -580 780 -540 {lab=di_phi_2_n}
N 780 -540 800 -540 {lab=di_phi_2_n}
N 800 -540 800 -500 {lab=di_phi_2_n}
N 780 -700 780 -660 {lab=di_phi_2}
N 780 -700 800 -700 {lab=di_phi_2}
N 800 -740 800 -700 {lab=di_phi_2}
N 760 -740 760 -660 {lab=VDD}
N 760 -580 760 -500 {lab=VSS}
N 1100 -700 1100 -660 {lab=di_phi_1}
N 1100 -700 1120 -700 {lab=di_phi_1}
N 1120 -740 1120 -700 {lab=di_phi_1}
N 1080 -740 1080 -660 {lab=VDD}
N 1100 -580 1100 -540 {lab=di_phi_1_n}
N 1100 -540 1120 -540 {lab=di_phi_1_n}
N 1120 -540 1120 -500 {lab=di_phi_1_n}
N 1080 -580 1080 -500 {lab=VSS}
N 1420 -580 1420 -540 {lab=di_phi_2_n}
N 1420 -540 1440 -540 {lab=di_phi_2_n}
N 1440 -540 1440 -500 {lab=di_phi_2_n}
N 1420 -700 1420 -660 {lab=di_phi_2}
N 1420 -700 1440 -700 {lab=di_phi_2}
N 1440 -740 1440 -700 {lab=di_phi_2}
N 1400 -740 1400 -660 {lab=VDD}
N 1400 -580 1400 -500 {lab=VSS}
N 1740 -700 1740 -660 {lab=di_phi_1}
N 1740 -700 1760 -700 {lab=di_phi_1}
N 1760 -740 1760 -700 {lab=di_phi_1}
N 1720 -740 1720 -660 {lab=VDD}
N 1740 -580 1740 -540 {lab=di_phi_1_n}
N 1740 -540 1760 -540 {lab=di_phi_1_n}
N 1760 -540 1760 -500 {lab=di_phi_1_n}
N 1720 -580 1720 -500 {lab=VSS}
N 2060 -580 2060 -540 {lab=di_phi_2_n}
N 2060 -540 2080 -540 {lab=di_phi_2_n}
N 2080 -540 2080 -500 {lab=di_phi_2_n}
N 2060 -700 2060 -660 {lab=di_phi_2}
N 2060 -700 2080 -700 {lab=di_phi_2}
N 2080 -740 2080 -700 {lab=di_phi_2}
N 2040 -740 2040 -660 {lab=VDD}
N 2040 -580 2040 -500 {lab=VSS}
N 620 -620 620 -540 {lab=#net1}
N 540 -620 620 -620 {
lab=#net1}
N 620 -480 620 -400 {lab=VSS}
N 940 -620 940 -540 {lab=#net2}
N 940 -480 940 -400 {lab=VSS}
N 860 -620 940 -620 {
lab=#net2}
N 1260 -620 1260 -540 {lab=#net3}
N 1260 -480 1260 -400 {lab=VSS}
N 1180 -620 1260 -620 {
lab=#net3}
N 1580 -620 1580 -540 {lab=#net4}
N 1580 -480 1580 -400 {lab=VSS}
N 1500 -620 1580 -620 {
lab=#net4}
N 1900 -620 1900 -540 {lab=#net5}
N 1900 -480 1900 -400 {lab=VSS}
N 1820 -620 1900 -620 {
lab=#net5}
N 300 -980 380 -980 {lab=di_phi_1}
N 520 -980 600 -980 {lab=di_phi_1_n}
N 440 -940 440 -920 {lab=VSS}
N 440 -1040 440 -1020 {lab=VDD}
N 940 -980 1020 -980 {lab=di_phi_2}
N 1160 -980 1240 -980 {lab=di_phi_2_n}
N 1080 -940 1080 -920 {lab=VSS}
N 1080 -1040 1080 -1020 {lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 440 -500 1 0 {name=p12 lab=VSS}
C {devices/iopin.sym} 440 -740 3 0 {name=p7 lab=VDD}
C {devices/lab_pin.sym} 620 -400 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 760 -500 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 760 -740 1 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 300 -620 2 0 {name=p36 lab=sc_fb_a}
C {devices/iopin.sym} 2220 -620 0 0 {name=p14 lab=sc_fb_b}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 460 -620 0 0 {name=x1 W_P=W_P_FB L_P=L_P_FB W_N=W_N_FB L_N=L_N_FB}
C {devices/ipin.sym} 300 -980 0 0 {name=p10 lab=di_phi_1}
C {devices/ipin.sym} 940 -980 0 0 {name=p9 lab=di_phi_2}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 780 -620 0 0 {name=x2 W_P=W_P_FB L_P=L_P_FB W_N=W_N_FB L_N=L_N_FB}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1100 -620 0 0 {name=x3 W_P=W_P_FB L_P=L_P_FB W_N=W_N_FB L_N=L_N_FB}
C {devices/lab_pin.sym} 1080 -740 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1080 -500 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1120 -500 3 0 {name=p6 sig_type=std_logic lab=di_phi_1_n}
C {devices/lab_pin.sym} 1120 -740 1 0 {name=p8 sig_type=std_logic lab=di_phi_1}
C {devices/lab_pin.sym} 1400 -500 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1400 -740 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1420 -620 0 0 {name=x4 W_P=W_P_FB L_P=L_P_FB W_N=W_N_FB L_N=L_N_FB}
C {devices/lab_pin.sym} 1440 -740 1 0 {name=p19 sig_type=std_logic lab=di_phi_2}
C {devices/lab_pin.sym} 1440 -500 3 0 {name=p20 sig_type=std_logic lab=di_phi_2_n}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1740 -620 0 0 {name=x5 W_P=W_P_FB L_P=L_P_FB W_N=W_N_FB L_N=L_N_FB}
C {devices/lab_pin.sym} 1720 -740 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1720 -500 3 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1760 -500 3 0 {name=p23 sig_type=std_logic lab=di_phi_1_n}
C {devices/lab_pin.sym} 1760 -740 1 0 {name=p24 sig_type=std_logic lab=di_phi_1}
C {devices/lab_pin.sym} 2040 -500 3 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2040 -740 1 0 {name=p27 sig_type=std_logic lab=VDD}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 2060 -620 0 0 {name=x6 W_P=W_P_FB L_P=L_P_FB W_N=W_N_FB L_N=L_N_FB}
C {devices/lab_pin.sym} 2080 -740 1 0 {name=p28 sig_type=std_logic lab=di_phi_2}
C {devices/lab_pin.sym} 2080 -500 3 0 {name=p29 sig_type=std_logic lab=di_phi_2_n}
C {devices/lab_pin.sym} 940 -400 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1260 -400 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1580 -400 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1900 -400 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {capa.sym} 620 -510 0 0 {name=C1
m=1
value=Cs
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 940 -510 0 0 {name=C2
m=1
value=Cs
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1260 -510 0 0 {name=C3
m=1
value=Cs
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1580 -510 0 0 {name=C4
m=1
value=Cs
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1900 -510 0 0 {name=C5
m=1
value=Cs
footprint=1206
device="ceramic capacitor"}
C {inverter/inverter_lv.sym} 440 -980 0 0 {name=x7 W_P=W_P_FB L_P=L_P_FB W_N=W_N_FB L_N=L_N_FB}
C {lab_pin.sym} 440 -920 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 -1040 1 0 {name=p37 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1080 -920 3 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1080 -1040 1 0 {name=p39 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 600 -980 2 0 {name=p31 sig_type=std_logic lab=di_phi_1_n}
C {devices/lab_pin.sym} 1240 -980 2 0 {name=p32 sig_type=std_logic lab=di_phi_2_n}
C {devices/lab_pin.sym} 800 -500 3 0 {name=p11 sig_type=std_logic lab=di_phi_2_n}
C {devices/lab_pin.sym} 480 -500 3 0 {name=p3 sig_type=std_logic lab=di_phi_1_n}
C {devices/lab_pin.sym} 480 -740 1 0 {name=p33 sig_type=std_logic lab=di_phi_1}
C {devices/lab_pin.sym} 800 -740 1 0 {name=p34 sig_type=std_logic lab=di_phi_2}
C {inverter/inverter_lv.sym} 1080 -980 0 0 {name=x8 W_P=W_P_FB L_P=L_P_FB W_N=W_N_FB L_N=L_N_FB}
