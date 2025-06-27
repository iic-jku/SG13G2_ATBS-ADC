v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1600 -1080 2400 -680 {flags=graph
y1=-0.25
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.6322614e-09
x2=7.8346597e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
\\"vinp - vinn; vinp vinn -\\"
\\"v(vout_Q); x1.v(vout_Q)\\"
vout_comp"
color="4 7 10 12"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
T {Testbench for transient analysis - Ideal DT Comparator} 480 -1700 0 0 1 1 {}
N 1120 -940 1120 -900 {
lab=VDD}
N 1400 -840 1460 -840 {
lab=vout_comp}
N 1400 -740 1400 -700 {
lab=GND}
N 1400 -840 1400 -800 {
lab=vout_comp}
N 700 -720 700 -700 {
lab=GND}
N 960 -820 1060 -820 {
lab=vinn}
N 960 -820 960 -780 {
lab=vinn}
N 920 -820 960 -820 {
lab=vinn}
N 700 -860 700 -780 {
lab=vinp}
N 960 -720 960 -700 {
lab=GND}
N 1120 -780 1120 -700 {
lab=GND}
N 160 -800 160 -780 {
lab=VDD}
N 160 -720 160 -700 {
lab=GND}
N 1220 -840 1400 -840 {lab=vout_comp}
N 300 -740 300 -700 {
lab=GND}
N 300 -840 300 -800 {
lab=clk}
N 1160 -920 1160 -900 {lab=clk}
N 660 -860 700 -860 {lab=vinp}
N 700 -860 1060 -860 {lab=vinp}
C {devices/lab_pin.sym} 1460 -840 2 0 {name=p2 sig_type=std_logic lab=vout_comp}
C {devices/capa.sym} 1400 -770 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 1120 -940 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 1120 -700 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 1400 -700 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 660 -860 2 1 {name=l12 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 920 -820 2 1 {name=l13 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} 960 -750 0 0 {name=Vcm value=0.75}
C {devices/gnd.sym} 700 -700 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 960 -700 0 0 {name=l2 lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1660 -1140 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/DT_comparator_ideal_tb_tran.raw tran"
}
C {devices/launcher.sym} 1660 -1200 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 1660 -1260 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 120 -490 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
.include $::PDK_ROOT/$::PDK/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/vsource.sym} 160 -750 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 160 -700 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 160 -800 0 0 {name=l8 lab=VDD}
C {code_shown.sym} 120 -1410 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param fclk=80000000
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write DT_comparator_ideal_tb_tran.raw
set appendwrite

* Transient Analysis
tran 10p 40n
* tran 100p 150n
remzerovec
write DT_comparator_ideal_tb_tran.raw

* Plotting
let vin = vinp - vinn
plot v(clk) v(x1.vrst) v(vin) v(x1.vout_Q) v(vout_comp)

*quit
.endc"}
C {comparator/discrete_time/ideal/DT_comparator_ideal.sym} 1120 -840 0 0 {name=x1 A=10k Rin=10Meg Rout=100 Vcm=0.75 Voffs=1m tpd=1n}
C {devices/vsource.sym} 300 -770 0 0 {name=V1 value="pulse(0 1.5 4n 10p 10p \{1/fclk\} \{2/fclk\})"}
C {devices/gnd.sym} 300 -700 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 300 -840 0 1 {name=l14 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1160 -920 0 1 {name=l5 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 700 -750 0 0 {name=vinp value="pulse(0.5, 1, 2n, 1p, 1p, 20n, 40n)"}
