v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1460 2440 -1060 {flags=graph
y1=-0.065
y2=0.16
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.51
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
node="\\"Vbias(VDD); Vbias\\""
sweep=VDD}
B 2 1640 -1020 2440 -620 {flags=graph
y1=-2.1e-06
y2=1.1e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.51
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
color="4 7 12"
node="\\"Iref(VDD); i(v.x1.viref)\\"
\\"Iout(VDD); i(v.x1.viout)\\"
\\"Ix(VDD); i(Vx)\\""
sweep=VDD}
B 2 1640 -580 2440 -180 {flags=graph
y1=-2.1e-06
y2=1.1e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.51
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
node=i(Vx)
sweep=Vout}
T {Testbench for DC sweep - Bias Circuit v1} 670 -1740 0 0 1 1 {}
N 1100 -700 1100 -600 {lab=GND}
N 880 -800 960 -800 {lab=bias_en}
N 880 -800 880 -720 {lab=bias_en}
N 880 -660 880 -600 {lab=GND}
N 680 -660 680 -600 {lab=GND}
N 680 -780 680 -720 {lab=VDD}
N 840 -800 880 -800 {lab=bias_en}
N 1280 -800 1280 -760 {lab=Vbias}
N 1240 -800 1280 -800 {lab=Vbias}
N 1380 -700 1380 -600 {lab=GND}
N 1440 -800 1520 -800 {lab=GND}
N 1520 -800 1520 -600 {lab=GND}
N 1380 -940 1380 -900 {lab=#net1}
N 1380 -1040 1380 -1000 {lab=VDD}
N 1280 -800 1320 -800 {lab=Vbias}
N 1100 -1040 1100 -900 {lab=VDD}
C {devices/vsource.sym} 880 -690 0 0 {name=Ven value=1.5}
C {devices/gnd.sym} 880 -600 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 60 -1610 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1700 -1630 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1700 -1510 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bias_circuit_1_tb_dc.raw dc"
}
C {devices/launcher.sym} 1700 -1570 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 60 -1290 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15
.control

save all

* Operating Point Analysis
op
remzerovec
write bias_circuit_1_tb_dc.raw
set appendwrite

* DC Sweep of Vout
dc Vx 0 1.5 5m
remzerovec
write bias_circuit_1_tb_dc.raw

* Plotting
plot i(Vx) xlabel "Vx"

* Measurements
meas dc Ix_1V FIND i(Vx) at=1
meas dc Ix_0V FIND i(Vx) at=0
let Ix_volt = Ix_0V - Ix_1V
print Ix_volt

* DC Sweep of VDD
dc VDD 0 1.5 5m
remzerovec
write bias_circuit_1_tb_dc.raw

* Plotting
plot v(Vbias) xlabel "VDD"
plot i(Vx) xlabel "VDD"
plot i(v.x1.viref) i(v.x1.viout) xlabel "VDD"

* Measurements
let Iout_nominal = 10e-9
let Iout_99_percent = 0.99 * Iout_nominal
print Iout_99_percent
meas dc VDD_min WHEN i(v.x1.viout)=Iout_99_percent

meas dc Iout_1_5V FIND i(v.x1.viout) at=1.49
meas dc Iout_1_4V FIND i(v.x1.viout) at=1.39
let Iout_volt = (Iout_1_5V - Iout_1_4V) * 10
print Iout_volt

* Write Data
set wr_vecnames
set wr_singlescale
let Ix=i(Vx)
let Iout=i(v.x1.viout)
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bias_circuit_1_tb_dc.txt v(Vbias) v(Ix) v(Iout)

*quit
.endc"}
C {devices/gnd.sym} 680 -600 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 680 -780 0 0 {name=l8 lab=VDD}
C {devices/lab_wire.sym} 840 -800 0 0 {name=p2 sig_type=std_logic lab=bias_en}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1100 -600 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1100 -1040 0 0 {name=l13 lab=VDD}
C {devices/vsource.sym} 680 -690 0 0 {name=VDD value=1.5}
C {devices/lab_wire.sym} 1280 -760 2 1 {name=p3 sig_type=std_logic lab=Vbias}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 1380 -800 0 0 {name=xMx W_N=5.0u L_N=40.0u NG_N=5 M_N=1}
C {devices/gnd.sym} 1380 -600 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1520 -600 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1380 -970 0 0 {name=Vx value=0.5}
C {devices/vdd.sym} 1380 -1040 0 0 {name=l5 lab=VDD}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_1/bias_circuit_1.sym} 1100 -800 0 0 {name=x1}
