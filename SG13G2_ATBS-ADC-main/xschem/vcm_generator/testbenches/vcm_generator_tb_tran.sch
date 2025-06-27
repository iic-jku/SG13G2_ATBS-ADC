v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1220 2440 -820 {flags=graph
y1=0
y2=0.76
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=Vcm
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
B 2 1640 -780 2440 -380 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=1.5
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="phi_1
x1.di_phi_1_n
phi_2
x1.di_phi_2_n"
color="4 5 12 21"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
digital=1}
P 4 5 1310 -560 1420 -560 1420 -460 1310 -460 1310 -560 {dash = 8}
T {Design Testbench for transient analysis - Vcm Generator} 570 -1690 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1250 -390 0 0 0.25 0.25 {}
N 780 -560 780 -520 {
lab=VDD}
N 780 -460 780 -420 {
lab=GND}
N 1100 -740 1100 -700 {
lab=VDD}
N 940 -640 1020 -640 {
lab=phi_1}
N 940 -560 1020 -560 {
lab=phi_2}
N 1100 -500 1100 -420 {
lab=GND}
N 780 -880 780 -840 {
lab=GND}
N 1260 -880 1260 -840 {
lab=GND}
N 780 -980 780 -940 {
lab=phi_1}
N 1260 -980 1260 -940 {
lab=phi_2}
N 1340 -480 1340 -420 {
lab=GND}
N 1340 -600 1340 -540 {
lab=Vcm}
N 1180 -600 1340 -600 {
lab=Vcm}
N 1340 -600 1480 -600 {lab=Vcm}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/vsource.sym} 780 -490 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 780 -420 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 780 -560 0 0 {name=l8 lab=VDD}
C {devices/code_shown.sym} 60 -1370 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1700 -1390 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1700 -1270 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/vcm_generator_tb_tran.raw tran"
}
C {devices/launcher.sym} 1700 -1330 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/gnd.sym} 1100 -420 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 1100 -740 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} 780 -910 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 780 -840 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 780 -980 0 1 {name=l9 sig_type=std_logic lab=phi_1}
C {devices/lab_wire.sym} 940 -640 0 0 {name=l12 sig_type=std_logic lab=phi_1}
C {devices/gnd.sym} 1260 -840 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1260 -980 0 1 {name=l15 sig_type=std_logic lab=phi_2}
C {devices/lab_wire.sym} 940 -560 0 0 {name=l18 sig_type=std_logic lab=phi_2}
C {code_shown.sym} 60 -1100 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param fclk=8000000
.param fphi=31250
.param Cload=10p 
.param C_VCM=1p 
.param W_P=1.0u 
.param L_P=0.13u 
.param W_N=1.0u 
.param L_N=0.13u
.ic v(Vcm)=0
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-12
.control

* save all
save phi_1 x1.di_phi_1_n phi_2 x1.di_phi_2_n Vcm

* User Constants
let tstep = 500n
let tstart = 0.5m
let tstop = 1m

* Operating Point Analysis
op
remzerovec
write vcm_generator_tb_tran.raw
set appendwrite

* Transient Analysis
tran $&tstep $&tstop
write vcm_generator_tb_tran.raw

plot v(phi_1) v(x1.di_phi_1_n) v(phi_2) v(x1.di_phi_2_n)
plot v(Vcm) v(phi_1) v(phi_2)

* Measurements
meas tran Vcm_at_tstop FIND v(Vcm) at=tstop

* tsettle at 99% Vcm
meas tran tsettle WHEN v(Vcm)=0.7425 RISE=1

* Writing Data
set wr_singlescale
set wr_vecnames
let di_phi_1_n = x1.di_phi_1_n
let di_phi_2_n = x1.di_phi_2_n
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/vcm_generator_tb_tran.txt v(phi_1) v(di_phi_1_n) v(phi_2) v(di_phi_2_n) v(Vcm)

*quit
.endc"}
C {devices/vsource.sym} 1260 -910 0 0 {name=V2 value="pulse(0 1.5 \{0.50/fphi\} 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/lab_wire.sym} 1480 -600 2 0 {name=p1 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 1340 -420 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 1340 -510 0 0 {name=C9
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vcm_generator/vcm_generator.sym} 1100 -600 0 0 {name=x1 C_VCM=\{C_VCM\} W_P_VCM=\{W_P\} L_P_VCM=\{L_P\} W_N_VCM=\{W_N\} L_N_VCM=\{L_N\}}
