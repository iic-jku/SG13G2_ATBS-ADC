v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 720 -880 720 -1440 900 -1440 900 -880 720 -880 {dash = 8}
T {Common-Source Amplifier with Current-Source Load} 410 -1710 0 0 1.2 1.2 {}
T {200nA} 1150 -890 0 0 0.4 0.4 {}
T {200nA} 2080 -890 0 1 0.4 0.4 {}
T {Common-Source Stage} 1100 -440 0 0 0.5 0.5 {}
T {Common-Source Stage} 1850 -440 0 0 0.5 0.5 {}
T {Biasing} 650 -250 0 0 0.5 0.5 {}
T {Power Down} 720 -870 0 0 0.4 0.4 {}
T {31nA} 570 -860 0 0 0.4 0.4 {}
N 1240 -1180 1240 -1140 {lab=VDD}
N 1380 -700 1380 -560 {lab=VSS}
N 2160 -700 2200 -700 {lab=vinn}
N 2000 -1180 2000 -1140 {lab=VDD}
N 2060 -700 2160 -700 {lab=vinn}
N 1860 -700 1860 -560 {lab=VSS}
N 2000 -840 2000 -800 {lab=voutp}
N 1020 -1180 1020 -1040 {lab=VDD}
N 2220 -1180 2220 -1040 {lab=VDD}
N 1020 -1040 1180 -1040 {lab=VDD}
N 2060 -1040 2220 -1040 {lab=VDD}
N 420 -1180 420 -1040 {lab=VDD}
N 420 -1040 580 -1040 {lab=VDD}
N 640 -1180 640 -1140 {lab=VDD}
N 2000 -900 2000 -840 {lab=voutp}
N 1300 -700 1380 -700 {lab=VSS}
N 1240 -600 1240 -560 {lab=VSS}
N 1080 -700 1180 -700 {lab=vinp}
N 2000 -600 2000 -560 {lab=VSS}
N 1860 -700 1940 -700 {lab=VSS}
N 2160 -840 2160 -700 {lab=vinn}
N 1240 -940 1240 -900 {lab=voutn}
N 2110 -840 2160 -840 {lab=vinn}
N 2000 -840 2050 -840 {lab=voutp}
N 1190 -840 1240 -840 {lab=voutn}
N 1080 -840 1130 -840 {lab=vinp}
N 1080 -840 1080 -700 {lab=vinp}
N 1040 -700 1080 -700 {lab=vinp}
N 1240 -840 1240 -800 {lab=voutn}
N 1960 -840 2000 -840 {lab=voutp}
N 1240 -840 1280 -840 {lab=voutn}
N 1300 -1040 1620 -1040 {lab=Vb}
N 1620 -1040 1940 -1040 {lab=Vb}
N 1540 -1180 1540 -1000 {lab=VDD}
N 1620 -1040 1620 -1000 {lab=Vb}
N 1380 -960 1500 -960 {lab=voutn}
N 1740 -960 1860 -960 {lab=voutp}
N 1620 -760 1620 -360 {lab=#net1}
N 1540 -760 1540 -560 {lab=VSS}
N 1480 -880 1500 -880 {lab=di_phi_1}
N 1480 -820 1500 -820 {lab=di_phi_2}
N 1700 -760 1700 -740 {lab=Vcm}
N 1380 -960 1380 -900 {lab=voutn}
N 1240 -900 1380 -900 {lab=voutn}
N 1240 -900 1240 -840 {lab=voutn}
N 1860 -960 1860 -900 {lab=voutp}
N 1860 -900 2000 -900 {lab=voutp}
N 2000 -940 2000 -900 {lab=voutp}
N 920 -360 1620 -360 {lab=#net1}
N 1620 -1080 1620 -1040 {lab=Vb}
N 640 -820 640 -800 {lab=#net2}
N 700 -700 780 -700 {lab=VSS}
N 780 -460 780 -320 {lab=VSS}
N 820 -1380 820 -1340 {lab=VDD}
N 820 -1040 820 -1000 {lab=#net1}
N 820 -940 820 -900 {lab=#net3}
N 700 -1040 820 -1040 {lab=#net1}
N 820 -1280 820 -1040 {lab=#net1}
N 860 -1310 940 -1310 {lab=di_cs_en}
N 860 -970 940 -970 {lab=di_cs_en_n}
N 760 -1310 760 -970 {lab=VDD}
N 760 -970 820 -970 {lab=VDD}
N 760 -1310 820 -1310 {lab=VDD}
N 760 -1380 760 -1310 {lab=VDD}
N 640 -900 820 -900 {lab=#net3}
N 640 -940 640 -900 {lab=#net3}
N 820 -1040 920 -1040 {lab=#net1}
N 920 -1040 920 -360 {lab=#net1}
N 640 -900 640 -880 {lab=#net3}
N 640 -600 640 -560 {lab=#net4}
N 640 -360 640 -320 {lab=VSS}
N 700 -460 780 -460 {lab=VSS}
N 780 -700 780 -460 {lab=VSS}
N 540 -700 580 -700 {lab=Vbiasc}
N 540 -460 580 -460 {lab=Vbias}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/capa.sym} 1160 -840 1 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"
spice_ignore=True}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 1240 -1040 0 1 {name=xM12 W_P=8.0u L_P=40.0u NG_P=16 M_P=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 1240 -700 0 0 {name=xM10 W_N=2.0u L_N=40.0u NG_N=4 M_N=1}
C {ipin.sym} 1040 -700 0 0 {name=p4 lab=vinp}
C {ipin.sym} 2200 -700 2 0 {name=p6 lab=vinn}
C {opin.sym} 1960 -840 2 0 {name=p3 lab=voutp}
C {opin.sym} 1280 -840 2 1 {name=p7 lab=voutn}
C {devices/iopin.sym} 1240 -1180 3 0 {name=p34 lab=VDD}
C {devices/iopin.sym} 1240 -560 1 0 {name=p1 lab=VSS}
C {lab_pin.sym} 1380 -560 3 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 2080 -840 3 1 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"
spice_ignore=True}
C {lab_pin.sym} 1860 -560 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2000 -1180 3 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2000 -560 1 1 {name=p8 sig_type=std_logic lab=VSS}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 2000 -1040 0 0 {name=xM13 W_P=8.0u L_P=40.0u NG_P=16 M_P=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 2000 -700 0 1 {name=xM11 W_N=2.0u L_N=40.0u NG_N=4 M_N=1}
C {lab_pin.sym} 2220 -1180 3 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 -1180 3 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 -1180 3 1 {name=p14 sig_type=std_logic lab=VDD}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 640 -1040 0 1 {name=xM15 W_P=1.0u L_P=40.0u NG_P=2 M_P=1}
C {lab_pin.sym} 1020 -1180 3 1 {name=p10 sig_type=std_logic lab=VDD}
C {bio_amplifier/amplifier_core/sc_cmfb/sc_cmfb_output.sym} 1620 -880 0 0 {name=x1 W_P_CMFB=2.0u L_P_CMFB=0.5u W_N_CMFB=2.0u L_N_CMFB=0.5u W_P_CMFB_D=1.0u W_N_CMFB_D=1.0u C1=100f a=9}
C {lab_pin.sym} 1540 -560 3 0 {name=p27 sig_type=std_logic lab=VSS}
C {ipin.sym} 1480 -880 0 0 {name=p28 lab=di_phi_1}
C {ipin.sym} 1480 -820 0 0 {name=p29 lab=di_phi_2}
C {ipin.sym} 1700 -740 3 0 {name=p30 lab=Vcm}
C {lab_pin.sym} 1540 -1180 3 1 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1620 -1080 0 1 {name=p26 sig_type=std_logic lab=Vb}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 640 -700 0 0 {name=xM14c W_N=15.5u L_N=20.0u NG_N=31 M_N=1}
C {lab_pin.sym} 640 -320 1 1 {name=p2 sig_type=std_logic lab=VSS}
C {ammeter.sym} 640 -850 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 780 -320 1 1 {name=p35 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_pmos.sym} 840 -970 0 1 {name=Mpd2
l=0.5u
w=1.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 840 -1310 0 1 {name=Mpd1
l=0.5u
w=1.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 760 -1380 3 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 820 -1380 3 1 {name=p19 sig_type=std_logic lab=VDD}
C {ipin.sym} 940 -1310 0 1 {name=p32 lab=di_cs_en}
C {ipin.sym} 940 -970 0 1 {name=p33 lab=di_cs_en_n}
C {ipin.sym} 540 -460 0 0 {name=p17 lab=Vbias}
C {ipin.sym} 540 -700 0 0 {name=p20 lab=Vbiasc}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 640 -460 0 0 {name=xM14 W_N=15.5u L_N=20.0u NG_N=31 M_N=1}
