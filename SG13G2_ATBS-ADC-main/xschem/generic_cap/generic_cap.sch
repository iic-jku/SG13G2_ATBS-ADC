v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Generic Capacitor} 980 -1660 0 0 1 1 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1340 -870 0 0 0.3 0.3 {}
N 1140 -900 1170 -900 {lab=vcap_2}
N 1140 -900 1140 -800 {lab=vcap_2}
N 1200 -800 1260 -800 {lab=vcap_2}
N 1260 -900 1260 -800 {lab=vcap_2}
N 1230 -900 1260 -900 {lab=vcap_2}
N 1200 -900 1200 -800 {lab=vcap_2}
N 1140 -800 1200 -800 {lab=vcap_2}
N 1200 -1100 1200 -940 {lab=vcap_1}
N 1200 -800 1200 -640 {lab=vcap_2}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {iopin.sym} 1200 -1100 3 0 {name=p1 lab=vcap_1}
C {iopin.sym} 1200 -640 1 0 {name=p2 lab=vcap_2}
C {sg13g2_pr/sg13_lv_pmos.sym} 1200 -920 1 0 {name=M1
l=L_CAP
w=W_CAP
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
