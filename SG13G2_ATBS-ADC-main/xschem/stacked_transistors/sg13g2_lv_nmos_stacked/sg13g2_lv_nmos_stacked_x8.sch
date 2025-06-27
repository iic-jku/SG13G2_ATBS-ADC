v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Stacked SG13G2 LV NMOS Transistor x8} 760 -1690 0 0 1 1 {}
N 1240 -520 1240 -480 {lab=S}
N 1240 -620 1240 -580 {lab=#net1}
N 1240 -720 1240 -680 {lab=#net2}
N 1160 -650 1200 -650 {lab=G}
N 1160 -550 1200 -550 {lab=G}
N 1120 -900 1160 -900 {lab=G}
N 1160 -650 1160 -550 {lab=G}
N 1240 -650 1340 -650 {lab=B}
N 1240 -550 1340 -550 {lab=B}
N 1340 -900 1380 -900 {lab=B}
N 1340 -650 1340 -550 {lab=B}
N 1240 -820 1240 -780 {lab=#net3}
N 1240 -920 1240 -880 {lab=#net4}
N 1240 -1020 1240 -980 {lab=#net5}
N 1240 -1120 1240 -1080 {lab=#net6}
N 1240 -1220 1240 -1180 {lab=#net7}
N 1240 -1320 1240 -1280 {lab=D}
N 1240 -1250 1340 -1250 {lab=B}
N 1340 -750 1340 -650 {lab=B}
N 1240 -750 1340 -750 {lab=B}
N 1340 -850 1340 -750 {lab=B}
N 1240 -850 1340 -850 {lab=B}
N 1340 -900 1340 -850 {lab=B}
N 1240 -950 1340 -950 {lab=B}
N 1340 -1050 1340 -950 {lab=B}
N 1240 -1050 1340 -1050 {lab=B}
N 1340 -1150 1340 -1050 {lab=B}
N 1240 -1150 1340 -1150 {lab=B}
N 1340 -1250 1340 -1150 {lab=B}
N 1160 -750 1160 -650 {lab=G}
N 1160 -1250 1200 -1250 {lab=G}
N 1160 -1150 1200 -1150 {lab=G}
N 1160 -1250 1160 -1150 {lab=G}
N 1160 -1050 1200 -1050 {lab=G}
N 1160 -1150 1160 -1050 {lab=G}
N 1160 -950 1200 -950 {lab=G}
N 1160 -1050 1160 -950 {lab=G}
N 1160 -850 1200 -850 {lab=G}
N 1160 -900 1160 -850 {lab=G}
N 1160 -750 1200 -750 {lab=G}
N 1160 -850 1160 -750 {lab=G}
N 1340 -950 1340 -900 {lab=B}
N 1160 -950 1160 -900 {lab=G}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1240 -1320 3 0 {name=p1 lab=D}
C {devices/iopin.sym} 1240 -480 1 0 {name=p2 lab=S}
C {devices/iopin.sym} 1120 -900 2 0 {name=p3 lab=G}
C {devices/iopin.sym} 1380 -900 0 0 {name=p4 lab=B}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -550 0 0 {name=M1
l=L_N/8
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -650 0 0 {name=M2
l=L_N/8
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -750 0 0 {name=M3
l=L_N/8
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -850 0 0 {name=M4
l=L_N/8
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -950 0 0 {name=M5
l=L_N/8
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -1050 0 0 {name=M6
l=L_N/8
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -1150 0 0 {name=M7
l=L_N/8
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -1250 0 0 {name=M8
l=L_N/8
w=W_N
ng=NG_N
m=M_N
model=sg13_lv_nmos
spiceprefix=X
}
