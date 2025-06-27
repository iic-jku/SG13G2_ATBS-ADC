v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -1460 2460 -1060 {flags=graph
y1=-1.7e-09
y2=3.2e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0

color="4 7"
node="\\"Ibias(Vout); i(Vibias)\\"
\\"Iout(Vout); i(Vout)\\""}
B 2 1660 -1040 2460 -640 {flags=graph
y1=3.9525252e-321
y2=3.5e+11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0

color=4
node="\\"Rout(Vout); 1 i(vout) deriv() / abs()\\""}
B 2 1660 -620 2460 -220 {flags=graph
y1=0.12
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0

color="4 7 12"
node="Vbiasc
Vbias
Vgs_m56"}
T {Testbench for DC analysis - High-Swing Current Mirror} 540 -1750 0 0 1 1 {}
T {320nA} 1400 -960 0 0 0.4 0.4 {}
T {0.75V} 1180 -1140 0 0 0.4 0.4 {}
T {1.5V-1.04V=0.46V} 1130 -1400 0 0 0.4 0.4 {}
T {40nA} 850 -910 0 0 0.4 0.4 {}
T {Vtail ~ 1V in telescopic input stage
--> Iout(1V) ~ 320nA
--> Rout(1V) ~ 25GOhm} 1980 -1610 0 0 0.5 0.5 {}
N 1600 -500 1600 -460 {lab=VDD}
N 1600 -400 1600 -360 {lab=GND}
N 940 -1560 940 -1520 {lab=VDD}
N 720 -1260 720 -1100 {lab=#net1}
N 1380 -1560 1380 -1520 {lab=VDD}
N 1440 -1420 1600 -1420 {lab=VDD}
N 1600 -1560 1600 -1420 {lab=VDD}
N 1440 -1100 1600 -1100 {lab=#net2}
N 1380 -1260 1380 -1200 {lab=#net2}
N 940 -1260 940 -1200 {lab=#net1}
N 1600 -1260 1600 -1100 {lab=#net2}
N 1220 -1420 1320 -1420 {lab=Vgs_m56}
N 1120 -1420 1220 -1420 {lab=Vgs_m56}
N 720 -1420 880 -1420 {lab=VDD}
N 720 -1560 720 -1420 {lab=VDD}
N 1220 -1460 1220 -1420 {lab=Vgs_m56}
N 1220 -1100 1320 -1100 {lab=#net3}
N 1000 -1420 1120 -1420 {lab=Vgs_m56}
N 720 -1100 880 -1100 {lab=#net1}
N 1220 -1000 1220 -960 {lab=GND}
N 1220 -1100 1220 -1060 {lab=#net3}
N 1000 -1100 1220 -1100 {lab=#net3}
N 1380 -720 1380 -360 {lab=GND}
N 1380 -1000 1380 -780 {lab=#net4}
N 1000 -740 1080 -740 {lab=GND}
N 1080 -500 1080 -360 {lab=GND}
N 940 -640 940 -600 {lab=#net5}
N 940 -400 940 -360 {lab=GND}
N 1000 -500 1080 -500 {lab=GND}
N 1080 -740 1080 -500 {lab=GND}
N 940 -960 1120 -960 {lab=Vgs_m56}
N 1120 -1420 1120 -960 {lab=Vgs_m56}
N 940 -1000 940 -960 {lab=Vgs_m56}
N 940 -960 940 -920 {lab=Vgs_m56}
N 940 -860 940 -840 {lab=#net6}
N 840 -740 880 -740 {lab=Vbiasc}
N 840 -740 840 -640 {lab=Vbiasc}
N 800 -640 840 -640 {lab=Vbiasc}
N 800 -600 840 -600 {lab=Vbias}
N 840 -600 840 -500 {lab=Vbias}
N 840 -500 880 -500 {lab=Vbias}
N 660 -520 660 -360 {lab=GND}
N 480 -620 520 -620 {lab=VDD}
N 480 -760 480 -620 {lab=VDD}
N 480 -760 660 -760 {lab=VDD}
N 660 -760 660 -720 {lab=VDD}
N 660 -800 660 -760 {lab=VDD}
N 840 -760 840 -740 {lab=Vbiasc}
N 840 -500 840 -480 {lab=Vbias}
N 720 -1260 940 -1260 {lab=#net1}
N 940 -1320 940 -1260 {lab=#net1}
N 1380 -1260 1600 -1260 {lab=#net2}
N 1380 -1320 1380 -1260 {lab=#net2}
C {devices/code_shown.sym} 40 -870 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27

.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15
.control

save all

* Operating Point Analysis
op
remzerovec
write high_swing_current_mirror_tb_dc.raw
set appendwrite

* DC Sweep
dc Vout 0 1.5 15m
write high_swing_current_mirror_tb_dc.raw

* Plotting
plot i(Vout) i(Vibias)

let Rout = 1 / abs(deriv(i(Vout)))
plot Rout

* Measurement
meas dc Iout_at_1V FIND i(Vout) at=1
print Iout_at_1V

meas dc Rout_at_1V FIND Rout at=1
print Rout_at_1V

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/high_swing_current_mirror_tb_dc.txt i(Vout) i(Vibias)

*quit
.endc
"}
C {devices/launcher.sym} 1720 -1620 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1720 -1500 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/high_swing_current_mirror_tb_dc.raw dc"
}
C {devices/launcher.sym} 1720 -1560 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 40 -1570 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1600 -430 0 1 {name=VDD value=1.5}
C {devices/gnd.sym} 1600 -360 0 0 {name=l3 lab=GND}
C {vdd.sym} 1600 -500 0 0 {name=l7 lab=VDD}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x2.sym} 940 -1420 0 1 {name=xM6 W_P=1.0u L_P=20.0u NG_P=1 M_P=1}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x2.sym} 1380 -1420 0 0 {name=xM5 W_P=8.0u L_P=20.0u NG_P=8 M_P=1}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x2.sym} 1380 -1100 0 0 {name=xM5c W_P=8.0u L_P=20.0u NG_P=8 M_P=1}
C {lab_pin.sym} 1220 -1460 1 0 {name=p14 sig_type=std_logic lab=Vgs_m56}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x2.sym} 940 -1100 0 1 {name=xM6c W_P=1.0u L_P=20.0u NG_P=1 M_P=1}
C {ngspice_probe.sym} 1220 -1100 0 0 {name=r3}
C {vdd.sym} 1380 -1560 0 0 {name=l1 lab=VDD}
C {vdd.sym} 1600 -1560 0 0 {name=l4 lab=VDD}
C {vdd.sym} 940 -1560 0 0 {name=l5 lab=VDD}
C {vdd.sym} 720 -1560 0 0 {name=l6 lab=VDD}
C {ammeter.sym} 940 -890 0 0 {name=Vibias savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 1220 -1030 0 0 {name=Vcm value=0.75}
C {devices/gnd.sym} 1220 -960 0 0 {name=l8 lab=GND}
C {ngspice_probe.sym} 1220 -1420 0 0 {name=r1}
C {ngspice_probe.sym} 940 -960 0 0 {name=r2}
C {devices/vsource.sym} 1380 -750 0 0 {name=Vout value="1"}
C {devices/gnd.sym} 1380 -360 0 0 {name=l14 lab=GND}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 940 -740 0 0 {name=xM8c W_N=20.0u L_N=20.0u NG_N=20 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 940 -500 0 0 {name=xM8 W_N=20.0u L_N=20.0u NG_N=20 M_N=1}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 660 -620 0 0 {name=x1}
C {devices/gnd.sym} 940 -360 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 1080 -360 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 660 -360 0 0 {name=l11 lab=GND}
C {vdd.sym} 660 -800 0 0 {name=l12 lab=VDD}
C {lab_pin.sym} 840 -760 1 0 {name=p1 sig_type=std_logic lab=Vbiasc}
C {lab_pin.sym} 840 -480 3 0 {name=p2 sig_type=std_logic lab=Vbias}
