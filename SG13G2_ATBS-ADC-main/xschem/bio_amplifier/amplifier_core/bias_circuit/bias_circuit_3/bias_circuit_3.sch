v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 1420 -1480 1420 -1240 1680 -1240 1680 -1480 1420 -1480 {dash = 8}
P 4 5 2280 -500 2280 -300 2400 -300 2400 -500 2280 -500 {dash = 8}
P 4 5 1870 -1480 1870 -1350 1970 -1350 1970 -1480 1870 -1480 {dash = 8}
P 4 5 1540 -900 1540 -1140 1860 -1140 1860 -900 1540 -900 {dash = 8}
P 4 5 1440 -380 1940 -380 1940 -240 1440 -240 1440 -380 {dash = 8}
P 4 5 1050 -1040 1050 -320 480 -320 480 -1040 1050 -1040 {dash = 8}
P 4 5 120 -880 420 -880 420 -560 120 -560 120 -880 {dash = 8}
P 4 5 800 -1120 520 -1120 520 -1260 800 -1260 800 -1120 {dash = 8}
P 4 5 180 -1480 480 -1480 480 -1320 180 -1320 180 -1480 {dash = 8}
T {Supply-Independent Bias Circuit for Amplifier Core:
-) Beta-multiplier reference with cascoded current mirror (see Carusone)
-) Auxiliary OTA
-) Start-up circuit
-) Enable / disable transistors
-) Decoupling capacitors / transistors} 40 -1680 0 0 0.4 0.4 {}
T {Supply-Independent Bias Circuit for Amplifier Core - Version 3} 470 -1760 0 0 1 1 {}
T {0.129V} 2330 -620 0 0 0.4 0.4 {}
T {10nA} 1230 -940 0 0 0.4 0.4 {}
T {10nA} 1970 -940 0 0 0.4 0.4 {}
T {Vgs=1.5V-1.22V~0.28V} 1690 -1340 0 0 0.4 0.4 {}
T {Inverter for Enable} 180 -1510 0 0 0.4 0.4 {}
T {di_bias_en = 1... enable
di_bias_en = 0... disable} 40 -1370 0 0 0.2 0.2 {}
T {Power Down} 1420 -1540 0 0 0.4 0.4 {}
T {Decoupling} 2350 -530 0 0 0.4 0.4 {}
T {Decoupling} 1870 -1540 0 0 0.4 0.4 {}
T {38.29mV} 1200 -330 0 0 0.4 0.4 {}
T {0.275V} 2330 -900 0 0 0.4 0.4 {}
T {Auxiliary OTA} 1540 -1170 0 0 0.4 0.4 {}
T {1.5V} 2380 -1470 0 0 0.4 0.4 {}
T {bias_en_n = 0... enable
bias_en_n = 1... disable} 500 -1370 0 0 0.2 0.2 {}
T {Power Down} 1440 -410 0 0 0.4 0.4 {}
T {Start-up
Circuit} 930 -1030 0 0 0.5 0.5 {}
T {Power Down} 120 -910 0 0 0.4 0.4 {}
T {Power Down} 520 -1270 2 1 0.4 0.4 {}
T {20.3nA + 18.3nA (OTA)
528pA + 155p (OTA) (PD)} 2180 -1610 0 0 0.4 0.4 {}
N 2300 -440 2310 -440 {lab=#net1}
N 2300 -440 2300 -320 {lab=#net1}
N 2340 -440 2340 -320 {lab=#net1}
N 2300 -320 2340 -320 {lab=#net1}
N 2370 -440 2380 -440 {lab=#net1}
N 2380 -440 2380 -320 {lab=#net1}
N 2340 -320 2380 -320 {lab=#net1}
N 1100 -1360 1260 -1360 {lab=#net2}
N 2060 -1500 2060 -1460 {lab=#net2}
N 1320 -340 1320 -300 {lab=#net3}
N 2120 -440 2200 -440 {lab=VSS}
N 2200 -440 2200 -200 {lab=VSS}
N 1320 -240 1320 -200 {lab=VSS}
N 1180 -200 1320 -200 {lab=VSS}
N 2060 -200 2200 -200 {lab=VSS}
N 1320 -1500 1320 -1460 {lab=#net2}
N 1100 -1500 1320 -1500 {lab=#net2}
N 2280 -1500 2280 -1360 {lab=#net2}
N 1580 -1260 1580 -1220 {lab=#net4}
N 1580 -1360 1580 -1320 {lab=Vgs_m34}
N 2060 -1500 2280 -1500 {lab=#net2}
N 1520 -1290 1540 -1290 {lab=bias_en_n}
N 1320 -1260 1320 -1220 {lab=#net4}
N 1180 -440 1260 -440 {lab=VSS}
N 1180 -440 1180 -200 {lab=VSS}
N 1100 -1500 1100 -1360 {lab=#net2}
N 1640 -1430 1640 -1290 {lab=#net2}
N 1580 -1290 1640 -1290 {lab=#net2}
N 2340 -320 2340 -280 {lab=#net1}
N 2340 -220 2340 -200 {lab=VSS}
N 2360 -1500 2380 -1500 {lab=VDD}
N 2280 -1500 2300 -1500 {lab=#net2}
N 2120 -1360 2280 -1360 {lab=#net2}
N 1800 -1400 1800 -1360 {lab=Vgs_m34}
N 1580 -1500 1580 -1460 {lab=#net2}
N 1580 -1500 1640 -1500 {lab=#net2}
N 1320 -1220 1580 -1220 {lab=#net4}
N 1320 -1500 1580 -1500 {lab=#net2}
N 1380 -1360 1580 -1360 {lab=Vgs_m34}
N 1580 -1400 1580 -1360 {lab=Vgs_m34}
N 1580 -1430 1640 -1430 {lab=#net2}
N 1640 -1500 1640 -1430 {lab=#net2}
N 1520 -1430 1540 -1430 {lab=di_bias_en}
N 1180 -720 1260 -720 {lab=VSS}
N 1180 -720 1180 -440 {lab=VSS}
N 2060 -580 2060 -540 {lab=Vbias}
N 1960 -580 1960 -440 {lab=Vbias}
N 2060 -620 2060 -580 {lab=Vbias}
N 2120 -720 2200 -720 {lab=VSS}
N 1960 -720 2000 -720 {lab=Vbiasc}
N 1960 -860 1960 -720 {lab=Vbiasc}
N 1960 -860 2060 -860 {lab=Vbiasc}
N 2060 -860 2060 -820 {lab=Vbiasc}
N 1960 -440 2000 -440 {lab=Vbias}
N 2060 -900 2060 -860 {lab=Vbiasc}
N 980 -200 1180 -200 {lab=VSS}
N 700 -1500 1100 -1500 {lab=#net2}
N 400 -1400 520 -1400 {lab=bias_en_n}
N 140 -1400 260 -1400 {lab=di_bias_en}
N 1920 -1460 1950 -1460 {lab=#net2}
N 1950 -1460 1950 -1420 {lab=#net2}
N 1920 -1460 1920 -1420 {lab=#net2}
N 1890 -1460 1920 -1460 {lab=#net2}
N 1890 -1460 1890 -1420 {lab=#net2}
N 1920 -1500 1920 -1460 {lab=#net2}
N 1640 -1500 1920 -1500 {lab=#net2}
N 1580 -1360 1800 -1360 {lab=Vgs_m34}
N 2060 -860 2380 -860 {lab=Vbiasc}
N 2200 -720 2200 -440 {lab=VSS}
N 2200 -200 2340 -200 {lab=VSS}
N 1320 -1220 1320 -960 {lab=#net4}
N 1580 -1000 1600 -1000 {lab=VDD}
N 1800 -1000 1820 -1000 {lab=VSS}
N 1580 -1020 1600 -1020 {lab=di_bias_en}
N 1580 -1040 1580 -1020 {lab=di_bias_en}
N 1320 -560 1320 -540 {lab=#net5}
N 2340 -580 2380 -580 {lab=Vbias}
N 2340 -200 2380 -200 {lab=VSS}
N 1920 -1500 2060 -1500 {lab=#net2}
N 2060 -1260 2060 -960 {lab=#net6}
N 1800 -1360 1800 -1220 {lab=Vgs_m34}
N 1700 -1220 1800 -1220 {lab=Vgs_m34}
N 1920 -1360 2000 -1360 {lab=Vgs_m34}
N 1960 -580 2060 -580 {lab=Vbias}
N 1920 -1380 1920 -1360 {lab=Vgs_m34}
N 1800 -1360 1920 -1360 {lab=Vgs_m34}
N 2340 -580 2340 -480 {lab=Vbias}
N 2060 -580 2340 -580 {lab=Vbias}
N 840 -1220 1320 -1220 {lab=#net4}
N 940 -580 1960 -580 {lab=Vbias}
N 1700 -1220 1700 -1100 {lab=Vgs_m34}
N 1320 -900 1320 -820 {lab=#net7}
N 1380 -720 1960 -720 {lab=Vbiasc}
N 1740 -920 1740 -440 {lab=Vbias}
N 1320 -620 1320 -560 {lab=#net5}
N 1660 -920 1660 -440 {lab=#net5}
N 2060 -340 2060 -200 {lab=VSS}
N 1840 -440 1960 -440 {lab=Vbias}
N 1900 -200 2060 -200 {lab=VSS}
N 1620 -440 1660 -440 {lab=#net5}
N 1420 -560 1420 -440 {lab=#net5}
N 1320 -560 1420 -560 {lab=#net5}
N 1380 -440 1420 -440 {lab=#net5}
N 320 -1460 320 -1440 {lab=VDD}
N 320 -1360 320 -1340 {lab=VSS}
N 1620 -330 1680 -330 {lab=VSS}
N 1680 -330 1680 -200 {lab=VSS}
N 1560 -330 1580 -330 {lab=bias_en_n}
N 1620 -200 1680 -200 {lab=VSS}
N 1840 -300 1840 -200 {lab=VSS}
N 1840 -330 1900 -330 {lab=VSS}
N 1900 -330 1900 -200 {lab=VSS}
N 1540 -330 1560 -330 {lab=bias_en_n}
N 1780 -330 1800 -330 {lab=bias_en_n}
N 1620 -300 1620 -200 {lab=VSS}
N 1840 -200 1900 -200 {lab=VSS}
N 1680 -200 1840 -200 {lab=VSS}
N 1560 -260 1780 -260 {lab=bias_en_n}
N 1560 -330 1560 -260 {lab=bias_en_n}
N 1780 -330 1780 -260 {lab=bias_en_n}
N 1320 -200 1620 -200 {lab=VSS}
N 1620 -440 1620 -360 {lab=#net5}
N 1420 -440 1620 -440 {lab=#net5}
N 1840 -440 1840 -360 {lab=Vbias}
N 1740 -440 1840 -440 {lab=Vbias}
N 840 -860 840 -820 {lab=#net8}
N 900 -720 980 -720 {lab=VSS}
N 980 -720 980 -200 {lab=VSS}
N 700 -340 700 -200 {lab=VSS}
N 560 -440 560 -200 {lab=VSS}
N 560 -200 700 -200 {lab=VSS}
N 840 -580 880 -580 {lab=#net9}
N 320 -720 320 -680 {lab=Vsu}
N 700 -720 700 -540 {lab=Vsu}
N 560 -440 640 -440 {lab=VSS}
N 840 -580 840 -440 {lab=#net9}
N 320 -650 380 -650 {lab=VSS}
N 840 -620 840 -580 {lab=#net9}
N 580 -760 580 -720 {lab=Vsu}
N 700 -200 980 -200 {lab=VSS}
N 760 -440 840 -440 {lab=#net9}
N 320 -860 320 -820 {lab=#net10}
N 320 -790 380 -790 {lab=#net10}
N 380 -860 380 -790 {lab=#net10}
N 320 -860 380 -860 {lab=#net10}
N 320 -760 320 -720 {lab=Vsu}
N 320 -580 320 -200 {lab=VSS}
N 320 -200 560 -200 {lab=VSS}
N 380 -650 380 -580 {lab=VSS}
N 320 -580 380 -580 {lab=VSS}
N 320 -620 320 -580 {lab=VSS}
N 240 -790 280 -790 {lab=di_bias_en}
N 240 -650 280 -650 {lab=bias_en_n}
N 700 -720 780 -720 {lab=Vsu}
N 700 -860 700 -720 {lab=Vsu}
N 580 -720 700 -720 {lab=Vsu}
N 320 -720 580 -720 {lab=Vsu}
N 620 -1170 660 -1170 {lab=bias_en_n}
N 700 -1170 760 -1170 {lab=#net2}
N 760 -1240 760 -1170 {lab=#net2}
N 700 -1240 760 -1240 {lab=#net2}
N 700 -1240 700 -1200 {lab=#net2}
N 320 -1080 700 -1080 {lab=#net10}
N 700 -1140 700 -1080 {lab=#net10}
N 700 -1080 700 -920 {lab=#net10}
N 320 -1080 320 -860 {lab=#net10}
N 840 -1220 840 -920 {lab=#net4}
N 700 -1500 700 -1240 {lab=#net2}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 2380 -1500 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 2380 -200 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 2380 -580 0 0 {name=p3 lab=Vbias}
C {sg13g2_pr/sg13_lv_nmos.sym} 2340 -460 1 0 {name=MDEC1
l=40.0u
w=100.0u
ng=100
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1800 -1400 0 0 {name=p14 sig_type=std_logic lab=Vgs_m34}
C {ammeter.sym} 1320 -930 0 0 {name=VIref savecurrent=true spice_ignore=0}
C {ammeter.sym} 2060 -930 0 0 {name=VIout savecurrent=true spice_ignore=0}
C {devices/ipin.sym} 140 -1400 0 0 {name=p5 lab=di_bias_en}
C {inverter/inverter_lv.sym} 320 -1400 0 0 {name=x1 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {lab_pin.sym} 1520 -1430 0 0 {name=p4 sig_type=std_logic lab=di_bias_en}
C {lab_pin.sym} 1520 -1290 0 0 {name=p6 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 520 -1400 0 1 {name=p7 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 320 -1340 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 -1460 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 1560 -1430 0 0 {name=MPD1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1560 -1290 0 0 {name=MPD2
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ammeter.sym} 2340 -250 0 0 {name=VIref5 savecurrent=true spice_ignore=0}
C {ammeter.sym} 2330 -1500 1 1 {name=VIdd savecurrent=true spice_ignore=0}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1320 -440 0 1 {name=xM1 W_N=20.0u L_N=20.0u NG_N=20 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1320 -720 0 1 {name=xM1c W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 2060 -440 0 0 {name=xM2 W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 2060 -720 0 0 {name=xM2c W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {ngspice_probe.sym} 1320 -320 0 0 {name=r2}
C {sg13g2_pr/sg13_lv_pmos.sym} 1920 -1400 3 0 {name=MDEC2
l=40.0u
w=25.0u
ng=25
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/opin.sym} 2380 -860 0 0 {name=p13 lab=Vbiasc}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 1320 -1360 0 1 {name=xM3 W_P=20.0u L_P=40.0u NG_P=20 M_P=1}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 2060 -1360 0 0 {name=xM4 W_P=20.0u L_P=40.0u NG_P=20 M_P=1}
C {bio_amplifier/amplifier_core/bias_circuit/aux_ota/aux_ota.sym} 1700 -1020 3 0 {name=x4}
C {lab_wire.sym} 1580 -1000 2 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1820 -1000 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1580 -1040 3 1 {name=p24 sig_type=std_logic lab=di_bias_en}
C {res.sym} 1320 -270 0 0 {name=R1
value=3.521Meg
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/sg13_lv_nmos.sym} 1600 -330 0 0 {name=MPD3
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1540 -330 2 1 {name=p12 sig_type=std_logic lab=bias_en_n}
C {sg13g2_pr/sg13_lv_nmos.sym} 1820 -330 0 0 {name=MPD4
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 700 -440 0 1 {name=xMSU2 W_N=1.0u L_N=40.0u NG_N=1 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 840 -720 0 0 {name=xMSU1 W_N=1.0u L_N=40.0u NG_N=1 M_N=1}
C {ngspice_probe.sym} 700 -720 0 0 {name=r3}
C {ammeter.sym} 840 -890 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 910 -580 1 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ngspice_probe.sym} 840 -580 0 0 {name=r4}
C {lab_pin.sym} 580 -760 0 1 {name=p10 sig_type=std_logic lab=Vsu}
C {capa.sym} 700 -890 0 0 {name=CSU1
m=1
value=30f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 240 -790 0 0 {name=p15 sig_type=std_logic lab=di_bias_en}
C {sg13g2_pr/sg13_lv_pmos.sym} 300 -790 0 0 {name=MPD6
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 300 -650 0 0 {name=MPD7
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 240 -650 2 1 {name=p17 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 620 -1170 0 0 {name=p11 sig_type=std_logic lab=bias_en_n}
C {sg13g2_pr/sg13_lv_pmos.sym} 680 -1170 0 0 {name=MPD5
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
