v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Cell for thermometer code including unit capacitor and SPDT switch with high-Z} 220 -1720 0 0 1 1 {}
T {v0, if di_clk = 0
v1, if di_clk = 1} 1410 -1160 0 0 0.4 0.4 {}
T {di_clk = 1, di_cell_en = 1: v_c connected to v_a, v_b = High-Z
di_clk = 0, di_cell_en = 1: v_c connected to v_b, v_a = High-Z
di_clk = X, di_cell_en = 0: v_b = High-Z, v_a = High-Z} 880 -1560 0 0 0.4 0.4 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1235 -720 0 0 0.2 0.2 {}
N 1540 -860 1540 -820 {lab=VDD}
N 1340 -920 1420 -920 {lab=di_clk}
N 1480 -860 1480 -740 {lab=#net1}
N 1480 -680 1480 -560 {lab=vtop}
N 1340 -940 1420 -940 {lab=di_cell_en_n}
N 1520 -1040 1520 -1000 {lab=v1}
N 1440 -1040 1440 -1000 {lab=v0}
N 680 -940 760 -940 {lab=di_cell_en}
N 900 -940 980 -940 {lab=di_cell_en_n}
N 820 -900 820 -880 {lab=VSS}
N 820 -1000 820 -980 {lab=VDD}
N 1540 -1040 1540 -1000 {lab=VSS}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/ipin.sym} 680 -940 0 0 {name=p1 lab=di_cell_en}
C {devices/iopin.sym} 1540 -1040 3 0 {name=p5 lab=VSS}
C {devices/iopin.sym} 1440 -1040 3 0 {name=p2 lab=v0}
C {devices/iopin.sym} 1540 -820 1 0 {name=p20 lab=VDD}
C {spdt_switch/spdt_hz_switch.sym} 1500 -920 2 0 {name=x1 W_P_TG=W_P_SPDT L_P_TG=L_P_SPDT W_N_TG=W_N_SPDT L_N_TG=L_N_SPDT}
C {capa.sym} 1480 -710 0 0 {name=C1
m=1
value=Cu
footprint=1206
device="ceramic capacitor"}
C {devices/ipin.sym} 1340 -920 0 0 {name=p14 lab=di_clk}
C {devices/iopin.sym} 1520 -1040 3 0 {name=p3 lab=v1}
C {inverter/inverter_lv.sym} 820 -940 0 0 {name=x3 W_P=W_P_SPDT L_P=W_P_SPDT W_N=W_N_SPDT L_N=W_N_SPDT}
C {devices/lab_pin.sym} 820 -1000 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 820 -880 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 980 -940 2 0 {name=p18 sig_type=std_logic lab=di_cell_en_n}
C {lab_pin.sym} 1340 -940 0 0 {name=p8 sig_type=std_logic lab=di_cell_en_n}
C {devices/iopin.sym} 1480 -560 1 0 {name=p6 lab=vtop}
