v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -1280 2460 -880 {flags=graph
y1=0.48
y2=0.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-30
x2=125
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
color="4 7"
node="Vbias
Vbiasc"}
B 2 1660 -840 2460 -440 {flags=graph
y1=3.5e-07
y2=5.5e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-30
x2=125
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
T {Testbench for temperature sweep - Bias Circuit v3} 520 -1690 0 0 1 1 {}
N 1140 -800 1140 -700 {lab=GND}
N 920 -900 1000 -900 {lab=bias_en}
N 920 -900 920 -820 {lab=bias_en}
N 920 -760 920 -700 {lab=GND}
N 680 -760 680 -700 {lab=GND}
N 680 -880 680 -820 {lab=VDD}
N 880 -900 920 -900 {lab=bias_en}
N 1320 -880 1320 -840 {lab=Vbias}
N 1280 -880 1320 -880 {lab=Vbias}
N 1420 -800 1420 -700 {lab=GND}
N 1480 -900 1560 -900 {lab=GND}
N 1560 -900 1560 -700 {lab=GND}
N 1420 -1280 1420 -1240 {lab=#net1}
N 1420 -1380 1420 -1340 {lab=VDD}
N 1420 -1040 1420 -1000 {lab=#net2}
N 1360 -900 1360 -880 {lab=Vbias}
N 1320 -880 1360 -880 {lab=Vbias}
N 1320 -1140 1360 -1140 {lab=Vbiasc}
N 1320 -1140 1320 -920 {lab=Vbiasc}
N 1280 -920 1320 -920 {lab=Vbiasc}
N 1320 -1180 1320 -1140 {lab=Vbiasc}
N 1480 -1140 1560 -1140 {lab=GND}
N 1560 -1140 1560 -900 {lab=GND}
N 1140 -1040 1140 -1000 {lab=VDD}
C {devices/vsource.sym} 920 -790 0 0 {name=Ven value=1.5}
C {devices/gnd.sym} 920 -700 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 60 -1530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1720 -1450 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -1330 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bias_circuit_3_tb_temp.raw dc"
}
C {devices/launcher.sym} 1720 -1390 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 60 -1370 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
save all

* User Constants
* Commercial Temperature Range
let Troom = 27
let Tmin = 0
let Tmax = 70
let Tstep = 1

* Operating Point Analysis
op
remzerovec
write bias_circuit_3_tb_temp.raw
set appendwrite

* Temperature Sweep
dc temp $&Tmin $&Tmax $&Tstep
remzerovec
write bias_circuit_3_tb_temp.raw

* Plotting
plot v(Vbias) v(Vbiasc)
plot i(Vx)

* Measurements of Vbias
meas dc Vbias_Troom FIND Vbias at=Troom
meas dc Vbias_Tmin FIND Vbias at=Tmin
meas dc Vbias_Tmax FIND Vbias at=Tmax

* Calculate ppm/°C
let dVbias = Vbias_Tmax - Vbias_Tmin
print dVbias

let dT = Tmax - Tmin
print dT

let ppm_deg = (dVbias / Vbias_Troom) * (1e6 / dT)
print ppm_deg

* Measurements of Ix
meas dc Ix_Troom FIND i(Vx) at=Troom
meas dc Ix_Tmin FIND i(Vx) at=Tmin
meas dc Ix_Tmax FIND i(Vx) at=Tmax

* Calculate ppm/°C
let dIx = Ix_Tmax - Ix_Tmin
print dIx

let ppm_deg = (dIx / Ix_Troom) * (1e6 / dT)
print ppm_deg

* Write Data
set wr_vecnames
set wr_singlescale
let Ix=i(Vx)
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bias_circuit_3_tb_temp.txt v(Vbias) v(Ix)

*quit
.endc"}
C {devices/gnd.sym} 680 -700 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 680 -880 0 0 {name=l8 lab=VDD}
C {devices/lab_wire.sym} 880 -900 0 0 {name=p2 sig_type=std_logic lab=bias_en}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1140 -700 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1140 -1040 0 0 {name=l13 lab=VDD}
C {devices/vsource.sym} 680 -790 0 0 {name=VDD value=1.5}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_3/bias_circuit_3.sym} 1140 -900 0 0 {name=x1}
C {devices/lab_wire.sym} 1320 -840 2 1 {name=p3 sig_type=std_logic lab=Vbias}
C {devices/gnd.sym} 1420 -700 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1560 -700 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1420 -1310 0 0 {name=Vx value=0.5}
C {devices/vdd.sym} 1420 -1380 0 0 {name=l5 lab=VDD}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1420 -900 0 0 {name=xMx W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1420 -1140 0 0 {name=xMxc W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {devices/lab_wire.sym} 1320 -1180 0 0 {name=p1 sig_type=std_logic lab=Vbiasc}
