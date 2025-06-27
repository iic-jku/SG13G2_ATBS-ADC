v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -920 2460 -520 {flags=graph
y1=1.2e-15
y2=2.6e-12
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"Cinp; i(vmeasp) abs() 2 3.14 * frequency * /\\"
\\"Cinn; i(vmeasn) abs() 2 3.14 * frequency * /\\""
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
hilight_wave=-1
linewidth_mult=4}
T {Testbench for Input Capacitance analysis - DT comparator} 440 -1700 0 0 1 1 {}
T {https://www.edaboard.com/threads/comparator-offset-measurement.376131/} 690 -1590 0 0 0.5 0.5 {}
T {https://electronics.stackexchange.com/questions/498872/how-to-find-input-capacitance-and-output-resistance-of-a-cmos-circuit-with-spice} 320 -1520 0 0 0.5 0.5 {}
T {Capacitive load of digital core} 1330 -530 0 0 0.25 0.25 {}
N 1520 -1120 1520 -1080 {
lab=VDD}
N 1520 -1020 1520 -980 {
lab=GND}
N 1160 -1020 1160 -980 {
lab=GND}
N 1160 -1120 1160 -1080 {
lab=clk_n}
N 820 -1020 820 -980 {
lab=GND}
N 820 -1120 820 -1080 {
lab=clk}
N 1060 -760 1100 -760 {lab=#net1}
N 760 -580 760 -560 {lab=GND}
N 760 -760 760 -720 {lab=vin}
N 760 -660 760 -640 {lab=#net2}
N 860 -760 1000 -760 {lab=vin}
N 740 -760 760 -760 {lab=vin}
N 900 -620 900 -580 {lab=GND}
N 900 -580 940 -580 {lab=GND}
N 940 -610 940 -580 {
lab=GND}
N 940 -580 940 -560 {lab=GND}
N 860 -660 900 -660 {lab=vin}
N 860 -760 860 -660 {lab=vin}
N 760 -760 860 -760 {lab=vin}
N 1160 -860 1160 -820 {lab=VDD}
N 1420 -600 1420 -560 {lab=GND}
N 1280 -660 1280 -620 {lab=clk}
N 1160 -660 1160 -560 {lab=GND}
N 1340 -740 1420 -740 {lab=vout}
N 1420 -740 1420 -660 {lab=vout}
N 1420 -740 1500 -740 {lab=vout}
N 1060 -720 1100 -720 {lab=#net3}
N 940 -720 1000 -720 {lab=#net4}
N 940 -720 940 -670 {lab=#net4}
C {devices/vsource.sym} 1520 -1050 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 1520 -980 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 1520 -1120 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 60 -1270 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1720 -1080 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -960 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/DT_comparator_tb_ac_cin.raw ac"
}
C {devices/launcher.sym} 1720 -1020 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 60 -1090 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param Vcm=0.75
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* User Constants
let fstart = 1
let fstop = 1G

* Operating Point Analysis
op
remzerovec
write DT_comparator_tb_ac_cin.raw
* set appendwrite

* AC Analysis
ac dec 101 $&fstart $&fstop
remzerovec
write DT_comparator_tb_ac_cin.raw

* Plotting Cinp
let Cinp = mag(i(Vmeasp)) / (2 * 3.14 * frequency)
plot Cinp

* Plotting Cinn
let Cinn = mag(i(Vmeasn)) / (2 * 3.14 * frequency)
plot Cinn

* Measure avg. Cinp & Cinn
meas ac Cinp_avg AVG Cinp from=fstart to=fstop
meas ac Cinn_avg AVG Cinn from=fstart to=fstop

* Writing Data
set wr_singlescale
set wr_vecnames
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/DT_comparator_tb_ac_cin.txt v(Cinp) v(Cinn)

*quit
.endc"}
C {devices/vsource.sym} 820 -1050 0 0 {name=V1 value=1.5}
C {devices/gnd.sym} 1160 -980 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 1160 -1120 0 1 {name=l9 sig_type=std_logic lab=clk_n}
C {devices/vsource.sym} 1160 -1050 0 0 {name=V2 value=0}
C {devices/gnd.sym} 820 -980 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 820 -1120 0 1 {name=l14 sig_type=std_logic lab=clk}
C {ammeter.sym} 1030 -760 3 0 {name=Vmeasp savecurrent=true spice_ignore=0}
C {ammeter.sym} 1030 -720 3 1 {name=Vmeasn savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 760 -690 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/gnd.sym} 760 -560 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 760 -610 0 0 {name=Vcm value=\{Vcm\}
}
C {devices/lab_wire.sym} 740 -760 0 0 {name=l12 sig_type=std_logic lab=vin}
C {devices/vcvs.sym} 940 -640 0 0 {name=E2 value=-1}
C {devices/gnd.sym} 940 -560 0 0 {name=l20 lab=GND}
C {devices/vdd.sym} 1160 -860 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1160 -560 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1280 -620 2 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1500 -740 0 1 {name=l10 sig_type=std_logic lab=vout}
C {capa.sym} 1420 -630 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1420 -560 0 0 {name=l17 lab=GND}
C {comparator/discrete_time/DT_comparator.sym} 1220 -740 0 0 {name=x1}
