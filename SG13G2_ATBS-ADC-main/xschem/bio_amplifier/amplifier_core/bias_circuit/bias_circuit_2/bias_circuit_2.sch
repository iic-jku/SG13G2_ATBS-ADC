v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 1380 -1360 1380 -1120 1640 -1120 1640 -1360 1380 -1360 {dash = 8}
P 4 5 2240 -520 2240 -320 2360 -320 2360 -520 2240 -520 {dash = 8}
P 4 5 1830 -1360 1830 -1230 1930 -1230 1930 -1360 1830 -1360 {dash = 8}
P 4 5 1400 -400 1900 -400 1900 -260 1400 -260 1400 -400 {dash = 8}
P 4 1 1100 -1050 {}
P 4 5 1010 -1060 1010 -340 440 -340 440 -1060 1010 -1060 {dash = 8}
P 4 5 80 -900 380 -900 380 -580 80 -580 80 -900 {dash = 8}
P 4 5 1460 -1620 1760 -1620 1760 -1460 1460 -1460 1460 -1620 {dash = 8}
P 4 5 760 -1140 480 -1140 480 -1280 760 -1280 760 -1140 {dash = 8}
T {Supply-Independent Bias Circuit for Amplifier Core - Version 2} 470 -1750 0 0 1 1 {}
T {Supply-Independent Bias Circuit for Amplifier Core:
-) Beta-multiplier reference with cascoded current mirror (see Carusone)
-) Start-up circuit
-) Enable / disable transistors
-) Decoupling capacitors / transistors} 80 -1620 0 0 0.4 0.4 {}
T {0.128V} 2290 -640 0 0 0.4 0.4 {}
T {10nA} 1190 -960 0 0 0.4 0.4 {}
T {10nA} 1930 -960 0 0 0.4 0.4 {}
T {Vgs=1.5V-1.22V=0.28V} 1650 -1220 0 0 0.4 0.4 {}
T {Inverter for Enable} 1460 -1650 0 0 0.4 0.4 {}
T {di_bias_en = 1... enable
di_bias_en = 0... disable} 1320 -1510 0 0 0.2 0.2 {}
T {Power Down} 1400 -430 0 0 0.4 0.4 {}
T {Start-up
Circuit} 890 -1050 0 0 0.5 0.5 {}
T {Power Down} 80 -930 0 0 0.4 0.4 {}
T {Power Down} 1380 -1420 0 0 0.4 0.4 {}
T {Decoupling} 2310 -550 0 0 0.4 0.4 {}
T {Decoupling} 1830 -1420 0 0 0.4 0.4 {}
T {37.61mV} 1160 -350 0 0 0.4 0.4 {}
T {0.275V} 2290 -920 0 0 0.4 0.4 {}
T {20.26nA
346pA (PD)} 2270 -1350 0 0 0.4 0.4 {}
T {1.5V} 2340 -1430 0 0 0.4 0.4 {}
T {bias_en_n = 0... enable
bias_en_n = 1... disable} 1770 -1510 0 0 0.2 0.2 {}
T {Power Down} 480 -1290 2 1 0.4 0.4 {}
T {bias_en_n = 0... enable
bias_en_n = 1... disable} 1770 -1510 0 0 0.2 0.2 {}
N 2260 -460 2270 -460 {lab=#net1}
N 2260 -460 2260 -340 {lab=#net1}
N 2300 -460 2300 -340 {lab=#net1}
N 2260 -340 2300 -340 {lab=#net1}
N 2330 -460 2340 -460 {lab=#net1}
N 2340 -460 2340 -340 {lab=#net1}
N 2300 -340 2340 -340 {lab=#net1}
N 1060 -1240 1220 -1240 {lab=#net2}
N 2020 -1380 2020 -1340 {lab=#net2}
N 1280 -360 1280 -320 {lab=#net3}
N 2020 -360 2020 -220 {lab=VSS}
N 2080 -460 2160 -460 {lab=VSS}
N 2160 -460 2160 -220 {lab=VSS}
N 1280 -260 1280 -220 {lab=VSS}
N 1140 -220 1280 -220 {lab=VSS}
N 2300 -220 2340 -220 {lab=VSS}
N 1280 -1380 1280 -1340 {lab=#net2}
N 2240 -1380 2240 -1240 {lab=#net2}
N 1540 -1140 1540 -1100 {lab=#net4}
N 1540 -1240 1540 -1200 {lab=Vgs_m34}
N 2020 -1380 2240 -1380 {lab=#net2}
N 1480 -1170 1500 -1170 {lab=bias_en_n}
N 1280 -1140 1280 -1100 {lab=#net4}
N 1140 -460 1220 -460 {lab=VSS}
N 1140 -460 1140 -220 {lab=VSS}
N 800 -880 800 -840 {lab=#net5}
N 860 -740 940 -740 {lab=VSS}
N 940 -740 940 -220 {lab=VSS}
N 660 -360 660 -220 {lab=VSS}
N 520 -460 520 -220 {lab=VSS}
N 520 -220 660 -220 {lab=VSS}
N 940 -220 1140 -220 {lab=VSS}
N 1060 -1380 1060 -1240 {lab=#net2}
N 800 -600 840 -600 {lab=#net6}
N 1600 -1310 1600 -1170 {lab=#net2}
N 1540 -1170 1600 -1170 {lab=#net2}
N 1580 -350 1640 -350 {lab=VSS}
N 1640 -350 1640 -220 {lab=VSS}
N 1520 -350 1540 -350 {lab=bias_en_n}
N 2300 -340 2300 -300 {lab=#net1}
N 2300 -240 2300 -220 {lab=VSS}
N 2320 -1380 2340 -1380 {lab=VDD}
N 2240 -1380 2260 -1380 {lab=#net2}
N 2080 -1240 2240 -1240 {lab=#net2}
N 1760 -1280 1760 -1240 {lab=Vgs_m34}
N 1540 -1380 1540 -1340 {lab=#net2}
N 1540 -1380 1600 -1380 {lab=#net2}
N 1280 -1100 1540 -1100 {lab=#net4}
N 1280 -1380 1540 -1380 {lab=#net2}
N 1340 -1240 1540 -1240 {lab=Vgs_m34}
N 1540 -1280 1540 -1240 {lab=Vgs_m34}
N 1540 -1310 1600 -1310 {lab=#net2}
N 1600 -1380 1600 -1310 {lab=#net2}
N 1480 -1310 1500 -1310 {lab=di_bias_en}
N 1280 -640 1280 -560 {lab=#net7}
N 1140 -740 1220 -740 {lab=VSS}
N 1140 -740 1140 -460 {lab=VSS}
N 2020 -600 2020 -560 {lab=Vbias}
N 1920 -600 1920 -460 {lab=Vbias}
N 1920 -600 2020 -600 {lab=Vbias}
N 2020 -640 2020 -600 {lab=Vbias}
N 2080 -740 2160 -740 {lab=VSS}
N 1920 -740 1960 -740 {lab=Vbiasc}
N 1920 -880 1920 -740 {lab=Vbiasc}
N 1920 -880 2020 -880 {lab=Vbiasc}
N 2020 -880 2020 -840 {lab=Vbiasc}
N 1920 -460 1960 -460 {lab=Vbias}
N 2300 -600 2340 -600 {lab=Vbias}
N 2020 -920 2020 -880 {lab=Vbiasc}
N 900 -600 1920 -600 {lab=Vbias}
N 1680 -1540 1800 -1540 {lab=bias_en_n}
N 1420 -1540 1540 -1540 {lab=di_bias_en}
N 1880 -1240 1960 -1240 {lab=Vgs_m34}
N 1880 -1340 1910 -1340 {lab=#net2}
N 1910 -1340 1910 -1300 {lab=#net2}
N 1880 -1340 1880 -1300 {lab=#net2}
N 1850 -1340 1880 -1340 {lab=#net2}
N 1850 -1340 1850 -1300 {lab=#net2}
N 1880 -1380 2020 -1380 {lab=#net2}
N 1880 -1380 1880 -1340 {lab=#net2}
N 1600 -1380 1880 -1380 {lab=#net2}
N 1880 -1260 1880 -1240 {lab=Vgs_m34}
N 1760 -1240 1880 -1240 {lab=Vgs_m34}
N 1540 -1240 1760 -1240 {lab=Vgs_m34}
N 2020 -880 2340 -880 {lab=Vbiasc}
N 2160 -740 2160 -460 {lab=VSS}
N 2160 -220 2300 -220 {lab=VSS}
N 2300 -600 2300 -500 {lab=Vbias}
N 2020 -600 2300 -600 {lab=Vbias}
N 1280 -920 1280 -840 {lab=#net8}
N 1280 -1100 1280 -980 {lab=#net4}
N 2020 -1140 2020 -980 {lab=#net9}
N 280 -740 280 -700 {lab=Vsu}
N 1060 -1380 1280 -1380 {lab=#net2}
N 1580 -220 1640 -220 {lab=VSS}
N 1580 -460 1920 -460 {lab=Vbias}
N 1800 -320 1800 -220 {lab=VSS}
N 1800 -350 1860 -350 {lab=VSS}
N 1860 -350 1860 -220 {lab=VSS}
N 1500 -350 1520 -350 {lab=bias_en_n}
N 1740 -350 1760 -350 {lab=bias_en_n}
N 1800 -740 1920 -740 {lab=Vbiasc}
N 660 -740 660 -560 {lab=Vsu}
N 520 -460 600 -460 {lab=VSS}
N 800 -600 800 -460 {lab=#net6}
N 800 -1100 1280 -1100 {lab=#net4}
N 800 -1100 800 -940 {lab=#net4}
N 280 -670 340 -670 {lab=VSS}
N 1340 -460 1580 -460 {lab=Vbias}
N 1580 -320 1580 -220 {lab=VSS}
N 1800 -220 1860 -220 {lab=VSS}
N 1580 -460 1580 -380 {lab=Vbias}
N 1640 -220 1800 -220 {lab=VSS}
N 2020 -220 2160 -220 {lab=VSS}
N 1800 -740 1800 -380 {lab=Vbiasc}
N 1340 -740 1800 -740 {lab=Vbiasc}
N 1520 -280 1740 -280 {lab=bias_en_n}
N 1520 -350 1520 -280 {lab=bias_en_n}
N 1740 -350 1740 -280 {lab=bias_en_n}
N 800 -640 800 -600 {lab=#net6}
N 540 -780 540 -740 {lab=Vsu}
N 660 -220 940 -220 {lab=VSS}
N 720 -460 800 -460 {lab=#net6}
N 280 -880 280 -840 {lab=#net10}
N 280 -810 340 -810 {lab=#net10}
N 340 -880 340 -810 {lab=#net10}
N 280 -880 340 -880 {lab=#net10}
N 280 -780 280 -740 {lab=Vsu}
N 280 -600 280 -220 {lab=VSS}
N 280 -220 520 -220 {lab=VSS}
N 340 -670 340 -600 {lab=VSS}
N 280 -600 340 -600 {lab=VSS}
N 280 -640 280 -600 {lab=VSS}
N 200 -810 240 -810 {lab=di_bias_en}
N 200 -670 240 -670 {lab=bias_en_n}
N 660 -740 740 -740 {lab=Vsu}
N 660 -880 660 -740 {lab=Vsu}
N 540 -740 660 -740 {lab=Vsu}
N 280 -740 540 -740 {lab=Vsu}
N 1600 -1600 1600 -1580 {lab=VDD}
N 1600 -1500 1600 -1480 {lab=VSS}
N 1860 -220 2020 -220 {lab=VSS}
N 1280 -220 1580 -220 {lab=VSS}
N 580 -1190 620 -1190 {lab=bias_en_n}
N 660 -1190 720 -1190 {lab=#net2}
N 720 -1260 720 -1190 {lab=#net2}
N 660 -1260 720 -1260 {lab=#net2}
N 660 -1260 660 -1220 {lab=#net2}
N 660 -1380 660 -1260 {lab=#net2}
N 280 -1100 660 -1100 {lab=#net10}
N 660 -1160 660 -1100 {lab=#net10}
N 660 -1100 660 -940 {lab=#net10}
N 660 -1380 1060 -1380 {lab=#net2}
N 280 -1100 280 -880 {lab=#net10}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 2340 -1380 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 2340 -220 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 2340 -600 0 0 {name=p3 lab=Vbias}
C {res.sym} 1280 -290 0 0 {name=R1
value=3.72Meg
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/sg13_lv_nmos.sym} 2300 -480 1 0 {name=MDEC1
l=40.0u
w=100.0u
ng=100
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1760 -1280 0 0 {name=p14 sig_type=std_logic lab=Vgs_m34}
C {ammeter.sym} 1280 -950 0 0 {name=VIref savecurrent=true spice_ignore=0}
C {ammeter.sym} 2020 -950 0 0 {name=VIout savecurrent=true spice_ignore=0}
C {devices/ipin.sym} 1420 -1540 0 0 {name=p5 lab=di_bias_en}
C {inverter/inverter_lv.sym} 1600 -1540 0 0 {name=x1 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {lab_pin.sym} 1480 -1310 0 0 {name=p4 sig_type=std_logic lab=di_bias_en}
C {lab_pin.sym} 1480 -1170 0 0 {name=p6 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 1800 -1540 0 1 {name=p7 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 1600 -1480 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1600 -1600 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 660 -460 0 1 {name=xMSU2 W_N=1.0u L_N=40.0u NG_N=1 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 800 -740 0 0 {name=xMSU1 W_N=1.0u L_N=40.0u NG_N=1 M_N=1}
C {ngspice_probe.sym} 660 -740 0 0 {name=r3}
C {ammeter.sym} 800 -910 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 870 -600 1 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_lv_pmos.sym} 1520 -1310 0 0 {name=MPD1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1520 -1170 0 0 {name=MPD2
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ngspice_probe.sym} 800 -600 0 0 {name=r4}
C {lab_pin.sym} 540 -780 0 1 {name=p10 sig_type=std_logic lab=Vsu}
C {sg13g2_pr/sg13_lv_nmos.sym} 1560 -350 0 0 {name=MPD3
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1500 -350 2 1 {name=p12 sig_type=std_logic lab=bias_en_n}
C {ammeter.sym} 2300 -270 0 0 {name=VIref5 savecurrent=true spice_ignore=0}
C {ammeter.sym} 2290 -1380 1 1 {name=VIdd savecurrent=true spice_ignore=0}
C {capa.sym} 660 -910 0 0 {name=CSU1
m=1
value=35f
footprint=1206
device="ceramic capacitor"}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1280 -460 0 1 {name=xM1 W_N=20.0u L_N=20.0u NG_N=20 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1280 -740 0 1 {name=xM1c W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 2020 -460 0 0 {name=xM2 W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 2020 -740 0 0 {name=xM2c W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {ngspice_probe.sym} 1280 -340 0 0 {name=r2}
C {sg13g2_pr/sg13_lv_pmos.sym} 1880 -1280 3 0 {name=MDEC2
l=40.0u
w=25.0u
ng=25
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/opin.sym} 2340 -880 0 0 {name=p13 lab=Vbiasc}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 1280 -1240 0 1 {name=xM3 W_P=20.0u L_P=40.0u NG_P=20 M_P=1}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 2020 -1240 0 0 {name=xM4 W_P=20.0u L_P=40.0u NG_P=20 M_P=1}
C {lab_pin.sym} 200 -810 0 0 {name=p15 sig_type=std_logic lab=di_bias_en}
C {sg13g2_pr/sg13_lv_pmos.sym} 260 -810 0 0 {name=MPD6
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1780 -350 0 0 {name=MPD4
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ngspice_probe.sym} 1280 -1100 0 0 {name=r5}
C {sg13g2_pr/sg13_lv_nmos.sym} 260 -670 0 0 {name=MPD7
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 200 -670 2 1 {name=p17 sig_type=std_logic lab=bias_en_n}
C {lab_pin.sym} 580 -1190 0 0 {name=p11 sig_type=std_logic lab=bias_en_n}
C {sg13g2_pr/sg13_lv_pmos.sym} 640 -1190 0 0 {name=MPD5
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
