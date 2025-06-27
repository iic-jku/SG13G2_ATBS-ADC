v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 6 1400 -440 1400 -1020 2180 -1020 2200 -1020 2200 -440 1400 -440 {dash = 4}
P 4 5 200 -1020 1120 -1020 1120 -440 200 -440 200 -1020 {dash = 4}
T {Discrete-time Chevella's comparator} 780 -1710 0 0 1 1 {}
T {Instead of a tail capacitor a cross-coupled input pair in the pre-amplifier stage can be used.
Compared to the dynamic-bias comparator, Chevella's comparator has...

Advantages:
-) less area, since no tail capacitor CTAIL is needed.
-) slightly less energy consumption.

Disadvantages:
-) slightly higher input-referred noise due to the cross-coupled pair.

Since area is not the biggest penalty but input noise must be minimized in this work, a dynamic biasing comparator with tail capacitor CTAIL is designed.} 240 -1580 0 0 0.5 0.5 {}
T {Pre-amplifier stage
with cross-coupled pair} 860 -500 0 0 0.4 0.4 {}
T {Latch
stage} 2120 -1000 0 0 0.4 0.4 {}
T {vcpn} 1180 -560 0 0 0.4 0.4 {}
T {vcpp} 2360 -540 0 0 0.4 0.4 {}
N 860 -710 1140 -710 {lab=vinn}
N 500 -660 500 -640 {lab=#net1}
N 820 -660 820 -640 {lab=#net2}
N 500 -710 580 -710 {lab=VSS}
N 740 -710 820 -710 {lab=VSS}
N 500 -1000 500 -920 {lab=VDD}
N 820 -1000 820 -920 {lab=VDD}
N 760 -1000 820 -1000 {lab=VDD}
N 960 -1000 1020 -1000 {lab=VDD}
N 560 -1000 660 -1000 {lab=VDD}
N 660 -1040 660 -1000 {lab=VDD}
N 820 -800 820 -740 {lab=vcpp}
N 1640 -460 1700 -460 {lab=VSS}
N 1640 -530 1700 -530 {lab=VSS}
N 1640 -530 1640 -460 {lab=VSS}
N 1700 -500 1700 -460 {lab=VSS}
N 1460 -500 1460 -460 {lab=VSS}
N 1520 -530 1520 -460 {lab=VSS}
N 1460 -460 1520 -460 {lab=VSS}
N 1520 -460 1640 -460 {lab=VSS}
N 2080 -460 2140 -460 {lab=VSS}
N 2080 -530 2140 -530 {lab=VSS}
N 2080 -530 2080 -460 {lab=VSS}
N 2140 -500 2140 -460 {lab=VSS}
N 1900 -500 1900 -460 {lab=VSS}
N 1900 -530 1960 -530 {lab=VSS}
N 1960 -530 1960 -460 {lab=VSS}
N 1900 -460 1960 -460 {lab=VSS}
N 1960 -460 2080 -460 {lab=VSS}
N 1460 -600 1460 -560 {lab=voutp}
N 1700 -600 1700 -560 {lab=voutp}
N 1900 -600 1900 -560 {lab=voutn}
N 2140 -600 2140 -560 {lab=voutn}
N 1820 -530 1860 -530 {lab=voutp}
N 1740 -530 1780 -530 {lab=voutn}
N 2020 -600 2140 -600 {lab=voutn}
N 1800 -460 1900 -460 {lab=VSS}
N 1800 -460 1800 -420 {lab=VSS}
N 1700 -460 1800 -460 {lab=VSS}
N 1620 -1000 1620 -920 {lab=VDD}
N 1560 -1000 1620 -1000 {lab=VDD}
N 1620 -1040 1620 -1000 {lab=VDD}
N 1560 -1000 1560 -890 {lab=VDD}
N 1560 -890 1620 -890 {lab=VDD}
N 1580 -600 1700 -600 {lab=voutp}
N 1900 -600 2020 -600 {lab=voutn}
N 2340 -770 2340 -500 {lab=vcpp}
N 1240 -440 1240 -420 {lab=VSS}
N 2340 -440 2340 -420 {lab=VSS}
N 1460 -600 1580 -600 {lab=voutp}
N 1980 -1000 1980 -920 {lab=VDD}
N 1980 -1000 2040 -1000 {lab=VDD}
N 1980 -1040 1980 -1000 {lab=VDD}
N 2040 -1000 2040 -890 {lab=VDD}
N 1980 -890 2040 -890 {lab=VDD}
N 1380 -680 1580 -680 {lab=voutp}
N 1580 -680 1580 -600 {lab=voutp}
N 1580 -840 1620 -840 {lab=#net3}
N 1580 -840 1580 -800 {lab=#net3}
N 1780 -640 1780 -530 {lab=voutn}
N 1820 -680 1820 -530 {lab=voutp}
N 1820 -890 1940 -890 {lab=voutp}
N 1580 -680 1820 -680 {lab=voutp}
N 1820 -890 1820 -680 {lab=voutp}
N 2020 -640 2020 -600 {lab=voutn}
N 1780 -640 2020 -640 {lab=voutn}
N 1780 -890 1780 -640 {lab=voutn}
N 2020 -740 2020 -640 {lab=voutn}
N 2020 -640 2220 -640 {lab=voutn}
N 1580 -740 1580 -680 {lab=voutp}
N 1620 -860 1620 -840 {lab=#net3}
N 1660 -890 1780 -890 {lab=voutn}
N 1980 -860 1980 -840 {lab=#net4}
N 1980 -840 2020 -840 {lab=#net4}
N 2020 -840 2020 -800 {lab=#net4}
N 1240 -770 1540 -770 {lab=vcpn}
N 2060 -770 2340 -770 {lab=vcpp}
N 2340 -1100 2340 -770 {lab=vcpp}
N 1580 -770 1660 -770 {lab=VDD}
N 1940 -770 2020 -770 {lab=VDD}
N 1380 -530 1420 -530 {lab=di_clk_n}
N 2180 -530 2220 -530 {lab=di_clk_n}
N 500 -580 500 -560 {lab=vs}
N 820 -580 820 -560 {lab=vs}
N 660 -560 820 -560 {lab=vs}
N 540 -610 620 -610 {lab=vcpp}
N 620 -610 720 -800 {lab=vcpp}
N 720 -800 820 -800 {lab=vcpp}
N 700 -610 780 -610 {lab=vcpn}
N 700 -800 720 -800 {lab=vcpp}
N 820 -610 900 -610 {lab=VSS}
N 420 -610 500 -610 {lab=VSS}
N 300 -660 500 -660 {lab=#net1}
N 500 -680 500 -660 {lab=#net1}
N 820 -660 1020 -660 {lab=#net2}
N 820 -680 820 -660 {lab=#net2}
N 1240 -1100 2340 -1100 {lab=vcpp}
N 500 -890 560 -890 {lab=VDD}
N 560 -1000 560 -890 {lab=VDD}
N 500 -1000 560 -1000 {lab=VDD}
N 300 -890 360 -890 {lab=VDD}
N 360 -1000 360 -890 {lab=VDD}
N 360 -1000 500 -1000 {lab=VDD}
N 300 -1000 300 -920 {lab=VDD}
N 300 -1000 360 -1000 {lab=VDD}
N 760 -890 820 -890 {lab=VDD}
N 760 -1000 760 -890 {lab=VDD}
N 660 -1000 760 -1000 {lab=VDD}
N 1020 -1000 1020 -920 {lab=VDD}
N 960 -890 1020 -890 {lab=VDD}
N 960 -1000 960 -890 {lab=VDD}
N 820 -1000 960 -1000 {lab=VDD}
N 420 -890 460 -890 {lab=di_clk}
N 420 -890 420 -840 {lab=di_clk}
N 220 -890 260 -890 {lab=di_clk}
N 220 -890 220 -840 {lab=di_clk}
N 180 -840 220 -840 {lab=di_clk}
N 820 -800 1240 -800 {lab=vcpp}
N 860 -890 900 -890 {lab=di_clk}
N 1060 -890 1100 -890 {lab=di_clk}
N 500 -560 660 -560 {lab=vs}
N 300 -860 300 -660 {lab=#net1}
N 500 -770 500 -740 {lab=vcpn}
N 220 -840 420 -840 {lab=di_clk}
N 820 -860 820 -800 {lab=vcpp}
N 1020 -860 1020 -660 {lab=#net2}
N 900 -890 900 -840 {lab=di_clk}
N 900 -840 1100 -840 {lab=di_clk}
N 1100 -890 1100 -840 {lab=di_clk}
N 1100 -840 1140 -840 {lab=di_clk}
N 180 -710 460 -710 {lab=vinp}
N 660 -580 660 -560 {lab=vs}
N 660 -460 660 -420 {lab=VSS}
N 660 -510 720 -510 {lab=VSS}
N 720 -510 720 -460 {lab=VSS}
N 660 -460 720 -460 {lab=VSS}
N 660 -480 660 -460 {lab=VSS}
N 180 -510 620 -510 {lab=di_clk}
N 660 -560 660 -540 {lab=vs}
N 1240 -1100 1240 -800 {lab=vcpp}
N 1240 -770 1240 -500 {lab=vcpn}
N 500 -860 500 -770 {lab=vcpn}
N 480 -770 500 -770 {lab=vcpn}
N 615 -770 1240 -770 {lab=vcpn}
N 615 -770 700 -610 {lab=vcpn}
N 500 -770 615 -770 {lab=vcpn}
N 1460 -530 1520 -530 {lab=VSS}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 660 -1040 3 0 {name=p11 lab=VDD}
C {devices/opin.sym} 1380 -680 2 0 {name=p2 lab=voutp}
C {devices/opin.sym} 2220 -640 0 0 {name=p3 lab=voutn}
C {ipin.sym} 1380 -530 0 0 {name=p6 lab=di_clk_n}
C {devices/iopin.sym} 660 -420 1 0 {name=p8 lab=VSS}
C {ipin.sym} 180 -710 0 0 {name=p9 lab=vinp}
C {ipin.sym} 1140 -710 2 0 {name=p10 lab=vinn}
C {ipin.sym} 180 -510 0 0 {name=p12 lab=di_clk}
C {sg13g2_pr/sg13_lv_nmos.sym} 480 -710 0 0 {name=M1a
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 840 -710 0 1 {name=M2a
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -510 0 0 {name=M3
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 580 -710 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 740 -710 2 1 {name=p14 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 480 -890 0 0 {name=M4a
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 840 -890 0 1 {name=M5a
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 180 -840 0 0 {name=p15 sig_type=std_logic lab=di_clk}
C {lab_wire.sym} 700 -800 0 0 {name=p1 sig_type=std_logic lab=vcpp}
C {lab_wire.sym} 480 -770 2 1 {name=p4 sig_type=std_logic lab=vcpn}
C {sg13g2_pr/sg13_lv_nmos.sym} 1440 -530 0 0 {name=M12
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1640 -890 0 1 {name=M8
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1720 -530 0 1 {name=M10
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1880 -530 0 0 {name=M11
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2160 -530 0 1 {name=M13
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1800 -420 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1620 -1040 3 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1240 -420 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2340 -420 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {capa.sym} 1240 -470 0 0 {name=CP1
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2340 -470 0 0 {name=CP2
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {sg13g2_pr/sg13_lv_pmos.sym} 1960 -890 0 0 {name=M9
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 1980 -1040 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 1560 -770 0 0 {name=M6
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 2040 -770 0 1 {name=M7
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 1660 -770 2 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1940 -770 2 1 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2220 -530 0 1 {name=p21 sig_type=std_logic lab=di_clk_n}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 -890 0 0 {name=M4b
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1040 -890 0 1 {name=M5b
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 520 -610 0 1 {name=M1b
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 800 -610 0 0 {name=M2b
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 900 -610 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 420 -610 2 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1140 -840 0 1 {name=p24 sig_type=std_logic lab=di_clk}
C {lab_wire.sym} 660 -580 0 1 {name=p26 sig_type=std_logic lab=vs}
