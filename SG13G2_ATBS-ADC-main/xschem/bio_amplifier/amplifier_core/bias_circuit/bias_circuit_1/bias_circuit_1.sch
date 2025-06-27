v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 1360 -1560 1660 -1560 1660 -1360 1360 -1360 1360 -1560 {dash = 8}
P 4 5 1400 -1200 1400 -960 1660 -960 1660 -1200 1400 -1200 {dash = 8}
P 4 5 2260 -580 2260 -380 2380 -380 2380 -580 2260 -580 {dash = 8}
P 4 5 1520 -460 1800 -460 1800 -360 1520 -360 1520 -460 {dash = 8}
P 4 5 1850 -1200 1850 -1070 1950 -1070 1950 -1200 1850 -1200 {dash = 8}
P 4 5 760 -1040 480 -1040 480 -1180 760 -1180 760 -1040 {dash = 8}
P 4 5 80 -960 380 -960 380 -640 80 -640 80 -960 {dash = 8}
P 4 5 1060 -960 1060 -400 440 -400 440 -960 1060 -960 {dash = 8}
T {Supply-Independent Bias Circuit for Amplifier Core - Version 1} 460 -1740 0 0 1 1 {}
T {Supply-Independent Bias Circuit for Amplifier Core:
-) Beta-multiplier reference (see Razavi, Baker, Carusone, etc.)
-) Start-up circuit
-) Enable / disable transistors
-) Decoupling capacitors / transistors} 200 -1550 0 0 0.5 0.5 {}
T {0.152V} 2360 -710 0 0 0.4 0.4 {}
T {10nA} 1210 -800 0 0 0.4 0.4 {}
T {10nA} 1950 -800 0 0 0.4 0.4 {}
T {Vgs=1.5V-1.22V=0.28V} 1680 -1060 0 0 0.4 0.4 {}
T {Inverter for Enable} 1360 -1590 0 0 0.4 0.4 {}
T {di_bias_en = 1... enable
di_bias_en = 0... disable} 1180 -1420 0 0 0.25 0.25 {}
T {Power Down} 1520 -490 0 0 0.4 0.4 {}
T {Start-up
Circuit} 450 -950 0 0 0.5 0.5 {}
T {Power Down} 1400 -1260 0 0 0.4 0.4 {}
T {Decoupling} 2330 -610 0 0 0.4 0.4 {}
T {Decoupling} 1850 -1260 0 0 0.4 0.4 {}
T {41.86mV} 1190 -410 0 0 0.4 0.4 {}
T {1.5V} 2360 -1270 0 0 0.4 0.4 {}
T {Power Down} 480 -1190 2 1 0.4 0.4 {}
T {Power Down} 80 -990 0 0 0.4 0.4 {}
T {bias_en_n = 0... enable
bias_en_n = 1... disable} 1680 -1420 0 0 0.25 0.25 {}
T {20.19nA
373pA (PD)} 2280 -1180 0 0 0.4 0.4 {}
N 2280 -520 2290 -520 {lab=#net1}
N 2280 -520 2280 -400 {lab=#net1}
N 2320 -520 2320 -400 {lab=#net1}
N 2280 -400 2320 -400 {lab=#net1}
N 2350 -520 2360 -520 {lab=#net1}
N 2360 -520 2360 -400 {lab=#net1}
N 2320 -400 2360 -400 {lab=#net1}
N 1080 -1080 1240 -1080 {lab=#net2}
N 2040 -1220 2040 -1180 {lab=#net2}
N 1940 -520 1980 -520 {lab=Vbias}
N 1300 -420 1300 -380 {lab=#net3}
N 2040 -420 2040 -280 {lab=VSS}
N 2100 -520 2180 -520 {lab=VSS}
N 2180 -520 2180 -280 {lab=VSS}
N 1300 -320 1300 -280 {lab=VSS}
N 1160 -280 1300 -280 {lab=VSS}
N 2040 -280 2180 -280 {lab=VSS}
N 1940 -660 1940 -520 {lab=Vbias}
N 1940 -660 2040 -660 {lab=Vbias}
N 2040 -660 2040 -620 {lab=Vbias}
N 2320 -660 2360 -660 {lab=Vbias}
N 2320 -280 2360 -280 {lab=VSS}
N 1300 -1220 1300 -1180 {lab=#net2}
N 1080 -1220 1300 -1220 {lab=#net2}
N 2260 -1220 2260 -1080 {lab=#net2}
N 1320 -1460 1440 -1460 {lab=di_bias_en}
N 1560 -980 1560 -940 {lab=#net4}
N 1560 -1080 1560 -1040 {lab=Vgs_m34}
N 2040 -1220 2260 -1220 {lab=#net2}
N 1500 -1010 1520 -1010 {lab=bias_en_n}
N 1300 -980 1300 -940 {lab=#net4}
N 1580 -1460 1700 -1460 {lab=bias_en_n}
N 1500 -1420 1500 -1380 {lab=VSS}
N 1300 -940 1300 -820 {lab=#net4}
N 2040 -760 2040 -660 {lab=Vbias}
N 2040 -980 2040 -820 {lab=#net5}
N 1160 -520 1240 -520 {lab=VSS}
N 1160 -520 1160 -280 {lab=VSS}
N 840 -940 840 -900 {lab=#net6}
N 900 -800 980 -800 {lab=VSS}
N 980 -800 980 -280 {lab=VSS}
N 660 -420 660 -280 {lab=VSS}
N 520 -520 520 -280 {lab=VSS}
N 520 -280 660 -280 {lab=VSS}
N 660 -800 660 -620 {lab=#net7}
N 660 -1220 1080 -1220 {lab=#net2}
N 660 -280 980 -280 {lab=VSS}
N 720 -520 840 -520 {lab=#net8}
N 660 -800 780 -800 {lab=#net7}
N 1080 -1220 1080 -1080 {lab=#net2}
N 980 -280 1160 -280 {lab=VSS}
N 840 -660 840 -520 {lab=#net8}
N 840 -660 880 -660 {lab=#net8}
N 840 -700 840 -660 {lab=#net8}
N 840 -940 880 -940 {lab=#net6}
N 1620 -1150 1620 -1010 {lab=#net2}
N 1560 -1010 1620 -1010 {lab=#net2}
N 1360 -520 1700 -520 {lab=Vbias}
N 1760 -280 2040 -280 {lab=VSS}
N 520 -520 600 -520 {lab=VSS}
N 1700 -380 1700 -280 {lab=VSS}
N 1700 -410 1760 -410 {lab=VSS}
N 1760 -410 1760 -280 {lab=VSS}
N 1700 -280 1760 -280 {lab=VSS}
N 1700 -520 1700 -440 {lab=Vbias}
N 1620 -410 1660 -410 {lab=bias_en_n}
N 1300 -280 1700 -280 {lab=VSS}
N 2320 -400 2320 -360 {lab=#net1}
N 2320 -300 2320 -280 {lab=VSS}
N 2340 -1220 2360 -1220 {lab=VDD}
N 2260 -1220 2280 -1220 {lab=#net2}
N 2100 -1080 2260 -1080 {lab=#net2}
N 1780 -1120 1780 -1080 {lab=Vgs_m34}
N 1560 -1220 1560 -1180 {lab=#net2}
N 1560 -1220 1620 -1220 {lab=#net2}
N 1300 -940 1560 -940 {lab=#net4}
N 1300 -1220 1560 -1220 {lab=#net2}
N 1360 -1080 1560 -1080 {lab=Vgs_m34}
N 1560 -1120 1560 -1080 {lab=Vgs_m34}
N 1560 -1150 1620 -1150 {lab=#net2}
N 1620 -1220 1620 -1150 {lab=#net2}
N 1500 -1150 1520 -1150 {lab=di_bias_en}
N 1500 -1540 1500 -1500 {lab=VDD}
N 1700 -520 1940 -520 {lab=Vbias}
N 1300 -760 1300 -620 {lab=#net9}
N 1900 -1180 1930 -1180 {lab=#net2}
N 1930 -1180 1930 -1140 {lab=#net2}
N 1900 -1180 1900 -1140 {lab=#net2}
N 1870 -1180 1900 -1180 {lab=#net2}
N 1870 -1180 1870 -1140 {lab=#net2}
N 1560 -1080 1780 -1080 {lab=Vgs_m34}
N 1900 -1080 1980 -1080 {lab=Vgs_m34}
N 1900 -1220 1900 -1180 {lab=#net2}
N 1620 -1220 1900 -1220 {lab=#net2}
N 1900 -1220 2040 -1220 {lab=#net2}
N 2180 -280 2320 -280 {lab=VSS}
N 940 -940 1300 -940 {lab=#net4}
N 940 -660 1940 -660 {lab=Vbias}
N 1900 -1100 1900 -1080 {lab=Vgs_m34}
N 1780 -1080 1900 -1080 {lab=Vgs_m34}
N 2320 -660 2320 -560 {lab=Vbias}
N 2040 -660 2320 -660 {lab=Vbias}
N 580 -1090 620 -1090 {lab=bias_en_n}
N 660 -1090 720 -1090 {lab=#net2}
N 720 -1160 720 -1090 {lab=#net2}
N 660 -1160 720 -1160 {lab=#net2}
N 660 -1160 660 -1120 {lab=#net2}
N 660 -1000 660 -900 {lab=#net10}
N 660 -840 660 -800 {lab=#net7}
N 280 -730 340 -730 {lab=VSS}
N 280 -940 280 -900 {lab=#net10}
N 280 -870 340 -870 {lab=#net10}
N 340 -940 340 -870 {lab=#net10}
N 280 -940 340 -940 {lab=#net10}
N 280 -800 280 -760 {lab=#net7}
N 340 -730 340 -660 {lab=VSS}
N 280 -660 340 -660 {lab=VSS}
N 280 -700 280 -660 {lab=VSS}
N 200 -870 240 -870 {lab=di_bias_en}
N 200 -730 240 -730 {lab=bias_en_n}
N 660 -1220 660 -1160 {lab=#net2}
N 660 -1060 660 -1000 {lab=#net10}
N 540 -800 660 -800 {lab=#net7}
N 280 -840 280 -800 {lab=#net7}
N 280 -1000 660 -1000 {lab=#net10}
N 280 -1000 280 -940 {lab=#net10}
N 280 -660 280 -280 {lab=VSS}
N 280 -280 520 -280 {lab=VSS}
N 540 -840 540 -800 {lab=Vsu}
N 280 -800 540 -800 {lab=#net7}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 2360 -1220 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 2360 -280 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 2360 -660 0 0 {name=p3 lab=Vbias}
C {sg13g2_pr/sg13_lv_nmos.sym} 2320 -540 1 0 {name=MDEC1
l=40.0u
w=80.0u
ng=80
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 1300 -1080 0 1 {name=xM3 W_P=20.0u L_P=40.0u NG_P=20 M_P=1}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 2040 -1080 0 0 {name=xM4 W_P=20.0u L_P=40.0u NG_P=20 M_P=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 1300 -520 0 1 {name=xM1 W_N=20.0u L_N=40.0u NG_N=20 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 2040 -520 0 0 {name=xM2 W_N=5.0u L_N=40.0u NG_N=5 M_N=1}
C {lab_pin.sym} 1780 -1120 0 0 {name=p14 sig_type=std_logic lab=Vgs_m34}
C {ammeter.sym} 1300 -790 0 0 {name=VIref savecurrent=true spice_ignore=0}
C {ammeter.sym} 2040 -790 0 0 {name=VIout savecurrent=true spice_ignore=0}
C {devices/ipin.sym} 1320 -1460 0 0 {name=p5 lab=di_bias_en}
C {inverter/inverter_lv.sym} 1500 -1460 0 0 {name=x1 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {lab_pin.sym} 1500 -1150 0 0 {name=p4 sig_type=std_logic lab=di_bias_en}
C {lab_pin.sym} 1500 -1010 0 0 {name=p6 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 1700 -1460 0 1 {name=p7 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 1500 -1380 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1500 -1540 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 660 -520 0 1 {name=xMSU2 W_N=1.0u L_N=40.0u NG_N=1 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 840 -800 0 0 {name=xMSU1 W_N=1.0u L_N=40.0u NG_N=1 M_N=1}
C {ngspice_probe.sym} 660 -800 0 0 {name=r3}
C {ammeter.sym} 910 -940 1 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 910 -660 1 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_lv_pmos.sym} 1540 -1150 0 0 {name=MPD1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1540 -1010 0 0 {name=MPD2
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ngspice_probe.sym} 840 -660 0 0 {name=r4}
C {sg13g2_pr/sg13_lv_nmos.sym} 1680 -410 0 0 {name=MPD3
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1620 -410 2 1 {name=p12 sig_type=std_logic lab=bias_en_n}
C {ammeter.sym} 2320 -330 0 0 {name=VIref5 savecurrent=true spice_ignore=0}
C {ammeter.sym} 2310 -1220 1 1 {name=VIdd savecurrent=true spice_ignore=0}
C {capa.sym} 660 -870 0 0 {name=CSU1
m=1
value=40f
footprint=1206
device="ceramic capacitor"}
C {ngspice_probe.sym} 1300 -400 0 0 {name=r2}
C {sg13g2_pr/sg13_lv_pmos.sym} 1900 -1120 3 0 {name=MDEC2
l=40.0u
w=25.0u
ng=25
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {res.sym} 1300 -350 0 0 {name=R1
value=4.16Meg
footprint=1206
device=resistor
m=1}
C {ngspice_probe.sym} 1700 -520 0 0 {name=r5}
C {ngspice_probe.sym} 1300 -620 0 0 {name=r6}
C {ngspice_probe.sym} 1300 -940 0 0 {name=r7}
C {lab_pin.sym} 580 -1090 0 0 {name=p11 sig_type=std_logic lab=bias_en_n}
C {sg13g2_pr/sg13_lv_pmos.sym} 640 -1090 0 0 {name=MPD5
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 200 -870 0 0 {name=p15 sig_type=std_logic lab=di_bias_en}
C {sg13g2_pr/sg13_lv_pmos.sym} 260 -870 0 0 {name=MPD6
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 260 -730 0 0 {name=MPD7
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 200 -730 2 1 {name=p17 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 540 -840 0 1 {name=p10 sig_type=std_logic lab=Vsu}
