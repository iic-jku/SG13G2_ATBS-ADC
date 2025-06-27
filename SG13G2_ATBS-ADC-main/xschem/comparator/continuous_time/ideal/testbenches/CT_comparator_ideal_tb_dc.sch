v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1080 2440 -680 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.75
x2=0.752
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout_comp
vinp
vinn"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
linewidth_mult=2}
B 2 1640 -660 2440 -260 {flags=graph
y1=-18
y2=11000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.75
x2=0.752
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout_comp deriv()"
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
linewidth_mult=2}
T {Testbench for DC analysis - Ideal Comparator} 660 -1700 0 0 1 1 {}
N 1140 -1000 1140 -960 {
lab=VDD}
N 1440 -900 1500 -900 {
lab=vout_comp}
N 1440 -800 1440 -760 {
lab=GND}
N 1440 -900 1440 -860 {
lab=vout_comp}
N 800 -780 800 -760 {
lab=GND}
N 980 -780 980 -760 {
lab=GND}
N 620 -860 620 -840 {
lab=VDD}
N 620 -780 620 -760 {
lab=GND}
N 1140 -840 1140 -760 {
lab=GND}
N 980 -880 1080 -880 {lab=vinn}
N 980 -880 980 -840 {lab=vinn}
N 940 -880 980 -880 {lab=vinn}
N 800 -920 1080 -920 {lab=vinp}
N 800 -920 800 -840 {lab=vinp}
N 760 -920 800 -920 {lab=vinp}
N 1240 -900 1440 -900 {lab=vout_comp}
C {devices/launcher.sym} 1700 -1140 0 0 {name=h5
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/CT_comparator_ideal_tb_dc.raw dc"
}
C {devices/vsource.sym} 620 -810 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 620 -760 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 620 -860 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} 1500 -900 2 0 {name=p2 sig_type=std_logic lab=vout_comp}
C {devices/capa.sym} 1440 -830 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 1140 -1000 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 1140 -760 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 1440 -760 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 940 -880 2 1 {name=l13 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} 800 -810 0 0 {name=vinp value=0.8}
C {devices/gnd.sym} 800 -760 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 980 -760 0 0 {name=l2 lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1200 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 60 -1030 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write CT_comparator_ideal_tb_dc.raw
set appendwrite

* DC Sweep
dc vinp 0.750 0.752 1u
remzerovec
write CT_comparator_ideal_tb_dc.raw

* Plotting
let dvout_comp = deriv(v(vout_comp))
plot v(vout_comp) v(vinp) v(vinn)
plot dvout_comp

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/CT_comparator_ideal_tb_dc.txt v(vout_comp) v(vinp) v(vinn) v(dvout_comp)

*quit
.endc"}
C {devices/launcher.sym} 1700 -1260 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/vsource.sym} 980 -810 0 0 {name=vinn value=0.75}
C {devices/lab_wire.sym} 760 -920 2 1 {name=l9 sig_type=std_logic lab=vinp}
C {devices/code_shown.sym} 60 -1250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {comparator/continuous_time/ideal/CT_comparator_ideal.sym} 1140 -900 0 0 {name=x1 A=10k Rin=10Meg Rout=100 Vcm=0.75 Voffs=1m tpd=1n}
