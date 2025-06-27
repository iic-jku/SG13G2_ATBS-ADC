v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -880 2440 -480 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.8000711e-08
x2=1.2021297e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=2

color="4 7"
node="dig
vdac_out"}
T {Testbench for Operating Point analysis - Ideal 8-Bit DAC} 530 -1670 0 0 1 1 {}
N 560 -720 560 -700 {
lab=VDD}
N 560 -640 560 -620 {
lab=GND}
N 1180 -880 1180 -860 {
lab=VDD}
N 1180 -640 1180 -620 {
lab=GND}
N 1040 -700 1080 -700 {
lab=dig}
N 1040 -720 1040 -700 {
lab=dig}
N 1040 -720 1080 -720 {
lab=dig}
N 1040 -740 1040 -720 {
lab=dig}
N 1040 -740 1080 -740 {
lab=dig}
N 1040 -760 1040 -740 {
lab=dig}
N 1040 -760 1080 -760 {
lab=dig}
N 1040 -780 1040 -760 {
lab=dig}
N 1040 -780 1080 -780 {
lab=dig}
N 1040 -800 1040 -780 {
lab=dig}
N 1040 -800 1080 -800 {
lab=dig}
N 700 -720 700 -700 {
lab=dig}
N 700 -640 700 -620 {
lab=GND}
N 1380 -750 1420 -750 {
lab=vdac_out}
N 1040 -820 1080 -820 {
lab=dig}
N 1040 -820 1040 -800 {
lab=dig}
N 1000 -680 1000 -620 {
lab=GND}
N 1000 -820 1040 -820 {
lab=dig}
N 1000 -680 1080 -680 {lab=GND}
C {devices/vsource.sym} 560 -670 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 560 -620 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 560 -720 0 0 {name=l8 lab=VDD}
C {devices/vdd.sym} 1180 -880 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 1180 -620 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1000 -620 0 0 {name=l4 lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/vsource.sym} 700 -670 0 0 {name=vdig value="pulse(0 1.5 100n 10p 10p 1u 2u)"}
C {devices/gnd.sym} 700 -620 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 700 -720 0 1 {name=p1 sig_type=std_logic lab=dig}
C {devices/lab_wire.sym} 1000 -820 0 0 {name=p2 sig_type=std_logic lab=dig}
C {devices/lab_wire.sym} 1420 -750 0 1 {name=p3 sig_type=std_logic lab=vdac_out}
C {devices/code_shown.sym} 60 -470 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1700 -1020 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1700 -970 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 60 -1230 0 0 {name=NGSPICE
only_toplevel=false
value="
.param temp=27
.options .options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write dac_ideal_tb_tran.raw
set appendwrite

* Transient Analysis
tran 1n 200n
write dac_ideal_tb_tran.raw
set appendwrite

* Plotting
plot v(dig) v(vdac_out)

quit
.endc"}
C {devices/launcher.sym} 1700 -920 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/dac_ideal_tb_tran.raw tran"
}
C {dac/ideal/dac_ideal.sym} 1220 -750 0 0 {name=x1 tsettle=10n}
