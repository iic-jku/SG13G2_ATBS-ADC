v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Switched-Capacitor Common-Mode Feedback (CMFB) for Output Stage} 320 -1740 0 0 1 1 {}
T {Switched-capacitor common-mode feedback (CMFB) for output stage:
-) CMFBs with error amplifiers limit the output voltage swing, introduces possible instability and need more power. 
Purely, resistive CMFBs load the output of the OTA and also increase the chip area. In this case, a SC CMFB can be a real game changer.
-) SC CMFBs are highly linear and can not be unstable due to the nature of only passive components. However, SC CMFB can inject nonlinear clock feedthrough noise into the OTA output nodes and 
can increase the load capacitance that needs to be driven by the OTA. Due to these reasons, the capacitors and switches must be designed carefully.
-) The kT/C noise associated with these capacitors is a common-mode signal and so it shouldn't affect the differential-mode signal.
-) Vcm = Vb + Vcmref - Vbias where typically Vb = Vbias: Vcm = Vcmref

Capacitor Design:
-) Capacitors: Cx = C1 = C2, Cy = C3 = C4;
-) Approach mostly done in literature: Make the unity-gain frequencies of the differential and the common-mode loops equal. 
Through this requirement the value of Cx is chosen (around 1pF). In the end, the DM and the CM loop must be stable.
-) During phi1, the OTA sees Cx. During phi2, the OTA sees Cx + Cy. Hence, worst case loading of the SC CMFB is during phi2.
-) One approach to solve this is to make the value of Cy much smaller (between one-fourth and one-tenth) than that of C2 such that the OTA sees approx. Cx in both clock phases. 
However, Cy < Cx would make the DC settling time much slower. Furthermore, the error due to charge injection and leakage increases significantly. 
Another problem occurs, when Cy is too small and parasitics are nonnegligible. C1 should be higher than 10fF to 100fF.

