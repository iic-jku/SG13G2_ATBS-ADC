v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Stacked SG13G2 LV NMOS Transistor x4} 760 -1690 0 0 1 1 {}
N 1240 -760 1240 -720 {lab=S}
N 1240 -860 1240 -820 {lab=#net1}
N 1160 -890 1200 -890 {lab=G}
N 1160 -790 1200 -790 {lab=G}
N 1120 -940 1160 -940 {lab=G}
N 1160 -890 1160 -790 {lab=G}
N 1240 -890 1340 -890 {lab=B}
N 1240 -790 1340 -790 {lab=B}
N 1340 -940 1380 -940 {lab=B}
N 1340 -890 1340 -790 {lab=B}
N 1240 -1060 1240 -1020 {lab=#net2}
N 1240 -960 1240 -920 {lab=#net3}
N 1240 -1160 1240 -1120 {lab=D}
N 1160 -1090 1200 -1090 {lab=G}
N 1160 -940 1160 -890 {lab=G}
N 1160 -990 1200 -990 {lab=G}
N 1160 -1090 1160 -990 {lab=G}
N 1240 -1090 1340 -1090 {lab=B}
N 1340 -940 1340 -890 {lab=B}
N 1240 -990 1340 -990 {lab=B}
N 1340 -1090 1340 -990 {lab=B}
N 1340 -990 1340 -940 {lab=B}
N 1160 -990 1160 -940 {lab=G}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1240 -1160 3 0 {name=p1 lab=D}
C {devices/iopin.sym} 1240 -720 1 0 {name=p2 lab=S}
C {devices/iopin.sym} 1120 -940 2 0 {name=p3 lab=G}
C {devices/iopin.sym} 1380 -940 0 0 {name=p4 lab=B}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -790 0 0 {name=M1
l=L_N/4
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -890 0 0 {name=M2
l=L_N/4
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -990 0 0 {name=M3
l=L_N/4
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -1090 0 0 {name=M4
l=L_N/4
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
