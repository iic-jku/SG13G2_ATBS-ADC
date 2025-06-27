v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1520 -1220 2320 -820 {flags=graph
y1=0.00011
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.004
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin_spdt
vout_a_spdt_ca
vout_b_spdt_ca"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2
linewidth_mult=4}
B 2 1520 -800 2320 -400 {flags=graph
y1=0.00011
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.004
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin_spdt
vout_b_spdt_cb
vout_a_spdt_cb"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2
linewidth_mult=4}
T {Testbench for transient analysis - SPDT Switch} 620 -1690 0 0 1 1 {}
T {di_spdt_ctrl = 1: v_c connected to v_a, v_b = HIGH-Z
di_spdt_ctrl = 0: v_c connected to v_b, v_a = HIGH-Z} 780 -460 0 0 0.4 0.4 {}
N 1000 -700 1000 -660 {
lab=GND}
N 1000 -840 1000 -820 {
lab=VDD}
N 1040 -840 1040 -820 {
lab=vin_spdt}
N 1000 -1260 1000 -1240 {
lab=VDD}
N 1040 -1260 1040 -1240 {
lab=vin_spdt}
N 1000 -1120 1000 -1080 {
lab=GND}
N 1040 -1260 1340 -1260 {
lab=vin_spdt}
N 1060 -1120 1060 -1100 {
lab=vout_b_spdt_ca}
N 1020 -1120 1020 -1080 {
lab=vout_a_spdt_ca}
N 1060 -700 1060 -680 {
lab=vout_b_spdt_cb}
N 1280 -680 1340 -680 {
lab=vout_b_spdt_cb}
N 1020 -700 1020 -660 {
lab=vout_a_spdt_cb}
N 1200 -660 1340 -660 {
lab=vout_a_spdt_cb}
N 1040 -840 1340 -840 {
lab=vin_spdt}
N 1100 -1180 1200 -1180 {
lab=VDD}
N 640 -700 640 -660 {
lab=GND}
N 640 -800 640 -760 {
lab=VDD}
N 760 -700 760 -660 {
lab=GND}
N 760 -800 760 -760 {
lab=vin_spdt}
N 1280 -1100 1340 -1100 {
lab=vout_b_spdt_ca}
N 1200 -1080 1340 -1080 {
lab=vout_a_spdt_ca}
N 1280 -1100 1280 -1040 {
lab=vout_b_spdt_ca}
N 1060 -1100 1280 -1100 {
lab=vout_b_spdt_ca}
N 1200 -1080 1200 -1040 {
lab=vout_a_spdt_ca}
N 1020 -1080 1200 -1080 {
lab=vout_a_spdt_ca}
N 1200 -980 1200 -940 {
lab=GND}
N 1280 -980 1280 -940 {
lab=GND}
N 1280 -680 1280 -620 {
lab=vout_b_spdt_cb}
N 1200 -660 1200 -620 {
lab=vout_a_spdt_cb}
N 1200 -560 1200 -520 {
lab=GND}
N 1280 -560 1280 -520 {
lab=GND}
N 1060 -680 1280 -680 {
lab=vout_b_spdt_cb}
N 1020 -660 1200 -660 {
lab=vout_a_spdt_cb}
N 1200 -1200 1200 -1180 {lab=VDD}
N 1100 -760 1200 -760 {lab=GND}
N 1200 -760 1200 -740 {lab=GND}
C {devices/vdd.sym} 1000 -840 0 0 {name=l10 lab=VDD}
C {devices/gnd.sym} 1000 -660 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 1000 -1260 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 1000 -1080 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1340 -1100 0 1 {name=p1 sig_type=std_logic lab=vout_b_spdt_ca}
C {devices/lab_wire.sym} 1340 -1260 0 1 {name=p2 sig_type=std_logic lab=vin_spdt}
C {devices/title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/lab_wire.sym} 1340 -1080 2 0 {name=p6 sig_type=std_logic lab=vout_a_spdt_ca}
C {devices/lab_wire.sym} 1340 -680 0 1 {name=p7 sig_type=std_logic lab=vout_b_spdt_cb}
C {devices/lab_wire.sym} 1340 -660 2 0 {name=p4 sig_type=std_logic lab=vout_a_spdt_cb}
C {devices/launcher.sym} 1580 -1380 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1580 -1260 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/spdt_switch_tb_tran.raw tran"
}
C {devices/launcher.sym} 1580 -1320 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 1340 -840 0 1 {name=p5 sig_type=std_logic lab=vin_spdt}
C {devices/vdd.sym} 1200 -1200 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 1200 -740 0 0 {name=l7 lab=GND}
C {devices/capa.sym} 1280 -1010 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} 260 -470 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 260 -1430 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param W_N=1u
.param L_N=0.13u
.param W_P=1u
.param L_P=0.13u
.options savecurrents
.control
save all

* Operating Point Analysis
op
remzerovec
write spdt_switch_tb_tran.raw
set appendwrite

* Transient Analysis
tran 10u 4ms
write spdt_switch_tb_tran.raw

plot vout_b_spdt_ca vout_a_spdt_ca vin_spdt
plot vout_b_spdt_cb vout_a_spdt_cb vin_spdt

*quit
.endc"}
C {devices/vsource.sym} 640 -730 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 640 -660 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 640 -800 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 760 -660 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 760 -800 0 1 {name=p3 sig_type=std_logic lab=vin_spdt}
C {devices/vsource.sym} 760 -730 0 0 {name=vin value="sin(0.75 0.75 1k)"
}
C {devices/capa.sym} 1200 -1010 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1200 -940 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 1280 -940 0 0 {name=l12 lab=GND}
C {devices/capa.sym} 1280 -590 0 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1200 -590 0 0 {name=C4
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1200 -520 0 0 {name=l15 lab=GND}
C {devices/gnd.sym} 1280 -520 0 0 {name=l16 lab=GND}
C {spdt_switch/spdt_switch.sym} 1040 -1180 0 0 {name=x1 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
C {spdt_switch/spdt_switch.sym} 1040 -760 0 0 {name=x2 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
