v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Stacked SG13G2 LV NMOS Transistor x6} 760 -1690 0 0 1 1 {}
N 1220 -620 1220 -580 {lab=S}
N 1220 -720 1220 -680 {lab=#net1}
N 1140 -750 1180 -750 {lab=G}
N 1140 -650 1180 -650 {lab=G}
N 1100 -900 1140 -900 {lab=G}
N 1140 -750 1140 -650 {lab=G}
N 1220 -750 1320 -750 {lab=B}
N 1220 -650 1320 -650 {lab=B}
N 1320 -900 1360 -900 {lab=B}
N 1320 -750 1320 -650 {lab=B}
N 1220 -920 1220 -880 {lab=#net2}
N 1220 -820 1220 -780 {lab=#net3}
N 1220 -1020 1220 -980 {lab=#net4}
N 1220 -1120 1220 -1080 {lab=#net5}
N 1220 -1220 1220 -1180 {lab=D}
N 1320 -850 1320 -750 {lab=B}
N 1220 -1150 1320 -1150 {lab=B}
N 1220 -850 1320 -850 {lab=B}
N 1320 -900 1320 -850 {lab=B}
N 1220 -950 1320 -950 {lab=B}
N 1320 -1050 1320 -950 {lab=B}
N 1220 -1050 1320 -1050 {lab=B}
N 1320 -1150 1320 -1050 {lab=B}
N 1140 -1150 1180 -1150 {lab=G}
N 1140 -850 1140 -750 {lab=G}
N 1140 -1050 1180 -1050 {lab=G}
N 1140 -1150 1140 -1050 {lab=G}
N 1140 -950 1180 -950 {lab=G}
N 1140 -1050 1140 -950 {lab=G}
N 1140 -850 1180 -850 {lab=G}
N 1140 -900 1140 -850 {lab=G}
N 1320 -950 1320 -900 {lab=B}
N 1140 -950 1140 -900 {lab=G}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1220 -1220 3 0 {name=p1 lab=D}
C {devices/iopin.sym} 1220 -580 1 0 {name=p2 lab=S}
C {devices/iopin.sym} 1100 -900 2 0 {name=p3 lab=G}
C {devices/iopin.sym} 1360 -900 0 0 {name=p4 lab=B}
C {sg13g2_pr/sg13_lv_nmos.sym} 1200 -650 0 0 {name=M1
l=L_N/6
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1200 -750 0 0 {name=M2
l=L_N/6
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1200 -850 0 0 {name=M3
l=L_N/6
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1200 -950 0 0 {name=M4
l=L_N/6
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1200 -1050 0 0 {name=M5
l=L_N/6
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1200 -1150 0 0 {name=M6
l=L_N/6
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
