v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Stacked SG13G2 LV PMOS Transistor x6} 760 -1690 0 0 1 1 {}
N 1240 -660 1240 -620 {lab=D}
N 1240 -1160 1240 -1120 {lab=#net1}
N 1240 -1260 1240 -1220 {lab=S}
N 1160 -1190 1200 -1190 {lab=G}
N 1160 -1090 1200 -1090 {lab=G}
N 1120 -940 1160 -940 {lab=G}
N 1160 -1190 1160 -1090 {lab=G}
N 1240 -1190 1340 -1190 {lab=B}
N 1240 -1090 1340 -1090 {lab=B}
N 1340 -940 1380 -940 {lab=B}
N 1340 -1190 1340 -1090 {lab=B}
N 1240 -960 1240 -920 {lab=#net2}
N 1240 -1060 1240 -1020 {lab=#net3}
N 1240 -760 1240 -720 {lab=#net4}
N 1240 -860 1240 -820 {lab=#net5}
N 1160 -790 1160 -690 {lab=G}
N 1160 -690 1200 -690 {lab=G}
N 1240 -690 1340 -690 {lab=B}
N 1340 -790 1340 -690 {lab=B}
N 1240 -990 1340 -990 {lab=B}
N 1340 -1090 1340 -990 {lab=B}
N 1240 -890 1340 -890 {lab=B}
N 1340 -940 1340 -890 {lab=B}
N 1240 -790 1340 -790 {lab=B}
N 1340 -890 1340 -790 {lab=B}
N 1160 -790 1200 -790 {lab=G}
N 1160 -890 1160 -790 {lab=G}
N 1160 -890 1200 -890 {lab=G}
N 1160 -940 1160 -890 {lab=G}
N 1160 -990 1200 -990 {lab=G}
N 1160 -1090 1160 -990 {lab=G}
N 1160 -990 1160 -940 {lab=G}
N 1340 -990 1340 -940 {lab=B}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1240 -620 1 0 {name=p1 lab=D}
C {devices/iopin.sym} 1240 -1260 3 0 {name=p2 lab=S}
C {devices/iopin.sym} 1120 -940 2 0 {name=p3 lab=G}
C {devices/iopin.sym} 1380 -940 0 0 {name=p4 lab=B}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -1190 0 0 {name=M1
l=L_P/6
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -1090 0 0 {name=M2
l=L_P/6
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -990 0 0 {name=M3
l=L_P/6
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -890 0 0 {name=M4
l=L_P/6
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -790 0 0 {name=M5
l=L_P/6
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -690 0 0 {name=M6
l=L_P/6
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
