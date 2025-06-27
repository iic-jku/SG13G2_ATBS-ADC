v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Testbench for Operating Point analysis - Ideal 8-Bit DAC} 530 -1670 0 0 1 1 {}
N 1140 -680 1140 -660 {
lab=VDD}
N 1140 -600 1140 -580 {
lab=GND}
N 1620 -840 1620 -820 {
lab=VDD}
N 1620 -600 1620 -580 {
lab=GND}
N 1480 -660 1520 -660 {
lab=dig}
N 1480 -680 1480 -660 {
lab=dig}
N 1480 -680 1520 -680 {
lab=dig}
N 1480 -700 1480 -680 {
lab=dig}
N 1480 -700 1520 -700 {
lab=dig}
N 1480 -720 1480 -700 {
lab=dig}
N 1480 -720 1520 -720 {
lab=dig}
N 1480 -740 1480 -720 {
lab=dig}
N 1480 -740 1520 -740 {
lab=dig}
N 1480 -760 1480 -740 {
lab=dig}
N 1480 -760 1520 -760 {
lab=dig}
N 1280 -680 1280 -660 {
lab=dig}
N 1280 -600 1280 -580 {
lab=GND}
N 1820 -710 1860 -710 {
lab=vdac_out}
N 1480 -780 1520 -780 {
lab=dig}
N 1480 -780 1480 -760 {
lab=dig}
N 1440 -640 1440 -580 {
lab=GND}
N 1440 -780 1480 -780 {
lab=dig}
N 1440 -640 1520 -640 {lab=GND}
C {devices/vsource.sym} 1140 -630 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 1140 -580 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 1140 -680 0 0 {name=l8 lab=VDD}
C {devices/vdd.sym} 1620 -840 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 1620 -580 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1440 -580 0 0 {name=l4 lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/vsource.sym} 1280 -630 0 0 {name=vdig value="1.5"}
C {devices/gnd.sym} 1280 -580 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 1280 -680 0 1 {name=p1 sig_type=std_logic lab=dig}
C {devices/lab_wire.sym} 1440 -780 0 0 {name=p2 sig_type=std_logic lab=dig}
C {devices/lab_wire.sym} 1860 -710 0 1 {name=p3 sig_type=std_logic lab=vdac_out}
C {devices/code_shown.sym} 460 -610 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1780 -1180 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1780 -1130 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 460 -1190 0 0 {name=NGSPICE
only_toplevel=false
value="
.param temp=27
.options .options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write dac_ideal_tb_op.raw
set appendwrite

quit
.endc"}
C {dac/ideal/dac_ideal.sym} 1660 -710 0 0 {name=x1 tsettle=10n}
