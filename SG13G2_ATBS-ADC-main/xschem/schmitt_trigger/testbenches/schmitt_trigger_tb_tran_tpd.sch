v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1520 -1260 2320 -860 {flags=graph
y1=-0.035
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.950028e-07
x2=1.005e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
linewidth_mult=2}
B 2 1520 -820 2320 -420 {flags=graph
y1=-0.00055
y2=0.042
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.950028e-07
x2=1.005e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(VDD)
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1

linewidth_mult=2}
T {Testbench for transient analysis - Schmitt Trigger's Propagation Delay} 320 -1700 0 0 1 1 {}
N 1040 -1000 1040 -980 {
lab=VDD}
N 1280 -800 1280 -760 {
lab=GND}
N 1040 -820 1040 -760 {
lab=GND}
N 700 -780 700 -760 {
lab=GND}
N 700 -900 700 -840 {
lab=vin}
N 500 -860 500 -840 {
lab=VDD}
N 500 -780 500 -760 {
lab=GND}
N 1280 -900 1280 -860 {lab=vout}
N 1280 -900 1360 -900 {lab=vout}
N 660 -900 700 -900 {lab=vin}
N 700 -900 960 -900 {lab=vin}
N 1120 -900 1280 -900 {lab=vout}
C {devices/lab_pin.sym} 1360 -900 2 0 {name=p2 sig_type=std_logic lab=vout}
C {devices/capa.sym} 1280 -830 0 0 {name=C1
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 1040 -1000 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 1040 -760 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 1280 -760 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 660 -900 2 1 {name=l12 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 700 -810 0 0 {name=vin value="pulse(0, 3.3, 1u, 1p, 1p, 5u, 10u)"}
C {devices/gnd.sym} 700 -760 0 0 {name=l1 lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 240 -530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 240 -1430 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param W_N=1u
.param L_N=0.5u
.param W_P=3u
.param L_P=0.5u
.param R=4
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write schmitt_trigger_tb_tran_tpd.raw
set appendwrite

* Transient Analysis
tran 10p 1.005u 0.995u
remzerovec
write schmitt_trigger_tb_tran_tpd.raw

plot v(vin) v(vout)

plot i(VDD)

*quit
.endc"}
C {devices/vsource.sym} 500 -810 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 500 -760 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 500 -860 0 0 {name=l8 lab=VDD}
C {devices/launcher.sym} 1580 -1320 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/schmitt_trigger_tb_tran_tpd.raw tran"
}
C {devices/launcher.sym} 1580 -1380 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 1580 -1440 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {schmitt_trigger/schmitt_trigger.sym} 1040 -900 0 0 {name=x1 W_P_ST=\{W_P\} L_P_ST=\{L_P\} W_N_ST=\{W_N\} L_N_ST=\{L_N\} R=\{R\}}
