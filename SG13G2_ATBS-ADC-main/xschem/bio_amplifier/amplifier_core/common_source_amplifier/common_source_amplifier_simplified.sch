v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 760 -940 760 -1500 940 -1500 940 -940 760 -940 {dash = 8}
T {Common-Source Amplifier with Current-Source Load (simplified)} 250 -1720 0 0 1.2 1.2 {}
T {200nA} 1190 -950 0 0 0.4 0.4 {}
T {200nA} 2120 -950 0 1 0.4 0.4 {}
T {Common-Source Stage} 1140 -500 0 0 0.5 0.5 {}
T {Common-Source Stage} 1890 -500 0 0 0.5 0.5 {}
T {Power Down} 760 -930 0 0 0.4 0.4 {}
T {25nA} 610 -920 0 0 0.4 0.4 {}
T {Biasing} 690 -310 0 0 0.5 0.5 {}
N 1280 -1240 1280 -1200 {lab=VDD}
N 1420 -760 1420 -620 {lab=VSS}
N 2200 -760 2240 -760 {lab=vinn}
N 2040 -1240 2040 -1200 {lab=VDD}
N 2100 -760 2200 -760 {lab=vinn}
N 1900 -760 1900 -620 {lab=VSS}
N 2040 -900 2040 -860 {lab=voutp}
N 1060 -1240 1060 -1100 {lab=VDD}
N 2260 -1240 2260 -1100 {lab=VDD}
N 1060 -1100 1220 -1100 {lab=VDD}
N 2100 -1100 2260 -1100 {lab=VDD}
N 1500 -920 1560 -920 {lab=#net1}
N 1760 -920 1820 -920 {lab=voutp}
N 1660 -920 1700 -920 {lab=Vb}
N 1620 -920 1660 -920 {lab=Vb}
N 1660 -1000 1660 -920 {lab=Vb}
N 1760 -1000 1820 -1000 {lab=voutp}
N 1660 -1000 1700 -1000 {lab=Vb}
N 1620 -1000 1660 -1000 {lab=Vb}
N 1500 -1000 1560 -1000 {lab=#net1}
N 2040 -960 2040 -900 {lab=voutp}
N 460 -1240 460 -1100 {lab=VDD}
N 460 -1100 620 -1100 {lab=VDD}
N 680 -1240 680 -1200 {lab=VDD}
N 1500 -960 1500 -920 {lab=#net1}
N 2040 -1000 2040 -960 {lab=voutp}
N 1340 -760 1420 -760 {lab=VSS}
N 1280 -660 1280 -620 {lab=VSS}
N 1120 -760 1220 -760 {lab=vinp}
N 2040 -660 2040 -620 {lab=VSS}
N 1900 -760 1980 -760 {lab=VSS}
N 2200 -900 2200 -760 {lab=vinn}
N 1280 -1000 1280 -960 {lab=#net1}
N 2150 -900 2200 -900 {lab=vinn}
N 2040 -900 2090 -900 {lab=voutp}
N 1230 -900 1280 -900 {lab=voutn}
N 1120 -900 1170 -900 {lab=vinp}
N 1120 -900 1120 -760 {lab=vinp}
N 1080 -760 1120 -760 {lab=vinp}
N 1280 -900 1280 -860 {lab=voutn}
N 2000 -900 2040 -900 {lab=voutp}
N 1820 -960 1820 -920 {lab=voutp}
N 1280 -900 1320 -900 {lab=voutn}
N 1660 -1100 1660 -1000 {lab=Vb}
N 1500 -1000 1500 -960 {lab=#net1}
N 1340 -1100 1660 -1100 {lab=Vb}
N 1660 -1140 1660 -1100 {lab=Vb}
N 1660 -1100 1980 -1100 {lab=Vb}
N 1820 -960 2040 -960 {lab=voutp}
N 1820 -1000 1820 -960 {lab=voutp}
N 1280 -960 1500 -960 {lab=#net1}
N 1660 -1140 1700 -1140 {lab=Vb}
N 1660 -1320 1660 -1140 {lab=Vb}
N 860 -1440 860 -1400 {lab=VDD}
N 860 -1100 860 -1060 {lab=Vb}
N 860 -1000 860 -960 {lab=#net2}
N 740 -1100 860 -1100 {lab=Vb}
N 860 -1320 860 -1100 {lab=Vb}
N 900 -1370 980 -1370 {lab=di_cs_en}
N 900 -1030 980 -1030 {lab=di_cs_en_n}
N 800 -1370 800 -1030 {lab=VDD}
N 800 -1030 860 -1030 {lab=VDD}
N 800 -1370 860 -1370 {lab=VDD}
N 800 -1440 800 -1370 {lab=VDD}
N 860 -1320 1660 -1320 {lab=Vb}
N 860 -1340 860 -1320 {lab=Vb}
N 680 -960 860 -960 {lab=#net2}
N 680 -1000 680 -960 {lab=#net2}
N 680 -880 680 -860 {lab=#net3}
N 680 -960 680 -940 {lab=#net2}
N 740 -760 820 -760 {lab=VSS}
N 820 -520 820 -380 {lab=VSS}
N 680 -660 680 -620 {lab=#net4}
N 680 -420 680 -380 {lab=VSS}
N 740 -520 820 -520 {lab=VSS}
N 820 -760 820 -520 {lab=VSS}
N 580 -760 620 -760 {lab=Vbiasc}
N 580 -520 620 -520 {lab=Vbias}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/capa.sym} 1200 -900 1 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"
spice_ignore=True}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 1280 -1100 0 1 {name=xM12 W_P=8.0u L_P=40.0u NG_P=16 M_P=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 1280 -760 0 0 {name=xM10 W_N=2.0u L_N=40.0u NG_N=4 M_N=1}
C {ipin.sym} 1080 -760 0 0 {name=p4 lab=vinp}
C {ipin.sym} 2240 -760 2 0 {name=p6 lab=vinn}
C {opin.sym} 2000 -900 2 0 {name=p3 lab=voutp}
C {opin.sym} 1320 -900 2 1 {name=p7 lab=voutn}
C {devices/iopin.sym} 1280 -1240 3 0 {name=p34 lab=VDD}
C {devices/iopin.sym} 1280 -620 1 0 {name=p1 lab=VSS}
C {lab_pin.sym} 1420 -620 3 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 2120 -900 3 1 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"
spice_ignore=True}
C {lab_pin.sym} 1900 -620 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {res.sym} 1590 -920 1 1 {name=R1
value=25.5Meg
footprint=1206
device=resistor
m=1}
C {capa.sym} 1590 -1000 1 1 {name=C3
m=1
value=900f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2040 -1240 3 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2040 -620 1 1 {name=p8 sig_type=std_logic lab=VSS}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 2040 -1100 0 0 {name=xM13 W_P=8.0u L_P=40.0u NG_P=16 M_P=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 2040 -760 0 1 {name=xM11 W_N=2.0u L_N=40.0u NG_N=4 M_N=1}
C {capa.sym} 1730 -1000 1 1 {name=C4
m=1
value=900f
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1730 -920 1 1 {name=R2
value=25.5Meg
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 2260 -1240 3 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 460 -1240 3 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 680 -1240 3 1 {name=p14 sig_type=std_logic lab=VDD}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 680 -1100 0 1 {name=xM15 W_P=2.0u L_P=40.0u NG_P=4 M_P=1}
C {lab_pin.sym} 1060 -1240 3 1 {name=p10 sig_type=std_logic lab=VDD}
C {ammeter.sym} 1280 -930 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 1700 -1140 0 1 {name=p26 sig_type=std_logic lab=Vb}
C {sg13g2_pr/sg13_hv_pmos.sym} 880 -1030 0 1 {name=Mpd2
l=0.5u
w=1.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 880 -1370 0 1 {name=Mpd1
l=0.5u
w=1.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 800 -1440 3 1 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 860 -1440 3 1 {name=p18 sig_type=std_logic lab=VDD}
C {ipin.sym} 980 -1370 0 1 {name=p32 lab=di_cs_en}
C {ipin.sym} 980 -1030 0 1 {name=p33 lab=di_cs_en_n}
C {ammeter.sym} 680 -910 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 680 -760 0 0 {name=xM14c W_N=11.5u L_N=20.0u NG_N=23 M_N=1}
C {lab_pin.sym} 680 -380 1 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 820 -380 1 1 {name=p35 sig_type=std_logic lab=VSS}
C {ipin.sym} 580 -520 0 0 {name=p17 lab=Vbias}
C {ipin.sym} 580 -760 0 0 {name=p20 lab=Vbiasc}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 680 -520 0 0 {name=xM14 W_N=11.5u L_N=20.0u NG_N=23 M_N=1}
