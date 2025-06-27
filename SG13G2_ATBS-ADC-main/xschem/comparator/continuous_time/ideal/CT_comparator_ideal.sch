v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Ideal CT Comparator using a voltage-controlled voltage source (VCVS)} 320 -1550 2 1 1 1 {}
N 940 -960 1020 -960 {
lab=vinp}
N 1020 -960 1020 -920 {
lab=vinp}
N 940 -820 1020 -820 {
lab=vinn}
N 1020 -860 1020 -820 {
lab=vinn}
N 1120 -960 1120 -920 {
lab=#net1}
N 1120 -960 1200 -960 {
lab=#net1}
N 1120 -860 1120 -820 {
lab=VSS}
N 1280 -940 1280 -820 {lab=VSS}
N 1120 -820 1280 -820 {
lab=VSS}
N 1360 -960 1440 -960 {lab=#net2}
N 1500 -960 1580 -960 {lab=vout}
N 1280 -820 1580 -820 {lab=VSS}
C {devices/ipin.sym} 940 -820 2 1 {name=p2 lab=vinn}
C {devices/opin.sym} 1580 -960 0 0 {name=p3 lab=vout}
C {devices/ipin.sym} 940 -960 0 0 {name=p4 lab=vinp}
C {devices/iopin.sym} 1580 -820 0 0 {name=p5 lab=VSS}
C {devices/res.sym} 1020 -890 0 0 {name=R1
value=\{Rin\}
footprint=1206
device=resistor
m=1}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/asrc.sym} 1120 -890 0 0 {name=B1 function="v=v(VDD)/2*tanh(\{A\}/(v(VDD)/2)*(v(vinp)-v(vinn)-\{Voffs\}))+\{Vcm\}"}
C {devices/res.sym} 1470 -960 3 0 {name=R3
value=\{Rout\}
footprint=1206
device=resistor
m=1}
C {ngspice_analog_delay.sym} 1280 -950 0 0 {name=A1 del=tpd
format="@name @pinlist del_subckt
.model del_subckt delay(delay=@del buffer_size=8192)"}
C {devices/iopin.sym} 1580 -1020 0 0 {name=p1 lab=VDD}
