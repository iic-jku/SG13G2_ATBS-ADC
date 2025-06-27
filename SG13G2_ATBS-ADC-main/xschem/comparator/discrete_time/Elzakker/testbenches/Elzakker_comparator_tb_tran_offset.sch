v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -940 2460 -540 {flags=graph
y1=-0.088
y2=1.6
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
node="clk
voutp
voutn
vinp
vinn"
color="4 7 10 12 21"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
linewidth_mult=2}
P 4 5 1330 -740 1530 -740 1530 -640 1330 -640 1330 -740 {dash = 8}
T {Testbench for Offset analysis - DT Elzakker comparator} 480 -1710 0 0 1 1 {}
T {Capacitive load of buffers} 1350 -590 0 0 0.25 0.25 {}
T {https://www.edaboard.com/threads/comparator-offset-measurement.376131/} 690 -1620 0 0 0.5 0.5 {}
T {The lower the slope of the ramp, the more precise the result. However, the simulation also takes longer. 
Therefore, the highest slope is sought in order to achieve a fast simulation without losing too much precision in the DC offset.} 500 -1550 0 0 0.4 0.4 {}
N 1480 -1180 1480 -1140 {
lab=VDD}
N 1480 -1080 1480 -1040 {
lab=GND}
N 1120 -1080 1120 -1040 {
lab=GND}
N 1120 -1180 1120 -1140 {
lab=clk_n}
N 1120 -660 1120 -620 {lab=GND}
N 1180 -660 1180 -640 {lab=clk}
N 1120 -920 1120 -900 {lab=VDD}
N 1360 -760 1520 -760 {lab=voutn}
N 940 -740 1020 -740 {lab=vinn}
N 940 -740 940 -720 {lab=vinn}
N 940 -660 940 -620 {lab=GND}
N 820 -660 820 -620 {lab=GND}
N 820 -820 820 -720 {lab=vinp}
N 740 -1080 740 -1040 {
lab=GND}
N 740 -1180 740 -1140 {
lab=clk}
N 1220 -660 1220 -640 {lab=clk_n}
N 1480 -800 1520 -800 {lab=voutp}
N 1360 -660 1360 -620 {lab=GND}
N 1480 -660 1480 -620 {lab=GND}
N 1360 -760 1360 -720 {lab=voutn}
N 1280 -760 1360 -760 {lab=voutn}
N 1480 -800 1480 -720 {lab=voutp}
N 1280 -800 1480 -800 {lab=voutp}
N 820 -820 1020 -820 {lab=vinp}
N 920 -740 940 -740 {lab=vinn}
N 800 -820 820 -820 {lab=vinp}
C {devices/vsource.sym} 1480 -1110 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 1480 -1040 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 1480 -1180 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 40 -1390 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1720 -1100 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -980 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/Elzakker_comparator_tb_tran_offset.raw tran"
}
C {devices/launcher.sym} 1720 -1040 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 40 -1230 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param fclk=8000000
.param tstart=2n
.param Vcm=0.75
.csparam fclk=fclk
.csparam tstart=tstart
.csparam Vcm=Vcm
.options klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
* save all

* User Constants
let tstop = 20u
let tstep = 1/fclk

* Operating Point Analysis
op
remzerovec
write Elzakker_comparator_tb_tran_offset.raw
set appendwrite

* Transient Analysis
tran $&tstep $&tstop
write Elzakker_comparator_tb_tran_offset.raw

* Measure offset increasing ramp
let voutp_limit = 0.9 * 1.5
meas tran tcross WHEN v(voutp)=voutp_limit RISE=1
print tcross
meas tran vinp_voff FIND v(vinp) at=tcross
let voff_inc = vinp_voff - Vcm
print voff_inc

* Measure offset decreasing ramp
let voutn_limit = 0.9 * 1.5
let tmiddle = tstop/2
meas tran tcross WHEN v(voutn)=voutn_limit from=tmiddle RISE=1
print tcross
meas tran vinp_voff FIND v(vinp) at=tcross
let voff_dec = vinp_voff - Vcm
print voff_dec

* Plotting
plot v(clk) v(voutp) v(voutn) v(vinp) v(vinn)

* Writing Data
set wr_singlescale
set wr_vecnames
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/Elzakker_comparator_tb_tran_offset.txt v(clk) v(voutp) v(voutn) v(vinp) v(vinn)

*quit
.endc"}
C {devices/vsource.sym} 740 -1110 0 0 {name=V1 value="pulse(0 1.5 \{tstart\} 10p 10p \{0.5/fclk\} \{1/fclk\})"}
C {devices/gnd.sym} 1120 -1040 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 1120 -1180 0 1 {name=l9 sig_type=std_logic lab=clk_n}
C {devices/vdd.sym} 1120 -920 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1120 -620 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1180 -640 2 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1520 -760 0 1 {name=l5 sig_type=std_logic lab=voutn}
C {devices/lab_wire.sym} 1520 -800 0 1 {name=l10 sig_type=std_logic lab=voutp}
C {devices/vsource.sym} 940 -690 0 0 {name=vinn value=\{Vcm\}}
C {devices/gnd.sym} 940 -620 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 820 -620 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 820 -690 0 1 {name=vinp value="pulse(0.725 0.775 \{tstart\} 10u 10u 1p 20u)"}
C {devices/vsource.sym} 1120 -1110 0 0 {name=V2 value="pulse(1.5 0 2n 10p 10p \{0.5/fclk\} \{1/fclk\})"}
C {devices/gnd.sym} 740 -1040 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 740 -1180 0 1 {name=l14 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1220 -640 2 0 {name=l15 sig_type=std_logic lab=clk_n}
C {capa.sym} 1360 -690 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1480 -690 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1360 -620 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1480 -620 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 800 -820 0 0 {name=l18 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 920 -740 0 0 {name=l19 sig_type=std_logic lab=vinn}
C {comparator/discrete_time/Elzakker/Elzakker_comparator.sym} 1140 -780 0 0 {name=x1}
