v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Parameterizable Buffer} 920 -1680 0 0 1 1 {}
N 1160 -980 1380 -980 {
lab=#net1}
N 1080 -1080 1080 -1020 {
lab=VDD}
N 1080 -940 1080 -880 {
lab=VSS}
N 1440 -1080 1440 -1020 {
lab=VDD}
N 1440 -940 1440 -880 {
lab=VSS}
N 1520 -980 1640 -980 {
lab=vout}
N 900 -980 1020 -980 {
lab=vin}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/ipin.sym} 900 -980 0 0 {name=p10 lab=vin}
C {devices/iopin.sym} 1080 -1080 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 1080 -880 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 1640 -980 0 0 {name=p2 lab=vout}
C {lab_pin.sym} 1440 -1080 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1440 -880 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {inverter/inverter_hv.sym} 1080 -980 0 0 {name=x1 W_P=W_P_INV L_P=L_P_INV W_N=W_N_INV L_N=L_N_INV}
C {inverter/inverter_hv.sym} 1440 -980 0 0 {name=x2 W_P=W_P_INV L_P=L_P_INV W_N=W_N_INV L_N=L_N_INV}
