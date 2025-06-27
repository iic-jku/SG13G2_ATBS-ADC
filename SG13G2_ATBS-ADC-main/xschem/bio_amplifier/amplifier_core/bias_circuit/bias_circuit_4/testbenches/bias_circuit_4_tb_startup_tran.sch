v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -1460 2460 -1060 {flags=graph
y1=-0.08
y2=1.6
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


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
color="4 7 10 12 17 21"
node="VDD
Vbias
Vbiasc
bias_en
x1.Vsu
x1.Vres"}
B 2 1660 -1020 2460 -620 {flags=graph
y1=-1.2e-09
y2=3.4e-06
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


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4

color="4 7"
node="i(v.x1.viout)
i(Vx)"}
B 2 1660 -580 2460 -180 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=1.5
divy=5
subdivy=1
unity=1
x1=0
x2=0.004
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

digital=1
legend=1
color="4 12"
node="phi_1
phi_2"}
T {Testbench for transient analysis - Bias Circuit v4} 540 -1730 0 0 1 1 {}
N 1140 -660 1140 -560 {lab=GND}
N 780 -1480 780 -1440 {
lab=GND}
N 1140 -1480 1140 -1440 {
lab=GND}
N 780 -1580 780 -1540 {
lab=phi_1}
N 1140 -1580 1140 -1540 {
lab=phi_2}
N 980 -780 1000 -780 {lab=phi_1}
N 980 -740 1000 -740 {lab=phi_2}
N 1320 -740 1320 -700 {lab=Vbias}
N 1280 -740 1320 -740 {lab=Vbias}
N 1420 -660 1420 -560 {lab=GND}
N 1480 -760 1560 -760 {lab=GND}
N 1560 -760 1560 -560 {lab=GND}
N 1420 -1140 1420 -1100 {lab=#net1}
N 1420 -1240 1420 -1200 {lab=VDD}
N 1420 -900 1420 -860 {lab=#net2}
N 1360 -760 1360 -740 {lab=Vbias}
N 1320 -740 1360 -740 {lab=Vbias}
N 1320 -1000 1360 -1000 {lab=Vbiasc}
N 1320 -1000 1320 -780 {lab=Vbiasc}
N 1280 -780 1320 -780 {lab=Vbiasc}
N 1320 -1040 1320 -1000 {lab=Vbiasc}
N 1480 -1000 1560 -1000 {lab=GND}
N 1560 -1000 1560 -760 {lab=GND}
N 1140 -1160 1140 -1100 {lab=GND}
N 780 -1160 780 -1100 {lab=GND}
N 780 -1280 780 -1220 {lab=VDD}
N 1220 -880 1220 -860 {lab=bias_en}
N 1140 -880 1140 -860 {lab=VDD}
N 1140 -1280 1140 -1220 {lab=bias_en}
C {devices/code_shown.sym} 40 -1610 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1720 -1630 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -1510 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bias_circuit_4_tb_startup_tran.raw tran"
}
C {devices/launcher.sym} 1720 -1570 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 40 -1090 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param fclk=8000000
.param fphi=62500
.csparam fclk=fclk
.options reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

* save all
save v(VDD) v(Vbias) v(Vbiasc) v(bias_en) v(x1.Vsu) v(x1.Vres) i(v.x1.viout) i(Vx) v(phi_1) v(phi_2)

* User constants
let tstep = 1/fclk

* Operating Point Analysis
op
remzerovec
write bias_circuit_4_tb_startup_tran.raw
set appendwrite

* Transient Analysis
tran $&tstep 1m
write bias_circuit_4_tb_startup_tran.raw

* Plotting
plot v(VDD) v(Vbias) v(Vbiasc) v(bias_en) v(x1.Vsu) v(x1.Vres)
plot i(v.x1.viout)
plot i(Vx)

* Measurement
let Iout_nominal = 10e-9
let Iout_99_percent = 0.99 * Iout_nominal
print Iout_99_percent
meas tran tsettle WHEN i(v.x1.viout)=Iout_99_percent from=10e-6 to=1e-3

* Write Data
set wr_vecnames
set wr_singlescale
let Vsu=x1.Vsu
let Vres=x1.Vres
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bias_circuit_4_tb_startup_tran.txt v(VDD) v(Vbias) v(Vbiasc) v(bias_en) v(Vsu) v(Vres)

*quit
.endc"}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1140 -560 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1140 -880 0 0 {name=l13 lab=VDD}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_4/bias_circuit_4.sym} 1140 -760 0 0 {name=x1}
C {devices/vsource.sym} 780 -1510 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 780 -1440 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 780 -1580 0 1 {name=l9 sig_type=std_logic lab=phi_1}
C {devices/gnd.sym} 1140 -1440 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1140 -1580 0 1 {name=l15 sig_type=std_logic lab=phi_2}
C {devices/vsource.sym} 1140 -1510 0 0 {name=V3 value="pulse(0 1.5 \{0.50/fphi\} 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/lab_wire.sym} 980 -780 0 0 {name=l4 sig_type=std_logic lab=phi_1}
C {devices/lab_wire.sym} 980 -740 0 0 {name=l5 sig_type=std_logic lab=phi_2}
C {devices/lab_wire.sym} 1320 -700 2 1 {name=p3 sig_type=std_logic lab=Vbias}
C {devices/gnd.sym} 1420 -560 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1560 -560 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 1420 -1170 0 0 {name=Vx value=0.5}
C {devices/vdd.sym} 1420 -1240 0 0 {name=l11 lab=VDD}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1420 -760 0 0 {name=xMx W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1420 -1000 0 0 {name=xMxc W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {devices/lab_wire.sym} 1320 -1040 0 0 {name=p4 sig_type=std_logic lab=Vbiasc}
C {devices/lab_wire.sym} 1220 -880 1 0 {name=p2 sig_type=std_logic lab=bias_en}
C {devices/gnd.sym} 1140 -1100 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 780 -1100 0 0 {name=l16 lab=GND}
C {devices/vdd.sym} 780 -1280 0 0 {name=l17 lab=VDD}
C {devices/lab_wire.sym} 1140 -1280 1 0 {name=p1 sig_type=std_logic lab=bias_en}
C {devices/vsource.sym} 1140 -1190 0 0 {name=Ven value="pulse(0, 1.5, 1u, 100u, 100u, 1m, 2m)"}
C {devices/vsource.sym} 780 -1190 0 0 {name=VDD value="pulse(0, 1.5, 1u, 100u, 100u, 1, 2, 1)"}
