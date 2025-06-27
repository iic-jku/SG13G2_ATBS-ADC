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
node="A
B"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
B 2 1480 -580 2280 -180 {flags=graph
y1=-0.0002
y2=5.2e-05
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
y1=-0.021
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
node=C
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
T {Testbench for transient analysis - Symmetric NOR Gate} 440 -1690 0 0 1 1 {}
N 400 -820 400 -780 {
lab=VDD}
N 400 -720 400 -680 {
lab=GND}
N 1160 -800 1240 -800 {lab=c}
N 820 -780 820 -760 {lab=b}
N 820 -700 820 -680 {lab=GND}
N 560 -700 560 -680 {lab=GND}
N 560 -820 560 -760 {lab=a}
N 1080 -740 1080 -680 {lab=GND}
N 1080 -920 1080 -860 {lab=VDD}
N 800 -780 820 -780 {lab=b}
N 540 -820 560 -820 {lab=a}
N 820 -780 1020 -780 {lab=b}
N 560 -820 1020 -820 {lab=a}
N 1240 -800 1240 -760 {lab=c}
N 1340 -800 1340 -760 {lab=c}
N 1240 -800 1340 -800 {lab=c}
N 1340 -800 1420 -800 {lab=c}
N 1340 -700 1340 -680 {lab=GND}
N 1240 -700 1240 -680 {lab=GND}
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
tclcommand="xschem raw_read $netlist_dir/NOR_gate_tb_tran.raw tran"
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
write NOR_gate_tb_tran.raw
set appendwrite

* Transient Analysis
tran 1p 4n
write NOR_gate_tb_tran.raw

plot v(A) v(B)

plot v(C)

plot i(VDD)

*quit
.endc"}
C {devices/gnd.sym} 1080 -680 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 820 -730 0 0 {name=Vb value="pulse(0, 1.5, 0.5n, 100p, 100p, 1n, 2n)"}
C {devices/gnd.sym} 820 -680 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 560 -680 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1080 -920 0 0 {name=l1 lab=VDD}
C {devices/lab_wire.sym} 800 -780 0 0 {name=l4 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} 540 -820 0 0 {name=l5 sig_type=std_logic lab=a}
C {devices/vsource.sym} 560 -730 0 0 {name=Va value="pulse(0, 1.5, 0, 100p, 100p, 1n, 2n)"}
C {capa.sym} 1240 -730 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1340 -730 0 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1240 -680 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 1340 -680 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 1420 -800 0 1 {name=l13 sig_type=std_logic lab=c}
C {comparator/NOR_gate/NOR_gate.sym} 1080 -800 0 0 {name=x1 W_P=1.0u L_P=0.13u W_N=0.5u L_N=0.13u}
