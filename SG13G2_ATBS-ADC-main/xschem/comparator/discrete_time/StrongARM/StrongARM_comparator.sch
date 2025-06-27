v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Discrete-time StrongARM comparator} 730 -1720 0 0 1 1 {}
T {Advantages:
-) Fast decisions due to strong positive feedback
-) Differential input enables a low offset

Disadvantages:
-) Requires a large voltage headroom due to stacked transistors which is a problem for low-voltage nm CMOS technologies
-) No isolation between the regeneration latch and the differential input stage and therefore suffers from significant kickback noise.
-) Speed and offset are very dependent on the common-mode voltage of the input. 
Therefore, this comparator is not good for propagation delay dispersion and input offset voltage dispersion.} 380 -1600 0 0 0.5 0.5 {}
N 1100 -1100 1100 -1020 {lab=VDD}
N 1040 -990 1100 -990 {lab=VDD}
N 1040 -1100 1040 -990 {lab=VDD}
N 1040 -1100 1100 -1100 {lab=VDD}
N 1420 -1100 1420 -1020 {lab=VDD}
N 1420 -990 1480 -990 {lab=VDD}
N 1480 -1100 1480 -990 {lab=VDD}
N 1420 -1100 1480 -1100 {lab=VDD}
N 1140 -990 1220 -990 {lab=voutp}
N 1300 -990 1380 -990 {lab=voutn}
N 1220 -990 1300 -920 {lab=voutp}
N 1300 -920 1420 -920 {lab=voutp}
N 1420 -960 1420 -920 {lab=voutp}
N 1220 -920 1300 -990 {lab=voutn}
N 1100 -920 1220 -920 {lab=voutn}
N 1100 -960 1100 -920 {lab=voutn}
N 1140 -770 1220 -770 {lab=voutp}
N 1300 -770 1380 -770 {lab=voutn}
N 1100 -840 1100 -800 {lab=voutn}
N 1100 -840 1220 -840 {lab=voutn}
N 1220 -840 1300 -770 {lab=voutn}
N 1220 -770 1300 -840 {lab=voutp}
N 1300 -840 1420 -840 {lab=voutp}
N 1420 -840 1420 -800 {lab=voutp}
N 1100 -880 1100 -840 {lab=voutn}
N 1420 -880 1420 -840 {lab=voutp}
N 1100 -920 1100 -880 {lab=voutn}
N 980 -630 1060 -630 {lab=vinp}
N 1460 -630 1540 -630 {lab=vinn}
N 1100 -700 1100 -660 {lab=#net1}
N 1420 -700 1420 -660 {lab=#net2}
N 1100 -600 1100 -560 {lab=vs}
N 1420 -600 1420 -560 {lab=vs}
N 1260 -420 1260 -340 {lab=VSS}
N 1260 -560 1420 -560 {lab=vs}
N 1260 -1100 1420 -1100 {lab=VDD}
N 1260 -560 1260 -480 {lab=vs}
N 1100 -560 1260 -560 {lab=vs}
N 1260 -450 1320 -450 {lab=VSS}
N 1320 -450 1320 -340 {lab=VSS}
N 1260 -340 1320 -340 {lab=VSS}
N 980 -450 1220 -450 {lab=di_clk}
N 1260 -340 1260 -320 {lab=VSS}
N 1260 -1120 1260 -1100 {lab=VDD}
N 1100 -1100 1260 -1100 {lab=VDD}
N 860 -920 1100 -920 {lab=voutn}
N 860 -990 920 -990 {lab=VDD}
N 920 -1100 920 -990 {lab=VDD}
N 920 -1100 1040 -1100 {lab=VDD}
N 860 -1100 860 -1020 {lab=VDD}
N 860 -1100 920 -1100 {lab=VDD}
N 860 -960 860 -920 {lab=voutn}
N 1420 -920 1660 -920 {lab=voutp}
N 1660 -960 1660 -920 {lab=voutp}
N 1600 -990 1660 -990 {lab=VDD}
N 1600 -1100 1600 -990 {lab=VDD}
N 1480 -1100 1600 -1100 {lab=VDD}
N 1660 -1100 1660 -1020 {lab=VDD}
N 1600 -1100 1660 -1100 {lab=VDD}
N 1100 -740 1100 -700 {lab=#net1}
N 620 -700 1100 -700 {lab=#net1}
N 620 -960 620 -700 {lab=#net1}
N 620 -1100 620 -1020 {lab=VDD}
N 680 -1100 860 -1100 {lab=VDD}
N 620 -990 680 -990 {lab=VDD}
N 680 -1100 680 -990 {lab=VDD}
N 620 -1100 680 -1100 {lab=VDD}
N 760 -990 820 -990 {lab=di_clk}
N 520 -990 580 -990 {lab=di_clk}
N 460 -920 520 -920 {lab=di_clk}
N 520 -990 520 -920 {lab=di_clk}
N 520 -920 760 -920 {lab=di_clk}
N 760 -990 760 -920 {lab=di_clk}
N 1420 -700 1900 -700 {lab=#net2}
N 1420 -740 1420 -700 {lab=#net2}
N 1700 -990 1760 -990 {lab=di_clk}
N 1760 -990 1760 -920 {lab=di_clk}
N 2000 -920 2060 -920 {lab=di_clk}
N 1940 -990 2000 -990 {lab=di_clk}
N 1840 -990 1900 -990 {lab=VDD}
N 1840 -1100 1900 -1100 {lab=VDD}
N 1900 -1100 1900 -1020 {lab=VDD}
N 1840 -1100 1840 -990 {lab=VDD}
N 1660 -1100 1840 -1100 {lab=VDD}
N 1760 -920 2000 -920 {lab=di_clk}
N 2000 -990 2000 -920 {lab=di_clk}
N 1900 -960 1900 -700 {lab=#net2}
N 1020 -770 1100 -770 {lab=VSS}
N 1420 -770 1500 -770 {lab=VSS}
N 1100 -630 1180 -630 {lab=VSS}
N 1340 -630 1420 -630 {lab=VSS}
N 1260 -580 1260 -560 {lab=vs}
N 900 -880 1100 -880 {lab=voutn}
N 900 -780 900 -740 {lab=VSS}
N 900 -880 900 -840 {lab=voutn}
N 820 -880 900 -880 {lab=voutn}
N 1620 -880 1700 -880 {lab=voutp}
N 1420 -920 1420 -880 {lab=voutp}
N 1620 -880 1620 -840 {lab=voutp}
N 1420 -880 1620 -880 {lab=voutp}
N 1620 -780 1620 -740 {lab=VSS}
C {devices/iopin.sym} 1260 -1120 3 0 {name=p11 lab=VDD}
C {devices/opin.sym} 1700 -880 0 0 {name=p2 lab=voutp}
C {devices/iopin.sym} 1260 -320 1 0 {name=p1 lab=VSS}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/opin.sym} 820 -880 2 0 {name=p3 lab=voutn}
C {ipin.sym} 980 -630 0 0 {name=p4 lab=vinp}
C {ipin.sym} 1540 -630 2 0 {name=p5 lab=vinn}
C {ipin.sym} 980 -450 0 0 {name=p7 lab=di_clk}
C {sg13g2_pr/sg13_lv_nmos.sym} 1080 -630 0 0 {name=M1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1440 -630 0 1 {name=M2
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1120 -770 0 1 {name=M3
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1400 -770 0 0 {name=M4
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1120 -990 0 1 {name=M5
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1400 -990 0 0 {name=M6
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1240 -450 0 0 {name=M7
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 840 -990 0 0 {name=M8
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 600 -990 0 0 {name=M9
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1680 -990 0 1 {name=M10
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1920 -990 0 1 {name=M11
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 460 -920 0 0 {name=p6 sig_type=std_logic lab=di_clk}
C {lab_wire.sym} 2060 -920 0 1 {name=p8 sig_type=std_logic lab=di_clk}
C {lab_wire.sym} 1020 -770 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1500 -770 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1180 -630 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1340 -630 2 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1260 -580 0 0 {name=p14 sig_type=std_logic lab=vs}
C {capa.sym} 900 -810 0 0 {name=CPn
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 900 -740 2 1 {name=p15 sig_type=std_logic lab=VSS}
C {capa.sym} 1620 -810 0 0 {name=CPp
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1620 -740 2 0 {name=p16 sig_type=std_logic lab=VSS}
