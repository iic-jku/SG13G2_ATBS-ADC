v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Ideal DT Comparator using a voltage-controlled voltage source (VCVS)} 320 -1550 2 1 1 1 {}
N 660 -920 740 -920 {
lab=vinp}
N 740 -920 740 -880 {
lab=vinp}
N 660 -780 740 -780 {
lab=vinn}
N 740 -820 740 -780 {
lab=vinn}
N 840 -920 840 -880 {
lab=#net1}
N 840 -820 840 -780 {
lab=VSS}
N 1000 -940 1040 -940 {lab=di_clk}
N 1020 -900 1040 -900 {lab=vrst}
N 1220 -940 1260 -940 {lab=vout_Q}
N 1260 -940 1260 -920 {lab=vout_Q}
N 1260 -960 1260 -940 {lab=vout_Q}
N 840 -920 1040 -920 {lab=#net1}
N 1220 -920 1240 -920 {lab=#net2}
N 1260 -800 1260 -780 {lab=VSS}
N 840 -780 1260 -780 {
lab=VSS}
N 1020 -880 1260 -880 {lab=vrst}
N 1260 -880 1260 -860 {lab=vrst}
N 1720 -960 1740 -960 {lab=VDD}
N 1500 -780 1740 -780 {lab=VSS}
N 1020 -900 1020 -880 {lab=vrst}
N 1000 -880 1020 -880 {lab=vrst}
N 1260 -920 1420 -920 {lab=vout_Q}
N 1500 -900 1500 -780 {lab=VSS}
N 1260 -780 1500 -780 {lab=VSS}
N 1690 -920 1740 -920 {lab=vout}
N 1580 -920 1630 -920 {lab=#net3}
C {devices/ipin.sym} 660 -780 2 1 {name=p2 lab=vinn}
C {devices/opin.sym} 1740 -920 0 0 {name=p3 lab=vout}
C {devices/ipin.sym} 660 -920 0 0 {name=p4 lab=vinp}
C {devices/iopin.sym} 1740 -780 0 0 {name=p5 lab=VSS}
C {devices/res.sym} 740 -850 0 0 {name=R1
value=\{Rin\}
footprint=1206
device=resistor
m=1}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/asrc.sym} 840 -850 0 0 {name=B1 function="v=v(VDD)/2*tanh(\{A\}/(v(VDD)/2)*(v(vinp)-v(vinn)-\{Voffs\}))+\{Vcm\}"}
C {devices/res.sym} 1660 -920 1 0 {name=R3
value=\{Rout\}
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 1740 -960 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 1000 -940 0 0 {name=p6 lab=di_clk}
C {devices/lab_wire.sym} 1260 -960 0 1 {name=l5 sig_type=std_logic lab=vout_Q}
C {noconn.sym} 1240 -920 2 0 {name=l2}
C {devices/vsource.sym} 1260 -830 0 0 {name=vrst value="pulse(1.5, 0, 0, 1p, 1p, 100p, 200p, 1)"}
C {noconn.sym} 1720 -960 2 1 {name=l3}
C {devices/lab_wire.sym} 1000 -880 0 0 {name=l4 sig_type=std_logic lab=vrst}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 1130 -920 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ngspice_analog_delay.sym} 1500 -910 0 0 {name=A1 del=tpd
format="@name @pinlist del_subckt
.model del_subckt delay(delay=@del buffer_size=8192)"}
