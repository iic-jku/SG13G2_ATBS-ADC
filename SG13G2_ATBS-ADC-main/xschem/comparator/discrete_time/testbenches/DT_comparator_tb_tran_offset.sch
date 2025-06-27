v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -880 2460 -480 {flags=graph
y1=-0.035
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
\\"vout\\"
vinp
vinn"
color="4 7 10 12"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
T {Testbench for Offset analysis - DT comparator} 520 -1710 0 0 1 1 {}
T {https://www.edaboard.com/threads/comparator-offset-measurement.376131/} 690 -1620 0 0 0.5 0.5 {}
T {The lower the slope of the ramp, the more precise the result. However, the simulation also takes longer. 
Therefore, the highest slope is sought in order to achieve a fast simulation without losing too much precision in the DC offset.} 500 -1550 0 0 0.4 0.4 {}
T {Capacitive load of digital core} 1330 -490 0 0 0.25 0.25 {}
N 1160 -1080 1160 -1040 {
lab=VDD}
N 1160 -980 1160 -940 {
lab=GND}
N 900 -560 900 -520 {lab=GND}
N 900 -720 900 -620 {lab=vinp}
N 820 -980 820 -940 {
lab=GND}
N 820 -1080 820 -1040 {
lab=clk}
N 900 -720 1100 -720 {lab=vinp}
N 880 -720 900 -720 {lab=vinp}
N 1160 -820 1160 -780 {lab=VDD}
N 1020 -560 1020 -520 {lab=GND}
N 1420 -560 1420 -520 {lab=GND}
N 1020 -680 1100 -680 {lab=vinn}
N 1020 -680 1020 -620 {lab=vinn}
N 1000 -680 1020 -680 {lab=vinn}
N 1280 -620 1280 -580 {lab=clk}
N 1160 -620 1160 -520 {lab=GND}
N 1340 -700 1420 -700 {lab=vout}
N 1420 -700 1420 -620 {lab=vout}
N 1420 -700 1500 -700 {lab=vout}
C {devices/vsource.sym} 1160 -1010 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 1160 -940 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 1160 -1080 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 40 -1310 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1720 -1040 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -920 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/DT_comparator_tb_tran_offset.raw tran"
}
C {devices/launcher.sym} 1720 -980 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 40 -1110 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param fclk=8000000
.param tstart=2n
.param Vcm=0.75
.csparam fclk=fclk
.csparam tstart=tstart
.csparam Vcm=Vcm
.options klu method=gear reltol=1e-5 abstol=1e-12 gmin=1e-15
.ic v(vout) = 0
.control
* save all

* User Constants
let tstop = 10u
let tstep = 1/fclk

* Operating Point Analysis
op
remzerovec
write DT_comparator_tb_tran_offset.raw
set appendwrite

* Transient Analysis
tran $&tstep $&tstop
write DT_comparator_tb_tran_offset.raw

* Measure offset
let vout_limit = 0.9 * 1.5
meas tran tcross WHEN v(vout)=vout_limit CROSS=1
print tcross
meas tran vinp_voff FIND v(vinp) at=tcross CROSS=1
let voff = vinp_voff - Vcm
print voff

* Plotting
plot v(clk) v(vout) v(vinp) v(vinn)

* Writing Data
set wr_singlescale
set wr_vecnames
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/DT_comparator_tb_tran_offset.txt v(clk) v(vout) v(vinp) v(vinn)


*quit
.endc"}
C {devices/vsource.sym} 820 -1010 0 0 {name=V1 value="pulse(0 1.5 \{tstart\} 10p 10p \{0.5/fclk\} \{1/fclk\})"}
C {devices/gnd.sym} 900 -520 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 900 -590 0 1 {name=vinp value="pulse(0.725 0.775 \{tstart\} 10u 1p 1p 10u)"}
C {devices/gnd.sym} 820 -940 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 820 -1080 0 1 {name=l14 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 880 -720 0 0 {name=l18 sig_type=std_logic lab=vinp}
C {devices/vdd.sym} 1160 -820 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1160 -520 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1280 -580 2 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1500 -700 0 1 {name=l10 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 1020 -590 0 0 {name=vinn value=\{Vcm\}}
C {devices/gnd.sym} 1020 -520 0 0 {name=l11 lab=GND}
C {capa.sym} 1420 -590 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1420 -520 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 1000 -680 0 0 {name=l19 sig_type=std_logic lab=vinn}
C {comparator/discrete_time/DT_comparator.sym} 1220 -700 0 0 {name=x1}
