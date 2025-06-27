v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1560 -1300 2360 -900 {flags=graph
y1=0.25
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.02
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
B 2 1560 -860 2360 -460 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=1.5
divy=5
subdivy=1
unity=1
x1=0
x2=0.02
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
T {Testbench for transient analysis - SC Feedback Resistor} 560 -1690 0 0 1 1 {}
T {fc = 1 / (2 pi R C)} 1310 -800 0 0 0.4 0.4 {}
N 800 -740 800 -640 {lab=vin}
N 800 -580 800 -480 {lab=GND}
N 600 -1120 600 -1080 {lab=VDD}
N 600 -1020 600 -980 {lab=GND}
N 800 -740 900 -740 {lab=vin}
N 940 -820 940 -800 {lab=VDD}
N 940 -680 940 -660 {lab=GND}
N 800 -1020 800 -980 {
lab=GND}
N 1160 -1020 1160 -980 {
lab=GND}
N 800 -1120 800 -1080 {
lab=phi_1}
N 1160 -1120 1160 -1080 {
lab=phi_2}
N 1020 -680 1020 -640 {lab=phi_1}
N 1100 -680 1100 -640 {lab=phi_2}
N 1280 -580 1280 -480 {lab=GND}
N 1280 -740 1280 -640 {lab=vout}
N 1140 -740 1280 -740 {lab=vout}
N 760 -740 800 -740 {lab=vin}
N 1280 -740 1460 -740 {lab=vout}
C {devices/vsource.sym} 800 -610 0 0 {name=vin value="sin(0.75 100m 100)"}
C {devices/gnd.sym} 800 -480 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 180 -530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1620 -1470 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1620 -1350 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/sc_fb_resistor_tb_tran.raw tran"
}
C {devices/launcher.sym} 1620 -1410 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 1460 -740 2 0 {name=p1 sig_type=std_logic lab=vout}
C {code_shown.sym} 180 -1350 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param fclk=8000000
.param fphi=7810
* .param fphi=3910
.options reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
* save all

* Operating Point Analysis
op
remzerovec
write sc_fb_resistor_tb_tran.raw
set appendwrite

* Transient Analysis
tran 1m 100m
write sc_fb_resistor_tb_tran.raw

plot v(vin) v(vout)
plot v(phi_1) v(phi_2)

*quit
.endc"}
C {devices/vsource.sym} 600 -1050 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 600 -980 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 600 -1120 0 0 {name=l8 lab=VDD}
C {devices/lab_wire.sym} 760 -740 0 0 {name=p2 sig_type=std_logic lab=vin}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/capa.sym} 1280 -610 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1280 -480 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 940 -660 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 940 -820 0 0 {name=l13 lab=VDD}
C {devices/lab_wire.sym} 1020 -640 3 0 {name=l18 sig_type=std_logic lab=phi_1}
C {devices/vsource.sym} 800 -1050 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 800 -980 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 800 -1120 0 1 {name=l9 sig_type=std_logic lab=phi_1}
C {devices/gnd.sym} 1160 -980 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1160 -1120 0 1 {name=l15 sig_type=std_logic lab=phi_2}
C {devices/vsource.sym} 1160 -1050 0 0 {name=V2 value="pulse(0 1.5 \{0.50/fphi\} 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/lab_wire.sym} 1100 -640 3 0 {name=l20 sig_type=std_logic lab=phi_2}
C {bio_amplifier/sc_fb_resistor/sc_fb_resistor.sym} 1020 -740 0 0 {name=x1 W_P_FB=1.0u L_P_FB=0.13u W_N_FB=1.0u L_N_FB=0.13u Cs=4f}
