v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 6 1260 -440 1260 -1020 2040 -1020 2060 -1020 2060 -440 1260 -440 {dash = 4}
P 4 5 440 -1020 960 -1020 960 -440 440 -440 440 -1020 {dash = 4}
T {Discrete-time double-tail comparator} 730 -1720 0 0 1 1 {}
T {Compared to the StrongARM latch, the double-tail comparator has one tail for the pre-amplifier stage and one tail for the latching stage.

Advantages:
-) Less stacked transistors and therefore suitable for low-voltage operation
-) Large current in the latching stage but small current in input stage for low offset
-) Less kickback noise due to separation of pre-amplifier and latch stage

Disadvantages:
-) Poor energy optimization for a given SNR because the pre-amplifier as well as the regenerative latch start operating at the same time.
-) Output of pre-amplifier (CP) discharges completely to ground at the end of comparison.
-) Pre-amplifier constitutes approximately 80% of the total energy consumption of the comparator.} 340 -1590 0 0 0.5 0.5 {}
T {Latch
stage} 1980 -1000 0 0 0.4 0.4 {}
T {vcpn} 1150 -520 0 0 0.4 0.4 {}
T {vcpp} 2100 -520 0 0 0.4 0.4 {}
T {Pre-amplifier
stage} 810 -500 0 0 0.4 0.4 {}
N 1500 -460 1560 -460 {lab=VSS}
N 1500 -530 1560 -530 {lab=VSS}
N 1500 -530 1500 -460 {lab=VSS}
N 1560 -500 1560 -460 {lab=VSS}
N 1320 -500 1320 -460 {lab=VSS}
N 1380 -530 1380 -460 {lab=VSS}
N 1320 -460 1380 -460 {lab=VSS}
N 1380 -460 1500 -460 {lab=VSS}
N 1940 -460 2000 -460 {lab=VSS}
N 1940 -530 2000 -530 {lab=VSS}
N 1940 -530 1940 -460 {lab=VSS}
N 2000 -500 2000 -460 {lab=VSS}
N 1760 -500 1760 -460 {lab=VSS}
N 1760 -530 1820 -530 {lab=VSS}
N 1820 -530 1820 -460 {lab=VSS}
N 1760 -460 1820 -460 {lab=VSS}
N 1820 -460 1940 -460 {lab=VSS}
N 1320 -600 1320 -560 {lab=voutp}
N 1560 -600 1560 -560 {lab=voutp}
N 1760 -600 1760 -560 {lab=voutn}
N 2000 -600 2000 -560 {lab=voutn}
N 1680 -530 1720 -530 {lab=voutp}
N 1600 -530 1640 -530 {lab=voutn}
N 1880 -600 2000 -600 {lab=voutn}
N 1680 -750 1840 -750 {lab=voutp}
N 1440 -600 1560 -600 {lab=voutp}
N 1480 -750 1640 -750 {lab=voutn}
N 1440 -820 1440 -780 {lab=#net1}
N 1660 -820 1880 -820 {lab=#net1}
N 1880 -820 1880 -780 {lab=#net1}
N 1440 -820 1660 -820 {lab=#net1}
N 1660 -460 1760 -460 {lab=VSS}
N 1660 -460 1660 -420 {lab=VSS}
N 1560 -460 1660 -460 {lab=VSS}
N 1660 -1000 1720 -1000 {lab=VDD}
N 1660 -1040 1660 -1000 {lab=VDD}
N 1100 -530 1100 -500 {lab=vcpn}
N 1440 -680 1440 -600 {lab=voutp}
N 1320 -600 1440 -600 {lab=voutp}
N 1880 -640 1880 -600 {lab=voutn}
N 1760 -600 1880 -600 {lab=voutn}
N 1640 -640 1640 -530 {lab=voutn}
N 1680 -680 1680 -530 {lab=voutp}
N 1440 -680 1680 -680 {lab=voutp}
N 1440 -720 1440 -680 {lab=voutp}
N 1680 -750 1680 -680 {lab=voutp}
N 1640 -640 1880 -640 {lab=voutn}
N 1640 -750 1640 -640 {lab=voutn}
N 1880 -720 1880 -640 {lab=voutn}
N 1880 -640 2080 -640 {lab=voutn}
N 1240 -680 1440 -680 {lab=voutp}
N 1240 -910 1620 -910 {lab=di_clk_n}
N 1100 -1100 1100 -840 {lab=vcpp}
N 860 -840 1100 -840 {lab=vcpp}
N 2040 -530 2200 -530 {lab=vcpp}
N 2200 -1100 2200 -530 {lab=vcpp}
N 1100 -1100 2200 -1100 {lab=vcpp}
N 1100 -440 1100 -420 {lab=VSS}
N 2200 -530 2200 -500 {lab=vcpp}
N 2200 -440 2200 -420 {lab=VSS}
N 1360 -750 1440 -750 {lab=VDD}
N 1880 -750 1960 -750 {lab=VDD}
N 420 -730 500 -730 {lab=vinp}
N 900 -730 980 -730 {lab=vinn}
N 540 -700 540 -660 {lab=vs}
N 860 -700 860 -660 {lab=vs}
N 700 -540 700 -460 {lab=VSS}
N 700 -660 860 -660 {lab=vs}
N 700 -570 760 -570 {lab=VSS}
N 760 -570 760 -460 {lab=VSS}
N 700 -460 760 -460 {lab=VSS}
N 420 -570 660 -570 {lab=di_clk}
N 700 -460 700 -420 {lab=VSS}
N 540 -730 620 -730 {lab=VSS}
N 780 -730 860 -730 {lab=VSS}
N 540 -1000 700 -1000 {lab=VDD}
N 700 -910 820 -910 {lab=di_clk}
N 860 -1000 920 -1000 {lab=VDD}
N 700 -940 700 -910 {lab=di_clk}
N 580 -910 700 -910 {lab=di_clk}
N 700 -1040 700 -1000 {lab=VDD}
N 860 -840 860 -760 {lab=vcpp}
N 840 -840 860 -840 {lab=vcpp}
N 540 -880 540 -800 {lab=vcpn}
N 540 -1000 540 -940 {lab=VDD}
N 480 -1000 540 -1000 {lab=VDD}
N 480 -910 540 -910 {lab=VDD}
N 480 -1000 480 -910 {lab=VDD}
N 860 -880 860 -840 {lab=vcpp}
N 860 -1000 860 -940 {lab=VDD}
N 700 -1000 860 -1000 {lab=VDD}
N 860 -910 920 -910 {lab=VDD}
N 920 -1000 920 -910 {lab=VDD}
N 700 -660 700 -600 {lab=vs}
N 540 -660 700 -660 {lab=vs}
N 540 -800 540 -760 {lab=vcpn}
N 1660 -1000 1660 -940 {lab=VDD}
N 1660 -880 1660 -820 {lab=#net1}
N 1660 -910 1720 -910 {lab=VDD}
N 1720 -1000 1720 -910 {lab=VDD}
N 700 -680 700 -660 {lab=vs}
N 540 -800 1100 -800 {lab=vcpn}
N 520 -800 540 -800 {lab=vcpn}
N 1100 -530 1280 -530 {lab=vcpn}
N 1100 -800 1100 -530 {lab=vcpn}
N 1320 -530 1380 -530 {lab=VSS}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/opin.sym} 1240 -680 2 0 {name=p2 lab=voutp}
C {devices/opin.sym} 2080 -640 0 0 {name=p3 lab=voutn}
C {ipin.sym} 1240 -910 0 0 {name=p6 lab=di_clk_n}
C {sg13g2_pr/sg13_lv_nmos.sym} 1300 -530 0 0 {name=M6
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1640 -910 0 0 {name=M8
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1460 -750 0 1 {name=M9
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1860 -750 0 0 {name=M10
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1580 -530 0 1 {name=M11
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1740 -530 0 0 {name=M12
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2020 -530 0 1 {name=M7
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1660 -420 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1660 -1040 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1100 -420 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2200 -420 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {capa.sym} 1100 -470 0 0 {name=CP1
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2200 -470 0 0 {name=CP2
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1360 -750 2 1 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1960 -750 2 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 700 -1040 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 700 -420 1 0 {name=p8 lab=VSS}
C {ipin.sym} 420 -730 0 0 {name=p9 lab=vinp}
C {ipin.sym} 980 -730 2 0 {name=p10 lab=vinn}
C {ipin.sym} 420 -570 0 0 {name=p12 lab=di_clk}
C {sg13g2_pr/sg13_lv_nmos.sym} 520 -730 0 0 {name=M1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 880 -730 0 1 {name=M2
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 680 -570 0 0 {name=M3
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 620 -730 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 780 -730 2 1 {name=p14 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 560 -910 0 1 {name=M4
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 840 -910 0 0 {name=M5
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 700 -940 0 0 {name=p15 sig_type=std_logic lab=di_clk}
C {lab_wire.sym} 840 -840 0 0 {name=p1 sig_type=std_logic lab=vcpp}
C {lab_wire.sym} 520 -800 2 1 {name=p4 sig_type=std_logic lab=vcpn}
C {lab_wire.sym} 700 -680 0 1 {name=p22 sig_type=std_logic lab=vs}
