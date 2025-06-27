v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Stacked SG13G2 LV PMOS Transistor x2} 760 -1690 0 0 1 1 {}
N 1240 -880 1240 -840 {lab=D}
N 1240 -980 1240 -940 {lab=#net1}
N 1240 -1080 1240 -1040 {lab=S}
N 1160 -1010 1200 -1010 {lab=G}
N 1160 -960 1160 -910 {lab=G}
N 1160 -910 1200 -910 {lab=G}
N 1120 -960 1160 -960 {lab=G}
N 1160 -1010 1160 -960 {lab=G}
N 1240 -1010 1340 -1010 {lab=B}
N 1340 -960 1340 -910 {lab=B}
N 1240 -910 1340 -910 {lab=B}
N 1340 -960 1380 -960 {lab=B}
N 1340 -1010 1340 -960 {lab=B}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1240 -840 1 0 {name=p1 lab=D}
C {devices/iopin.sym} 1240 -1080 3 0 {name=p2 lab=S}
C {devices/iopin.sym} 1120 -960 2 0 {name=p3 lab=G}
C {devices/iopin.sym} 1380 -960 0 0 {name=p4 lab=B}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -1010 0 0 {name=M1
l=L_P/2
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -910 0 0 {name=M2
l=L_P/2
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
