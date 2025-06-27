v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Discrete-time comparator with NOR-based SR-Latch} 600 -1700 0 0 1 1 {}
T {The differential output of the DT comparator is buffered and latched into a NOR-based SR-latch [Schmickl] [Razavi]. 
This circuit is used to suppress the regeneration transients of the comparator output response and therefore 
provides a stable output $Q$ with clean High / Low voltage levels which is further processed by the digital core.} 500 -1530 0 0 0.5 0.5 {}
N 1320 -1020 1320 -1000 {lab=VSS}
N 1320 -880 1320 -860 {lab=VDD}
N 1320 -780 1320 -760 {lab=VSS}
N 960 -960 1140 -960 {lab=voutp_comp}
N 1140 -1060 1260 -1060 {lab=voutp_comp}
N 1140 -820 1260 -820 {lab=voutn_comp}
N 960 -920 1140 -920 {lab=voutn_comp}
N 1140 -1060 1140 -960 {lab=voutp_comp}
N 1140 -920 1140 -820 {lab=voutn_comp}
N 800 -820 800 -800 {lab=VSS}
N 860 -820 860 -800 {lab=di_clk}
N 900 -820 900 -600 {lab=#net1}
N 1380 -1060 1500 -1060 {lab=voutp_buf}
N 1380 -820 1500 -820 {lab=voutn_buf}
N 1500 -920 1500 -820 {lab=voutn_buf}
N 1500 -1060 1500 -960 {lab=voutp_buf}
N 1680 -880 1680 -860 {lab=VSS}
N 1680 -1020 1680 -1000 {lab=VDD}
N 1740 -960 1860 -960 {lab=vout}
N 1500 -920 1540 -920 {lab=voutn_buf}
N 1540 -920 1580 -960 {lab=voutn_buf}
N 1580 -960 1620 -960 {lab=voutn_buf}
N 1500 -960 1540 -960 {lab=voutp_buf}
N 1540 -960 1580 -920 {lab=voutp_buf}
N 1580 -920 1620 -920 {lab=voutp_buf}
N 800 -600 900 -600 {lab=#net1}
N 620 -600 660 -600 {lab=di_clk}
N 620 -980 700 -980 {lab=vinp}
N 620 -900 700 -900 {lab=vinn}
N 720 -660 720 -640 {lab=VDD}
N 720 -560 720 -540 {lab=VSS}
N 1740 -920 1860 -920 {lab=#net2}
N 1140 -1080 1140 -1060 {lab=voutp_comp}
N 1140 -820 1140 -800 {lab=voutn_comp}
N 1500 -1080 1500 -1060 {lab=voutp_buf}
N 1500 -820 1500 -800 {lab=voutn_buf}
N 800 -1080 800 -1060 {lab=VDD}
N 1320 -1120 1320 -1100 {lab=VDD}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 800 -1080 3 0 {name=p11 lab=VDD}
C {devices/opin.sym} 1860 -960 2 1 {name=p2 lab=vout}
C {devices/iopin.sym} 800 -800 1 0 {name=p8 lab=VSS}
C {ipin.sym} 620 -980 0 0 {name=p9 lab=vinp}
C {ipin.sym} 620 -900 2 1 {name=p10 lab=vinn}
C {ipin.sym} 620 -600 0 0 {name=p12 lab=di_clk}
C {buffer/buffer_lv.sym} 1320 -1060 0 0 {name=x2 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {lab_wire.sym} 1320 -1120 3 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1320 -1000 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1320 -820 0 0 {name=x3 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {lab_wire.sym} 1320 -880 3 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1320 -760 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1680 -1020 3 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1680 -860 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 720 -600 0 0 {name=x5 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {lab_wire.sym} 860 -800 3 0 {name=p6 sig_type=std_logic lab=di_clk}
C {lab_wire.sym} 720 -660 3 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 720 -540 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {noconn.sym} 1860 -920 0 1 {name=l2}
C {comparator/SR_latch/SR_latch.sym} 1680 -940 0 0 {name=x4 W_P_SR=1.0u L_P_SR=0.13u W_N_SR=1.0u L_N_SR=0.13u}
C {lab_wire.sym} 1140 -1080 3 1 {name=p16 sig_type=std_logic lab=voutp_comp}
C {lab_wire.sym} 1140 -800 3 0 {name=p17 sig_type=std_logic lab=voutn_comp}
C {lab_wire.sym} 1500 -1080 1 0 {name=p18 sig_type=std_logic lab=voutp_buf}
C {lab_wire.sym} 1500 -800 1 1 {name=p19 sig_type=std_logic lab=voutn_buf}
C {comparator/discrete_time/Dynamic-biasing/dynamic_biasing_comparator.sym} 820 -940 0 0 {name=x1}
