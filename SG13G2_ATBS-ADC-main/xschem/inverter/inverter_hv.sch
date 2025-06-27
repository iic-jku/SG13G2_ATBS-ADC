v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Parameterizable Inverter with HV Transistors} 680 -1690 0 0 1 1 {}
T {Due to the mobility difference between holes and electrons, the size of PMOS is 2-3 times larger than that of NMOS for an inverter.
The sizing, however, depends very much on the application. If we don't care about the output rising time, we could just simply make (W/L)p=(W/L)n.

The following three cases are the most relevant:
1. (W/L)p=(W/L)n
2. (W/L)p=2(W/L)n
3. (W/L)p=3(W/L)n
Compare the propagation delay in these cases.

HV transistor is useable at L > 0.35um.} 240 -1410 0 0 0.5 0.5 {}
N 1180 -840 1240 -840 {
lab=VDD}
N 1240 -900 1240 -840 {
lab=VDD}
N 1180 -900 1180 -870 {
lab=VDD}
N 1180 -900 1240 -900 {
lab=VDD}
N 1240 -920 1240 -900 {
lab=VDD}
N 1180 -690 1180 -660 {
lab=VSS}
N 1180 -660 1240 -660 {
lab=VSS}
N 1240 -720 1240 -660 {
lab=VSS}
N 1180 -720 1240 -720 {
lab=VSS}
N 1240 -660 1240 -640 {
lab=VSS}
N 1180 -780 1180 -750 {
lab=vout}
N 1120 -780 1120 -720 {
lab=vin}
N 1080 -780 1120 -780 {
lab=vin}
N 1120 -840 1120 -780 {
lab=vin}
N 1120 -840 1140 -840 {
lab=vin}
N 1120 -720 1140 -720 {
lab=vin}
N 1180 -780 1280 -780 {
lab=vout}
N 1180 -810 1180 -780 {
lab=vout}
C {devices/ipin.sym} 1080 -780 0 0 {name=p10 lab=vin}
C {devices/iopin.sym} 1240 -920 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 1240 -640 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 1280 -780 0 0 {name=p2 lab=vout}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {sg13g2_pr/sg13_hv_pmos.sym} 1160 -840 0 0 {name=M1
l=L_P
w=W_P
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1160 -720 0 0 {name=M2
l=L_N
w=W_N
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
