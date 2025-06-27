v {xschem version=3.4.6 file_version=1.2}
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
x1=9.950014e-07
x2=1.005e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout_comp
\\"vinp\\"
\\"vinn\\""
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=2}
T {Testbench for transient analysis - Ideal Comparator's Propagation Delay} 320 -1700 0 0 1 1 {}
N 1160 -1040 1160 -1000 {
lab=VDD}
N 1440 -940 1500 -940 {
lab=vout_comp}
N 1440 -840 1440 -800 {
lab=GND}
N 1440 -940 1440 -900 {
lab=vout_comp}
N 740 -820 740 -800 {
lab=GND}
N 1000 -920 1100 -920 {
lab=vinn}
N 1000 -920 1000 -880 {
lab=vinn}
N 960 -920 1000 -920 {
lab=vinn}
N 740 -960 1100 -960 {
lab=vinp}
N 740 -960 740 -880 {
lab=vinp}
N 700 -960 740 -960 {
lab=vinp}
N 1000 -820 1000 -800 {
lab=GND}
N 1160 -880 1160 -800 {
lab=GND}
N 560 -900 560 -880 {
lab=VDD}
N 560 -820 560 -800 {
lab=GND}
N 1260 -940 1440 -940 {lab=vout_comp}
C {devices/lab_pin.sym} 1500 -940 2 0 {name=p2 sig_type=std_logic lab=vout_comp}
C {devices/capa.sym} 1440 -870 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 1160 -1040 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 1160 -800 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 1440 -800 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 700 -960 2 1 {name=l12 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 960 -920 2 1 {name=l13 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} 1000 -850 0 0 {name=Vcm value=0.75}
C {devices/gnd.sym} 740 -800 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1000 -800 0 0 {name=l2 lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/vsource.sym} 740 -850 0 0 {name=vinp value="pulse(0, 1.5, 1u, 1p, 1p, 5u, 10u)"}
C {devices/launcher.sym} 1700 -1140 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/CT_comparator_ideal_tb_tran.raw tran"
}
C {devices/launcher.sym} 1700 -1200 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 1700 -1260 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 60 -1250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 560 -850 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 560 -800 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 560 -900 0 0 {name=l8 lab=VDD}
C {code_shown.sym} 60 -1090 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write CT_comparator_ideal_tb_tran.raw
set appendwrite

* Transient Analysis
*tran 1u 1m
tran 5ps 1.005u 0.995u
remzerovec
write CT_comparator_ideal_tb_tran.raw

* Plotting
plot v(vout_comp) v(vinp) v(vinn)

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/CT_comparator_ideal_tb_tran.txt v(vout_comp) v(vinp) v(vinn)

*quit
.endc"}
C {comparator/continuous_time/ideal/CT_comparator_ideal.sym} 1160 -940 0 0 {name=x1 A=10k Rin=10Meg Rout=100 Pdc=3.5u Vcm=0.75 Voffs=1m tpd=1n}
