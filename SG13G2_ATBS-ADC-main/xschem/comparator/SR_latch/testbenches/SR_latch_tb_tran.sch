v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1480 -1420 2280 -1020 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="S
R"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
B 2 1480 -580 2280 -180 {flags=graph
y1=-0.00025
y2=5e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
color=4
node=i(vdd)}
B 2 1480 -1000 2280 -600 {flags=graph
y1=-0.13
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Q
Qn"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
T {Testbench for transient analysis - NOR-based SR-Latch} 440 -1690 0 0 1 1 {}
N 400 -820 400 -780 {
lab=VDD}
N 400 -720 400 -680 {
lab=GND}
N 820 -780 820 -760 {lab=S}
N 820 -700 820 -680 {lab=GND}
N 560 -700 560 -680 {lab=GND}
N 560 -820 560 -760 {lab=R}
N 1080 -740 1080 -680 {lab=GND}
N 1080 -920 1080 -860 {lab=VDD}
N 800 -780 820 -780 {lab=S}
N 540 -820 560 -820 {lab=R}
N 820 -780 1020 -780 {lab=S}
N 560 -820 1020 -820 {lab=R}
N 1140 -820 1260 -820 {lab=Q}
N 1140 -780 1260 -780 {lab=Qn}
C {devices/vsource.sym} 400 -750 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 400 -680 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 400 -820 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 240 -450 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1540 -1580 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1540 -1460 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/SR_latch_tb_tran.raw tran"
}
C {devices/launcher.sym} 1540 -1520 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 240 -1370 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-12
.control
save all

* Operating Point Analysis
op
remzerovec
write SR_latch_tb_tran.raw
set appendwrite

* Transient Analysis
tran 1p 4n
write SR_latch_tb_tran.raw

plot v(S) v(R)

plot v(Q) v(Qn)

plot i(VDD)

*quit
.endc"}
C {devices/gnd.sym} 1080 -680 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 820 -730 0 0 {name=Vs1 value="pulse(0, 1.5, 0.5n, 100p, 100p, 1n, 2n)"}
C {devices/gnd.sym} 820 -680 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 560 -680 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1080 -920 0 0 {name=l1 lab=VDD}
C {devices/lab_wire.sym} 800 -780 0 0 {name=l4 sig_type=std_logic lab=S}
C {devices/lab_wire.sym} 540 -820 0 0 {name=l5 sig_type=std_logic lab=R}
C {devices/vsource.sym} 560 -730 0 0 {name=Vr value="pulse(0, 1.5, 0, 100p, 100p, 1n, 2n)"}
C {devices/lab_wire.sym} 1260 -820 0 1 {name=l13 sig_type=std_logic lab=Q}
C {devices/lab_wire.sym} 1260 -780 0 1 {name=l7 sig_type=std_logic lab=Qn}
C {comparator/SR_latch/SR_latch.sym} 1080 -800 0 0 {name=x1 W_P_SR=1.0u L_P_SR=0.13u W_N_SR=0.5u L_N_SR=0.13u}
