v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Symmetric NOR Gate} 960 -1700 0 0 1 1 {}
T {Symmetric NOR gate [Schmickl] for better symmetry in design and layout compared to a regular NOR gate 
is used for the SR-latch at the output of the comparator.} 500 -1520 0 0 0.5 0.5 {}
N 1120 -690 1180 -690 {lab=VSS}
N 1380 -690 1440 -690 {lab=VSS}
N 1120 -660 1120 -620 {lab=VSS}
N 1180 -690 1180 -620 {lab=VSS}
N 1380 -660 1380 -620 {lab=VSS}
N 1380 -620 1440 -620 {lab=VSS}
N 1440 -690 1440 -620 {lab=VSS}
N 1120 -1120 1120 -1080 {lab=VDD}
N 1180 -1120 1180 -1050 {lab=VDD}
N 1120 -1020 1120 -940 {lab=#net1}
N 1180 -1050 1180 -910 {lab=VDD}
N 1120 -760 1120 -720 {lab=C}
N 1040 -910 1080 -910 {lab=B}
N 1040 -690 1080 -690 {lab=A}
N 1300 -690 1340 -690 {lab=B}
N 1280 -760 1380 -760 {lab=C}
N 1120 -620 1180 -620 {lab=VSS}
N 1280 -620 1380 -620 {lab=VSS}
N 1280 -620 1280 -600 {lab=VSS}
N 1180 -620 1280 -620 {lab=VSS}
N 1380 -760 1380 -720 {lab=C}
N 1120 -1050 1180 -1050 {lab=VDD}
N 1120 -1120 1180 -1120 {lab=VDD}
N 1120 -910 1180 -910 {lab=VDD}
N 1380 -1120 1380 -1080 {lab=VDD}
N 1440 -1120 1440 -1050 {lab=VDD}
N 1380 -1020 1380 -940 {lab=#net2}
N 1440 -1050 1440 -910 {lab=VDD}
N 1300 -910 1340 -910 {lab=A}
N 1380 -1050 1440 -1050 {lab=VDD}
N 1380 -1120 1440 -1120 {lab=VDD}
N 1380 -910 1440 -910 {lab=VDD}
N 1300 -1050 1340 -1050 {lab=B}
N 1280 -1120 1380 -1120 {lab=VDD}
N 1040 -1050 1080 -1050 {lab=A}
N 1280 -1140 1280 -1120 {lab=VDD}
N 1180 -1120 1280 -1120 {lab=VDD}
N 1120 -880 1120 -840 {lab=C}
N 1280 -840 1380 -840 {lab=C}
N 1380 -880 1380 -840 {lab=C}
N 1280 -800 1280 -760 {lab=C}
N 1120 -840 1280 -840 {lab=C}
N 1120 -760 1280 -760 {lab=C}
N 1280 -800 1480 -800 {lab=C}
N 1280 -840 1280 -800 {lab=C}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1280 -1140 3 0 {name=p11 lab=VDD}
C {devices/opin.sym} 1480 -800 0 0 {name=p3 lab=C}
C {devices/iopin.sym} 1280 -600 1 0 {name=p8 lab=VSS}
C {ipin.sym} 1040 -690 0 0 {name=p9 lab=A}
C {ipin.sym} 1300 -690 0 0 {name=p10 lab=B}
C {sg13g2_pr/sg13_lv_nmos.sym} 1100 -690 0 0 {name=M1
l=L_N
w=W_N
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1360 -690 0 0 {name=M2
l=L_N
w=W_N
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1100 -910 0 0 {name=M3
l=L_P
w=W_P
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1100 -1050 0 0 {name=M4
l=L_P
w=W_P
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1360 -910 0 0 {name=M5
l=L_P
w=W_P
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1360 -1050 0 0 {name=M6
l=L_P
w=W_P
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 1040 -1050 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_wire.sym} 1040 -910 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_wire.sym} 1300 -1050 0 0 {name=p4 sig_type=std_logic lab=B}
C {lab_wire.sym} 1300 -910 0 0 {name=p5 sig_type=std_logic lab=A}
