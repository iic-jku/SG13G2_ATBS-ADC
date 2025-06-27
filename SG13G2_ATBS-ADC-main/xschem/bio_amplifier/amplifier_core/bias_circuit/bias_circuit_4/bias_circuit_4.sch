v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 1420 -1540 1420 -1300 1680 -1300 1680 -1540 1420 -1540 {dash = 8}
P 4 5 2280 -700 2280 -500 2400 -500 2400 -700 2280 -700 {dash = 8}
P 4 5 1870 -1540 1870 -1410 1970 -1410 1970 -1540 1870 -1540 {dash = 8}
P 4 7 820 -380 1380 -380 1380 -220 1160 -220 1160 -80 820 -80 820 -380 {dash = 8}
P 4 5 180 -260 480 -260 480 -80 180 -80 180 -260 {dash = 8}
P 4 5 1050 -1240 1050 -520 480 -520 480 -1240 1050 -1240 {dash = 8}
P 4 5 120 -1080 420 -1080 420 -760 120 -760 120 -1080 {dash = 8}
P 4 5 800 -1320 520 -1320 520 -1460 800 -1460 800 -1320 {dash = 8}
P 4 5 1440 -580 1940 -580 1940 -440 1440 -440 1440 -580 {dash = 8}
T {0.128V} 2330 -820 0 0 0.4 0.4 {}
T {10nA} 1230 -1140 0 0 0.4 0.4 {}
T {10nA} 1970 -1140 0 0 0.4 0.4 {}
T {Vgs=1.5V-1.22V~0.28V} 1690 -1400 0 0 0.4 0.4 {}
T {Inverter for Enable} 180 -290 0 0 0.4 0.4 {}
T {di_bias_en = 1... enable
di_bias_en = 0... disable} 40 -150 0 0 0.2 0.2 {}
T {Power Down} 1420 -1600 0 0 0.4 0.4 {}
T {Decoupling} 2350 -730 0 0 0.4 0.4 {}
T {Decoupling} 1870 -1600 0 0 0.4 0.4 {}
T {37.61mV} 1200 -530 0 0 0.4 0.4 {}
T {0.275V} 2330 -1100 0 0 0.4 0.4 {}
T {Supply-Independent Bias Circuit for Amplifier Core:
-) Beta-multiplier reference with cascoded current mirror (see Carusone)
-) Start-up circuit
-) Enable / disable transistors
-) Decoupling capacitors / transistors
-) Anti-parallel switched-capacitor resistor} 60 -1670 0 0 0.4 0.4 {}
T {Supply-Independent Bias Circuit for Amplifier Core - Version 4} 470 -1750 0 0 1 1 {}
T {3.72Meg} 830 -170 0 0 0.4 0.4 {}
T {SC Resistor + Decoupling} 1170 -210 0 0 0.4 0.4 {}
T {bias_en_n = 0... enable
bias_en_n = 1... disable} 500 -150 0 0 0.2 0.2 {}
T {Start-up
Circuit} 930 -1230 0 0 0.5 0.5 {}
T {Power Down} 120 -1110 0 0 0.4 0.4 {}
T {Power Down} 520 -1470 2 1 0.4 0.4 {}
T {Power Down} 1440 -610 0 0 0.4 0.4 {}
T {20.26nA
346pA (PD)} 2310 -1520 0 0 0.4 0.4 {}
N 1040 -300 1060 -300 {lab=VSS}
N 900 -300 920 -300 {lab=VDD}
N 980 -100 980 -60 {lab=VSS}
N 2300 -640 2310 -640 {lab=#net1}
N 2300 -640 2300 -520 {lab=#net1}
N 2340 -640 2340 -520 {lab=#net1}
N 2300 -520 2340 -520 {lab=#net1}
N 2370 -640 2380 -640 {lab=#net1}
N 2380 -640 2380 -520 {lab=#net1}
N 2340 -520 2380 -520 {lab=#net1}
N 1100 -1420 1260 -1420 {lab=#net2}
N 2060 -1560 2060 -1520 {lab=#net2}
N 2060 -540 2060 -400 {lab=VSS}
N 2120 -640 2200 -640 {lab=VSS}
N 2200 -640 2200 -400 {lab=VSS}
N 1900 -400 2060 -400 {lab=VSS}
N 2060 -400 2200 -400 {lab=VSS}
N 2340 -400 2380 -400 {lab=VSS}
N 1320 -1560 1320 -1520 {lab=#net2}
N 1100 -1560 1320 -1560 {lab=#net2}
N 2280 -1560 2280 -1420 {lab=#net2}
N 1580 -1320 1580 -1280 {lab=#net3}
N 1580 -1420 1580 -1380 {lab=Vgs_m34}
N 2060 -1560 2280 -1560 {lab=#net2}
N 1520 -1350 1540 -1350 {lab=bias_en_n}
N 1320 -1320 1320 -1280 {lab=#net3}
N 1180 -640 1260 -640 {lab=VSS}
N 1180 -640 1180 -400 {lab=VSS}
N 1100 -1560 1100 -1420 {lab=#net2}
N 1640 -1490 1640 -1350 {lab=#net2}
N 1580 -1350 1640 -1350 {lab=#net2}
N 1840 -640 1960 -640 {lab=Vbias}
N 2340 -520 2340 -480 {lab=#net1}
N 2340 -420 2340 -400 {lab=VSS}
N 2360 -1560 2380 -1560 {lab=VDD}
N 2280 -1560 2300 -1560 {lab=#net2}
N 2120 -1420 2280 -1420 {lab=#net2}
N 1800 -1460 1800 -1420 {lab=Vgs_m34}
N 1580 -1560 1580 -1520 {lab=#net2}
N 1580 -1560 1640 -1560 {lab=#net2}
N 1320 -1280 1580 -1280 {lab=#net3}
N 1320 -1560 1580 -1560 {lab=#net2}
N 1380 -1420 1580 -1420 {lab=Vgs_m34}
N 1580 -1460 1580 -1420 {lab=Vgs_m34}
N 1580 -1490 1640 -1490 {lab=#net2}
N 1640 -1560 1640 -1490 {lab=#net2}
N 1520 -1490 1540 -1490 {lab=di_bias_en}
N 1320 -820 1320 -740 {lab=#net4}
N 1180 -920 1260 -920 {lab=VSS}
N 1180 -920 1180 -640 {lab=VSS}
N 2060 -780 2060 -740 {lab=Vbias}
N 1960 -780 1960 -640 {lab=Vbias}
N 1960 -780 2060 -780 {lab=Vbias}
N 2060 -820 2060 -780 {lab=Vbias}
N 2120 -920 2200 -920 {lab=VSS}
N 1960 -920 2000 -920 {lab=Vbiasc}
N 1960 -1060 1960 -920 {lab=Vbiasc}
N 1960 -1060 2060 -1060 {lab=Vbiasc}
N 2060 -1060 2060 -1020 {lab=Vbiasc}
N 1960 -640 2000 -640 {lab=Vbias}
N 2340 -780 2380 -780 {lab=Vbias}
N 2060 -1100 2060 -1060 {lab=Vbiasc}
N 1380 -920 1960 -920 {lab=Vbiasc}
N 940 -780 1960 -780 {lab=Vbias}
N 980 -400 1180 -400 {lab=VSS}
N 700 -1560 1100 -1560 {lab=#net2}
N 840 -1280 1320 -1280 {lab=#net3}
N 400 -180 520 -180 {lab=bias_en_n}
N 140 -180 260 -180 {lab=di_bias_en}
N 1920 -1420 2000 -1420 {lab=Vgs_m34}
N 1920 -1520 1950 -1520 {lab=#net2}
N 1950 -1520 1950 -1480 {lab=#net2}
N 1920 -1520 1920 -1480 {lab=#net2}
N 1890 -1520 1920 -1520 {lab=#net2}
N 1890 -1520 1890 -1480 {lab=#net2}
N 1920 -1560 2060 -1560 {lab=#net2}
N 1920 -1560 1920 -1520 {lab=#net2}
N 1640 -1560 1920 -1560 {lab=#net2}
N 1920 -1440 1920 -1420 {lab=Vgs_m34}
N 1800 -1420 1920 -1420 {lab=Vgs_m34}
N 1580 -1420 1800 -1420 {lab=Vgs_m34}
N 2060 -1060 2380 -1060 {lab=Vbiasc}
N 2200 -920 2200 -640 {lab=VSS}
N 2200 -400 2340 -400 {lab=VSS}
N 2340 -780 2340 -680 {lab=Vbias}
N 2060 -780 2340 -780 {lab=Vbias}
N 1320 -1100 1320 -1020 {lab=#net5}
N 1320 -1280 1320 -1160 {lab=#net3}
N 2060 -1320 2060 -1160 {lab=#net6}
N 980 -360 1320 -360 {lab=Vsu}
N 1320 -460 1320 -360 {lab=Vsu}
N 980 -360 980 -340 {lab=Vsu}
N 1320 -360 1320 -340 {lab=Vsu}
N 1040 -240 1060 -240 {lab=di_phi_1}
N 1040 -200 1060 -200 {lab=di_phi_2}
N 1280 -300 1290 -300 {lab=VSS}
N 1280 -300 1280 -260 {lab=VSS}
N 1320 -260 1360 -260 {lab=VSS}
N 1360 -300 1360 -260 {lab=VSS}
N 1350 -300 1360 -300 {lab=VSS}
N 1320 -300 1320 -260 {lab=VSS}
N 1280 -260 1320 -260 {lab=VSS}
N 1320 -260 1320 -240 {lab=VSS}
N 320 -140 320 -120 {lab=VSS}
N 320 -240 320 -220 {lab=VDD}
N 840 -1060 840 -1020 {lab=#net7}
N 900 -920 980 -920 {lab=VSS}
N 980 -920 980 -400 {lab=VSS}
N 700 -540 700 -400 {lab=VSS}
N 560 -640 560 -400 {lab=VSS}
N 560 -400 700 -400 {lab=VSS}
N 840 -780 880 -780 {lab=#net8}
N 320 -920 320 -880 {lab=Vsu}
N 700 -920 700 -740 {lab=Vsu}
N 560 -640 640 -640 {lab=VSS}
N 840 -780 840 -640 {lab=#net8}
N 840 -1280 840 -1120 {lab=#net3}
N 320 -850 380 -850 {lab=VSS}
N 840 -820 840 -780 {lab=#net8}
N 580 -960 580 -920 {lab=Vsu}
N 700 -400 980 -400 {lab=VSS}
N 760 -640 840 -640 {lab=#net8}
N 320 -1060 320 -1020 {lab=#net9}
N 320 -990 380 -990 {lab=#net9}
N 380 -1060 380 -990 {lab=#net9}
N 320 -1060 380 -1060 {lab=#net9}
N 320 -960 320 -920 {lab=Vsu}
N 320 -780 320 -400 {lab=VSS}
N 320 -400 560 -400 {lab=VSS}
N 380 -850 380 -780 {lab=VSS}
N 320 -780 380 -780 {lab=VSS}
N 320 -820 320 -780 {lab=VSS}
N 240 -990 280 -990 {lab=di_bias_en}
N 240 -850 280 -850 {lab=bias_en_n}
N 700 -920 780 -920 {lab=Vsu}
N 700 -1060 700 -920 {lab=Vsu}
N 580 -920 700 -920 {lab=Vsu}
N 320 -920 580 -920 {lab=Vsu}
N 620 -1370 660 -1370 {lab=bias_en_n}
N 700 -1370 760 -1370 {lab=#net2}
N 760 -1440 760 -1370 {lab=#net2}
N 700 -1440 760 -1440 {lab=#net2}
N 700 -1440 700 -1400 {lab=#net2}
N 700 -1560 700 -1440 {lab=#net2}
N 320 -1280 700 -1280 {lab=#net9}
N 700 -1340 700 -1280 {lab=#net9}
N 700 -1280 700 -1120 {lab=#net9}
N 320 -1280 320 -1060 {lab=#net9}
N 1620 -530 1680 -530 {lab=VSS}
N 1560 -530 1580 -530 {lab=bias_en_n}
N 1840 -530 1900 -530 {lab=VSS}
N 1540 -530 1560 -530 {lab=bias_en_n}
N 1780 -530 1800 -530 {lab=bias_en_n}
N 1560 -530 1560 -460 {lab=bias_en_n}
N 1780 -530 1780 -460 {lab=bias_en_n}
N 1560 -460 1780 -460 {lab=bias_en_n}
N 1620 -640 1620 -560 {lab=Vbias}
N 1380 -640 1620 -640 {lab=Vbias}
N 1620 -500 1620 -400 {lab=VSS}
N 1180 -400 1620 -400 {lab=VSS}
N 1840 -500 1840 -400 {lab=VSS}
N 1680 -400 1840 -400 {lab=VSS}
N 1840 -640 1840 -560 {lab=Vbias}
N 1620 -640 1840 -640 {lab=Vbias}
N 1680 -530 1680 -400 {lab=VSS}
N 1620 -400 1680 -400 {lab=VSS}
N 1900 -530 1900 -400 {lab=VSS}
N 1840 -400 1900 -400 {lab=VSS}
N 1300 -460 1320 -460 {lab=Vsu}
N 1320 -540 1320 -460 {lab=Vsu}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/ipin.sym} 1060 -240 2 0 {name=p14 lab=di_phi_1}
C {devices/ipin.sym} 1060 -200 2 0 {name=p15 lab=di_phi_2}
C {lab_wire.sym} 900 -300 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1060 -300 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 980 -60 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {bio_amplifier/amplifier_core/bias_circuit/sc_bias_resistor/sc_bias_resistor.sym} 980 -220 0 0 {name=x2 W_P_R=1.0u L_P_R=0.13u W_N_R=1.0u L_N_R=0.13u Cs=1.8p}
C {devices/iopin.sym} 2380 -1560 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 2380 -400 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 2380 -780 0 0 {name=p3 lab=Vbias}
C {sg13g2_pr/sg13_lv_nmos.sym} 2340 -660 1 0 {name=MDEC1
l=40.0u
w=100.0u
ng=100
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1800 -1460 0 0 {name=p4 sig_type=std_logic lab=Vgs_m34}
C {ammeter.sym} 1320 -1130 0 0 {name=VIref savecurrent=true spice_ignore=0}
C {ammeter.sym} 2060 -1130 0 0 {name=VIout savecurrent=true spice_ignore=0}
C {devices/ipin.sym} 140 -180 0 0 {name=p5 lab=di_bias_en}
C {inverter/inverter_lv.sym} 320 -180 0 0 {name=x1 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {lab_pin.sym} 1520 -1490 0 0 {name=p6 sig_type=std_logic lab=di_bias_en}
C {lab_pin.sym} 1520 -1350 0 0 {name=p7 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 520 -180 0 1 {name=p8 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 320 -120 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 -240 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 1560 -1490 0 0 {name=MPD1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1560 -1350 0 0 {name=MPD2
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ammeter.sym} 2340 -450 0 0 {name=VIref5 savecurrent=true spice_ignore=0}
C {ammeter.sym} 2330 -1560 1 1 {name=VIdd savecurrent=true spice_ignore=0}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1320 -640 0 1 {name=xM1 W_N=20.0u L_N=20.0u NG_N=20 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1320 -920 0 1 {name=xM1c W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 2060 -640 0 0 {name=xM2 W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 2060 -920 0 0 {name=xM2c W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {ngspice_probe.sym} 1320 -520 0 0 {name=r2}
C {sg13g2_pr/sg13_lv_pmos.sym} 1920 -1460 3 0 {name=MDEC2
l=40.0u
w=25.0u
ng=25
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/opin.sym} 2380 -1060 0 0 {name=p16 lab=Vbiasc}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 1320 -1420 0 1 {name=xM3 W_P=20.0u L_P=40.0u NG_P=20 M_P=1}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 2060 -1420 0 0 {name=xM4 W_P=20.0u L_P=40.0u NG_P=20 M_P=1}
C {lab_wire.sym} 1320 -240 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 1320 -320 1 0 {name=MDEC3
l=40.0u
w=43.0u
ng=43
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 700 -640 0 1 {name=xMSU2 W_N=1.0u L_N=40.0u NG_N=1 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 840 -920 0 0 {name=xMSU1 W_N=1.0u L_N=40.0u NG_N=1 M_N=1}
C {ngspice_probe.sym} 700 -920 0 0 {name=r3}
C {ammeter.sym} 840 -1090 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 910 -780 1 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ngspice_probe.sym} 840 -780 0 0 {name=r4}
C {lab_pin.sym} 580 -960 0 1 {name=p11 sig_type=std_logic lab=Vsu}
C {capa.sym} 700 -1090 0 0 {name=CSU1
m=1
value=35f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 240 -990 0 0 {name=p12 sig_type=std_logic lab=di_bias_en}
C {sg13g2_pr/sg13_lv_pmos.sym} 300 -990 0 0 {name=MPD6
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 300 -850 0 0 {name=MPD7
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 240 -850 2 1 {name=p13 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 620 -1370 0 0 {name=p21 sig_type=std_logic lab=bias_en_n}
C {sg13g2_pr/sg13_lv_pmos.sym} 680 -1370 0 0 {name=MPD5
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1600 -530 0 0 {name=MPD3
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1540 -530 2 1 {name=p22 sig_type=std_logic lab=bias_en_n}
C {sg13g2_pr/sg13_lv_nmos.sym} 1820 -530 0 0 {name=MPD4
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1300 -460 0 0 {name=p23 sig_type=std_logic lab=Vres}
