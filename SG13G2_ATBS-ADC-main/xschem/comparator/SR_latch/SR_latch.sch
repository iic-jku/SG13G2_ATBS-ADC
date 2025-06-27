v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {NOR-based SR-latch} 960 -1700 0 0 1 1 {}
T {SR-latch truth table:
S R | Q Qn
0 0 | latch latch
0 1 | 0 1
1 0 | 1 0
1 1 | 0 0} 1100 -1500 0 0 0.5 0.5 {}
N 1180 -1160 1180 -1140 {lab=VDD}
N 1180 -1020 1180 -1000 {lab=VSS}
N 1180 -800 1180 -780 {lab=VDD}
N 1180 -660 1180 -640 {lab=VSS}
N 1040 -1100 1120 -1100 {lab=S}
N 1040 -700 1120 -700 {lab=#net1}
N 1080 -740 1120 -740 {lab=Q}
N 1080 -1060 1120 -1060 {lab=Qn}
N 1340 -720 1420 -720 {lab=Qn}
N 1340 -1080 1420 -1080 {lab=Q}
N 1080 -860 1080 -740 {lab=Q}
N 1340 -1080 1340 -960 {lab=Q}
N 1260 -1080 1340 -1080 {lab=Q}
N 1080 -1060 1080 -940 {lab=Qn}
N 1340 -840 1340 -720 {lab=Qn}
N 1260 -720 1340 -720 {lab=Qn}
N 1080 -940 1340 -840 {lab=Qn}
N 1080 -860 1340 -960 {lab=Q}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1180 -1160 3 0 {name=p11 lab=VDD}
C {devices/opin.sym} 1420 -1080 0 0 {name=p3 lab=Q}
C {devices/iopin.sym} 1180 -1000 1 0 {name=p8 lab=VSS}
C {ipin.sym} 1040 -700 0 0 {name=p9 lab=S}
C {ipin.sym} 1040 -1100 0 0 {name=p10 lab=R}
C {lab_wire.sym} 1180 -800 3 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1180 -640 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {comparator/NOR_gate/NOR_gate.sym} 1180 -1080 0 0 {name=x1 W_P=W_P_SR L_P=L_P_SR W_N=W_N_SR L_N=L_N_SR}
C {devices/opin.sym} 1420 -720 0 0 {name=p1 lab=Qn}
C {comparator/NOR_gate/NOR_gate.sym} 1180 -720 0 0 {name=x2 W_P=W_P_SR L_P=L_P_SR W_N=W_N_SR L_N=L_N_SR}
