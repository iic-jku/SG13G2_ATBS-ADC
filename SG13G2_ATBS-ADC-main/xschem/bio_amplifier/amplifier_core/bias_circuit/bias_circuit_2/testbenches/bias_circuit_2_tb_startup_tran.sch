v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1200 2440 -800 {flags=graph
y1=-0.011
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0002
x2=0.0038
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
color="4 7 10 12 17"
node="VDD
Vbias
Vbiasc
bias_en
x1.vsu"}
B 2 1640 -760 2440 -360 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0002
x2=0.0038
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
T {Testbench for start-up transient analysis - Bias Circuit v2} 520 -1690 0 0 1 1 {}
N 1320 -1020 1320 -980 {lab=VDD}
N 1320 -780 1320 -680 {lab=GND}
N 1020 -880 1020 -800 {lab=bias_en}
N 1020 -740 1020 -680 {lab=GND}
N 680 -740 680 -680 {lab=GND}
N 680 -860 680 -800 {lab=VDD}
N 1460 -860 1540 -860 {lab=Vbias}
N 980 -880 1020 -880 {lab=bias_en}
N 1020 -880 1180 -880 {lab=bias_en}
N 1460 -900 1540 -900 {lab=Vbiasc}
C {devices/gnd.sym} 1020 -680 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 60 -1350 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1700 -1370 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1700 -1250 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bias_circuit_2_tb_startup_tran.raw tran"
}
C {devices/launcher.sym} 1700 -1310 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 60 -990 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

*save all
save VDD bias_en Vbias Vbiasc x1.Vsu

* Operating Point Analysis
op
remzerovec
write bias_circuit_2_tb_startup_tran.raw
set appendwrite

* Transient Analysis
tran 250n 4m
write bias_circuit_2_tb_startup_tran.raw

* Plotting
plot v(VDD) v(Vbias) v(Vbiasc) v(bias_en) v(x1.Vsu)
plot v(x1.Vsu)
plot i(VDD)

* Write Data
set wr_vecnames
set wr_singlescale
let Vsu=x1.Vsu
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bias_circuit_2_tb_startup_tran.txt v(VDD) v(Vbias) v(bias_en) v(Vsu)

*quit
.endc"}
C {devices/gnd.sym} 680 -680 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 680 -860 0 0 {name=l8 lab=VDD}
C {devices/lab_wire.sym} 980 -880 0 0 {name=p2 sig_type=std_logic lab=bias_en}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1320 -680 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1320 -1020 0 0 {name=l13 lab=VDD}
C {devices/lab_wire.sym} 1540 -860 2 0 {name=p3 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 1320 -880 0 0 {name=x1}
C {devices/vsource.sym} 1020 -770 0 0 {name=Ven value="pulse(0, 1.5, 1u, 100u, 100u, 1m, 2m)"}
C {devices/lab_wire.sym} 1540 -900 2 0 {name=p1 sig_type=std_logic lab=Vbiasc}
C {devices/vsource.sym} 680 -770 0 0 {name=VDD value="pulse(0, 1.5, 1u, 100u, 100u, 1, 2, 1)"}
