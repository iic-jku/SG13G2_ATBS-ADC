v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Stacked SG13G2 LV PMOS Transistor x8} 760 -1690 0 0 1 1 {}
N 1260 -520 1260 -480 {lab=D}
N 1260 -1220 1260 -1180 {lab=#net1}
N 1260 -1320 1260 -1280 {lab=S}
N 1180 -1250 1220 -1250 {lab=G}
N 1180 -1150 1220 -1150 {lab=G}
N 1140 -900 1180 -900 {lab=G}
N 1180 -1250 1180 -1150 {lab=G}
N 1260 -1250 1360 -1250 {lab=B}
N 1260 -1150 1360 -1150 {lab=B}
N 1360 -900 1400 -900 {lab=B}
N 1360 -1250 1360 -1150 {lab=B}
N 1260 -1020 1260 -980 {lab=#net2}
N 1260 -1120 1260 -1080 {lab=#net3}
N 1260 -820 1260 -780 {lab=#net4}
N 1260 -920 1260 -880 {lab=#net5}
N 1260 -620 1260 -580 {lab=#net6}
N 1260 -720 1260 -680 {lab=#net7}
N 1180 -650 1180 -550 {lab=G}
N 1180 -550 1220 -550 {lab=G}
N 1180 -650 1220 -650 {lab=G}
N 1180 -750 1180 -650 {lab=G}
N 1180 -750 1220 -750 {lab=G}
N 1180 -850 1180 -750 {lab=G}
N 1180 -1050 1220 -1050 {lab=G}
N 1180 -1150 1180 -1050 {lab=G}
N 1180 -950 1220 -950 {lab=G}
N 1180 -1050 1180 -950 {lab=G}
N 1180 -850 1220 -850 {lab=G}
N 1180 -900 1180 -850 {lab=G}
N 1360 -650 1360 -550 {lab=B}
N 1260 -550 1360 -550 {lab=B}
N 1260 -650 1360 -650 {lab=B}
N 1360 -750 1360 -650 {lab=B}
N 1260 -1050 1360 -1050 {lab=B}
N 1360 -1150 1360 -1050 {lab=B}
N 1260 -950 1360 -950 {lab=B}
N 1360 -1050 1360 -950 {lab=B}
N 1260 -850 1360 -850 {lab=B}
N 1360 -900 1360 -850 {lab=B}
N 1260 -750 1360 -750 {lab=B}
N 1360 -850 1360 -750 {lab=B}
N 1360 -950 1360 -900 {lab=B}
N 1180 -950 1180 -900 {lab=G}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1260 -480 1 0 {name=p1 lab=D}
C {devices/iopin.sym} 1260 -1320 3 0 {name=p2 lab=S}
C {devices/iopin.sym} 1140 -900 2 0 {name=p3 lab=G}
C {devices/iopin.sym} 1400 -900 0 0 {name=p4 lab=B}
C {sg13g2_pr/sg13_lv_pmos.sym} 1240 -1250 0 0 {name=M1
l=L_P/8
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1240 -1150 0 0 {name=M2
l=L_P/8
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1240 -1050 0 0 {name=M3
l=L_P/8
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1240 -950 0 0 {name=M4
l=L_P/8
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1240 -850 0 0 {name=M5
l=L_P/8
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1240 -750 0 0 {name=M6
l=L_P/8
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1240 -650 0 0 {name=M7
l=L_P/8
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1240 -550 0 0 {name=M8
l=L_P/8
w=W_P
ng=NG_P
m=M_P
model=sg13_lv_pmos
spiceprefix=X
}