Switch Design:
-) Switches: S2 = x1 = x2 = x3, S1 = x4 = x5 = x6;
-) The leakage current of S2 contributes twice as much error as S1. Hence, the area of drain/source junctions of transistors in switch S2 should be minimized. 
Since TG with dummy transistors increase the leakage current, the TG version without dummy transistors is used for S2.
-) The voltage error due to charge injection is primarily determined by the charge injection of S1. The charge injection error increases with a bigger switch. 
Furthermore, use minimum sized transistors and half-W-sized dummy transistors to compensate charge injection.} 320 -1660 0 0 0.35 0.35 {}
T {Vcm = Vb + Vcmref - Vbias} 980 -372.5 0 0 0.4 0.4 {}
T {Vcm = Vb + Vcmref - Vbias} 980 -972.5 0 0 0.4 0.4 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1055 -840 0 0 0.2 0.2 {}
N 1540 -740 1540 -700 {lab=di_phi_2}
N 1540 -740 1560 -740 {lab=di_phi_2}
N 1560 -780 1560 -740 {lab=di_phi_2}
N 1520 -780 1520 -700 {lab=VDD}
N 1540 -960 1540 -920 {lab=di_phi_2_n}
N 1540 -920 1560 -920 {lab=di_phi_2_n}
N 1560 -920 1560 -880 {lab=di_phi_2_n}
N 1520 -960 1520 -880 {lab=VSS}
N 1520 -620 1520 -540 {lab=VSS}
N 1540 -620 1540 -580 {lab=di_phi_2_n}
N 1540 -580 1560 -580 {lab=di_phi_2_n}
N 1560 -580 1560 -540 {lab=di_phi_2_n}
N 1740 -1000 1860 -1000 {lab=#net1}
N 2020 -1000 2140 -1000 {lab=Vcmref}
N 1740 -320 1860 -320 {lab=#net2}
N 1620 -660 1740 -660 {lab=#net3}
N 2020 -320 2140 -320 {lab=Vcmref}
N 1340 -660 1460 -660 {lab=Vb}
N 1340 -320 1460 -320 {lab=Voutn}
N 1340 -1000 1460 -1000 {lab=Voutp}
N 1340 -1000 1340 -860 {lab=Voutp}
N 1220 -1000 1340 -1000 {lab=Voutp}
N 1340 -800 1340 -660 {lab=Vb}
N 1220 -660 1340 -660 {lab=Vb}
N 1340 -660 1340 -520 {lab=Vb}
N 1340 -460 1340 -320 {lab=Voutn}
N 1220 -320 1340 -320 {lab=Voutn}
N 1540 -400 1540 -360 {lab=di_phi_2}
N 1540 -400 1560 -400 {lab=di_phi_2}
N 1560 -440 1560 -400 {lab=di_phi_2}
N 1520 -440 1520 -360 {lab=VDD}
N 1540 -280 1540 -240 {lab=di_phi_2_n}
N 1540 -240 1560 -240 {lab=di_phi_2_n}
N 1560 -240 1560 -200 {lab=di_phi_2_n}
N 1520 -280 1520 -200 {lab=VSS}
N 1940 -620 1940 -580 {lab=di_phi_1_n}
N 1940 -580 1960 -580 {lab=di_phi_1_n}
N 1960 -580 1960 -540 {lab=di_phi_1_n}
N 1920 -620 1920 -540 {lab=VSS}
N 1940 -740 1940 -700 {lab=di_phi_1}
N 1940 -740 1960 -740 {lab=di_phi_1}
N 1960 -780 1960 -740 {lab=di_phi_1}
N 1920 -780 1920 -700 {lab=VDD}
N 1740 -800 1740 -660 {lab=#net3}
N 1740 -1000 1740 -860 {lab=#net1}
N 1620 -1000 1740 -1000 {lab=#net1}
N 1740 -660 1740 -520 {lab=#net3}
N 1740 -460 1740 -320 {lab=#net2}
N 1620 -320 1740 -320 {lab=#net2}
N 1540 -1080 1540 -1040 {lab=di_phi_2}
N 1540 -1080 1560 -1080 {lab=di_phi_2}
N 1560 -1120 1560 -1080 {lab=di_phi_2}
N 1520 -1120 1520 -1040 {lab=VDD}
N 1940 -1080 1940 -1040 {lab=di_phi_1}
N 1940 -1080 1960 -1080 {lab=di_phi_1}
N 1960 -1120 1960 -1080 {lab=di_phi_1}
N 1920 -1120 1920 -1040 {lab=VDD}
N 1940 -960 1940 -920 {lab=di_phi_1_n}
N 1940 -920 1960 -920 {lab=di_phi_1_n}
N 1960 -920 1960 -880 {lab=di_phi_1_n}
N 1920 -960 1920 -880 {lab=VSS}
N 1740 -660 1860 -660 {lab=#net3}
N 1940 -280 1940 -240 {lab=di_phi_1_n}
N 1940 -240 1960 -240 {lab=di_phi_1_n}
N 1960 -240 1960 -200 {lab=di_phi_1_n}
N 1920 -280 1920 -200 {lab=VSS}
N 1940 -400 1940 -360 {lab=di_phi_1}
N 1940 -400 1960 -400 {lab=di_phi_1}
N 1960 -440 1960 -400 {lab=di_phi_1}
N 1920 -440 1920 -360 {lab=VDD}
N 2140 -1000 2140 -320 {lab=Vcmref}
N 2020 -660 2260 -660 {lab=Vbias}
N 2140 -1000 2260 -1000 {lab=Vcmref}
N 300 -1000 380 -1000 {lab=di_phi_1}
N 520 -1000 600 -1000 {lab=di_phi_1_n}
N 440 -960 440 -940 {lab=VSS}
N 440 -1060 440 -1040 {lab=VDD}
N 300 -320 380 -320 {lab=di_phi_2}
N 520 -320 600 -320 {lab=di_phi_2_n}
N 440 -280 440 -260 {lab=VSS}
N 440 -380 440 -360 {lab=VDD}
C {devices/iopin.sym} 1520 -880 2 0 {name=p12 lab=VSS}
C {devices/iopin.sym} 1520 -1120 2 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 1220 -660 2 0 {name=p36 lab=Vb}
C {devices/iopin.sym} 1220 -1000 2 0 {name=p14 lab=Voutp}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1540 -1000 0 0 {name=x1 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB}
C {capa.sym} 1340 -830 0 0 {name=C1
m=1
value=\{a*C1\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1960 -780 2 0 {name=p31 sig_type=std_logic lab=di_phi_1}
C {devices/lab_pin.sym} 1960 -540 2 0 {name=p32 sig_type=std_logic lab=di_phi_1_n}
C {devices/lab_pin.sym} 1560 -780 2 0 {name=p33 sig_type=std_logic lab=di_phi_2}
C {devices/lab_pin.sym} 1560 -540 2 0 {name=p34 sig_type=std_logic lab=di_phi_2_n}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1540 -660 0 0 {name=x2 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1540 -320 0 0 {name=x3 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB}
C {capa.sym} 1340 -490 0 0 {name=C2
m=1
value=\{a*C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1740 -830 0 0 {name=C3
m=1
value=C1
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1740 -490 0 0 {name=C4
m=1
value=C1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1560 -440 2 0 {name=p1 sig_type=std_logic lab=di_phi_2}
C {devices/lab_pin.sym} 1560 -200 2 0 {name=p2 sig_type=std_logic lab=di_phi_2_n}
C {devices/lab_pin.sym} 1520 -780 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1520 -540 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1520 -440 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1520 -200 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1920 -1120 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1920 -880 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1920 -780 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1920 -540 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1220 -320 2 0 {name=p15 lab=Voutn}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/lab_pin.sym} 1960 -440 2 0 {name=p19 sig_type=std_logic lab=di_phi_1}
C {devices/lab_pin.sym} 1960 -200 2 0 {name=p20 sig_type=std_logic lab=di_phi_1_n}
C {devices/lab_pin.sym} 1920 -440 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1920 -200 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 2260 -660 0 0 {name=p23 lab=Vbias}
C {devices/iopin.sym} 2260 -1000 0 0 {name=p24 lab=Vcmref}
C {devices/ipin.sym} 300 -1000 0 0 {name=p25 lab=di_phi_1}
C {devices/ipin.sym} 300 -320 0 0 {name=p26 lab=di_phi_2}
C {inverter/inverter_lv.sym} 440 -1000 0 0 {name=x7 W_P=W_P_CMFB/2 L_P=L_P_CMFB W_N=W_N_CMFB/2 L_N=L_N_CMFB}
C {lab_pin.sym} 440 -940 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 -1060 1 0 {name=p37 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 -260 3 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 -380 1 0 {name=p39 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 600 -1000 2 0 {name=p27 sig_type=std_logic lab=di_phi_1_n}
C {devices/lab_pin.sym} 600 -320 2 0 {name=p28 sig_type=std_logic lab=di_phi_2_n}
C {inverter/inverter_lv.sym} 440 -320 0 0 {name=x8 W_P=W_P_CMFB/2 L_P=L_P_CMFB W_N=W_N_CMFB/2 L_N=L_N_CMFB}
C {devices/lab_pin.sym} 1560 -1120 2 0 {name=p9 sig_type=std_logic lab=di_phi_2}
C {devices/lab_pin.sym} 1560 -880 2 0 {name=p11 sig_type=std_logic lab=di_phi_2_n}
C {devices/lab_pin.sym} 1960 -1120 2 0 {name=p3 sig_type=std_logic lab=di_phi_1}
C {devices/lab_pin.sym} 1960 -880 2 0 {name=p10 sig_type=std_logic lab=di_phi_1_n}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1940 -1000 0 0 {name=x4 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB W_P_D=W_P_CMFB_D L_P_D=L_P_CMFB W_N_D=W_N_CMFB_D L_N_D=L_N_CMFB}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1940 -660 0 0 {name=x5 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB W_P_D=W_P_CMFB_D L_P_D=L_P_CMFB W_N_D=W_N_CMFB_D L_N_D=L_N_CMFB}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1940 -320 0 0 {name=x6 W_P=W_P_CMFB L_P=L_P_CMFB W_N=W_N_CMFB L_N=L_N_CMFB W_P_D=W_P_CMFB_D L_P_D=L_P_CMFB W_N_D=W_N_CMFB_D L_N_D=L_N_CMFB}
