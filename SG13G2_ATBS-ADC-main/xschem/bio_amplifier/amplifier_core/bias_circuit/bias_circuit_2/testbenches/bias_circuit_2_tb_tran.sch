v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -1460 2420 -1060 {flags=graph
y1=-0.64
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-05
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
color="4 7 12 17"
node="VDD
Vbias
Vbiasc
x1.vsu"}
B 2 1620 -1020 2420 -620 {flags=graph
y1=-6.5e-06
y2=3.4e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-05
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
B 2 1620 -580 2420 -180 {flags=graph
y1=-5.7e-06
y2=1.2e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-05
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
node=i(Vx)}
T {Testbench for transient analysis - Bias Circuit v2} 520 -1750 0 0 1 1 {}
N 640 -660 640 -600 {lab=GND}
N 640 -780 640 -720 {lab=VDD}
N 1060 -700 1060 -600 {lab=GND}
N 1060 -940 1060 -900 {lab=VDD}
N 880 -800 920 -800 {lab=VDD}
N 880 -940 880 -800 {lab=VDD}
N 880 -940 1060 -940 {lab=VDD}
N 1240 -780 1240 -740 {lab=Vbias}
N 1200 -780 1240 -780 {lab=Vbias}
N 1340 -700 1340 -600 {lab=GND}
N 1400 -800 1480 -800 {lab=GND}
N 1480 -800 1480 -600 {lab=GND}
N 1340 -1180 1340 -1140 {lab=#net1}
N 1340 -1280 1340 -1240 {lab=VDD}
N 1340 -940 1340 -900 {lab=#net2}
N 1280 -800 1280 -780 {lab=Vbias}
N 1240 -780 1280 -780 {lab=Vbias}
N 1240 -1040 1280 -1040 {lab=Vbiasc}
N 1240 -1040 1240 -820 {lab=Vbiasc}
N 1200 -820 1240 -820 {lab=Vbiasc}
N 1240 -1080 1240 -1040 {lab=Vbiasc}
N 1400 -1040 1480 -1040 {lab=GND}
N 1480 -1040 1480 -800 {lab=GND}
N 1060 -980 1060 -940 {lab=VDD}
C {devices/code_shown.sym} 80 -410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1680 -1630 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1680 -1510 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bias_circuit_2_tb_tran.raw tran"
}
C {devices/launcher.sym} 1680 -1570 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 80 -1410 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write bias_circuit_2_tb_tran.raw
set appendwrite

* Transient Analysis
tran 1u 1m
write bias_circuit_2_tb_tran.raw

* Plotting
plot v(VDD) v(Vbias) v(x1.Vsu)
plot i(v.x1.viout)
plot i(VDD)
plot i(Vx)

* Measurement
let Iout_nominal = 10e-9
let Iout_99_percent = 0.99 * Iout_nominal
print Iout_99_percent
meas tran tsettle WHEN i(v.x1.viout)=Iout_99_percent from=10e-6 to=1e-3

*quit
.endc"}
C {devices/gnd.sym} 640 -600 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 640 -780 0 0 {name=l8 lab=VDD}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1060 -600 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1060 -980 0 0 {name=l13 lab=VDD}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 1060 -800 0 0 {name=x1}
C {devices/lab_wire.sym} 1240 -740 2 1 {name=p3 sig_type=std_logic lab=Vbias}
C {devices/gnd.sym} 1340 -600 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1480 -600 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1340 -1210 0 0 {name=Vx value=0.5}
C {devices/vdd.sym} 1340 -1280 0 0 {name=l5 lab=VDD}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1340 -800 0 0 {name=xMx W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1340 -1040 0 0 {name=xMxc W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {devices/lab_wire.sym} 1240 -1080 0 0 {name=p1 sig_type=std_logic lab=Vbiasc}
C {devices/vsource.sym} 640 -690 0 0 {name=VDD value="pulse(0, 1.5, 1u, 100n, 100n, 500u, 1m, 1)"}
