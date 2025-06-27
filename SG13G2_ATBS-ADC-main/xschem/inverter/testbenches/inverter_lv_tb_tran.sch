v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1400 -1040 2200 -640 {flags=graph
y1=-9.2e-05
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Input; vin\\"
\\"Output; vout\\""
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3}
T {Testbench for transient analysis - Parameterizable LV Inverter} 420 -1710 0 0 1 1 {}
N 1260 -700 1260 -660 {
lab=GND}
N 840 -840 840 -780 {
lab=vin}
N 840 -720 840 -660 {
lab=GND}
N 1060 -800 1060 -660 {
lab=GND}
N 1140 -840 1260 -840 {
lab=vout}
N 1260 -840 1260 -760 {
lab=vout}
N 840 -840 1000 -840 {
lab=vin}
N 720 -720 720 -660 {
lab=GND}
N 820 -840 840 -840 {
lab=vin}
N 1260 -840 1280 -840 {
lab=vout}
N 720 -840 720 -780 {
lab=VDD}
N 1060 -1020 1060 -880 {
lab=VDD}
C {devices/code_shown.sym} 340 -710 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 340 -1210 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.options savecurrents
.control
save all

* Operating Point Analysis
op
remzerovec
write inverter_lv_tb_tran.raw
set appendwrite

* Transient Analysis
tran 100p 400n
write inverter_lv_tb_tran.raw

quit
.endc
"}
C {devices/gnd.sym} 1260 -660 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 720 -750 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 720 -660 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1060 -660 0 0 {name=l4 lab=GND}
C {devices/launcher.sym} 1460 -1210 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 820 -840 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 840 -750 0 0 {name=vin value="pulse(0, 1.5, 0, 1n, 1n, 100n, 200n)"}
C {devices/capa.sym} 1260 -730 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 840 -660 0 0 {name=l5 lab=GND}
C {vdd.sym} 1060 -1020 0 0 {name=l6 lab=VDD}
C {lab_pin.sym} 1280 -840 0 1 {name=p1 sig_type=std_logic lab=vout}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1460 -1090 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/inverter_lv_tb_tran.raw tran"
}
C {devices/launcher.sym} 1460 -1150 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vdd.sym} 720 -840 0 0 {name=l7 lab=VDD}
C {inverter/inverter_lv.sym} 1060 -840 0 0 {name=x1 W_P=3.0u L_P=0.13u W_N=1.0u L_N=0.13u}
