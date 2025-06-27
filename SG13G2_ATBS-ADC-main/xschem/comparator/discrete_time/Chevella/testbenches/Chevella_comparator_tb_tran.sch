v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -760 2460 -360 {flags=graph
y1=-0.0014
y2=0.00017
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5e-07
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
color=4
node=i(vdd)}
B 2 1660 -1200 2460 -800 {flags=graph
y1=-0.19
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
x1.vs
x1.vcpp
x1.vcpn
voutp
voutn"
color="4 7 10 12 21 17"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
P 4 5 1330 -680 1530 -680 1530 -580 1330 -580 1330 -680 {dash = 8}
T {Testbench for transient analysis - DT Chevella comparator} 440 -1710 0 0 1 1 {}
T {Capacitive load of buffers} 1350 -530 0 0 0.25 0.25 {}
N 1480 -1120 1480 -1080 {
lab=VDD}
N 1480 -1020 1480 -980 {
lab=GND}
N 1120 -1020 1120 -980 {
lab=GND}
N 1120 -1120 1120 -1080 {
lab=clk_n}
N 1120 -600 1120 -560 {lab=GND}
N 1180 -600 1180 -580 {lab=clk}
N 1120 -860 1120 -840 {lab=VDD}
N 1360 -700 1520 -700 {lab=voutn}
N 940 -680 1020 -680 {lab=vinn}
N 940 -680 940 -660 {lab=vinn}
N 940 -600 940 -560 {lab=GND}
N 820 -600 820 -560 {lab=GND}
N 820 -760 820 -660 {lab=vinp}
N 740 -1020 740 -980 {
lab=GND}
N 740 -1120 740 -1080 {
lab=clk}
N 1220 -600 1220 -580 {lab=clk_n}
N 1480 -740 1520 -740 {lab=voutp}
N 1360 -600 1360 -560 {lab=GND}
N 1480 -600 1480 -560 {lab=GND}
N 1360 -700 1360 -660 {lab=voutn}
N 1280 -700 1360 -700 {lab=voutn}
N 1480 -740 1480 -660 {lab=voutp}
N 1280 -740 1480 -740 {lab=voutp}
N 820 -760 1020 -760 {lab=vinp}
N 920 -680 940 -680 {lab=vinn}
N 800 -760 820 -760 {lab=vinp}
C {devices/vsource.sym} 1480 -1050 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 1480 -980 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 1480 -1120 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 40 -330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1720 -1360 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -1240 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/Chevella_comparator_tb_tran.raw tran"
}
C {devices/launcher.sym} 1720 -1300 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 40 -1450 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param fclk=8000000
.param fphi=62500
.param tstart=2n
.param delta_vin = 10m
.param Vcm=0.75
.csparam fclk=fclk
.csparam tstart=tstart
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write Chevella_comparator_tb_tran.raw
set appendwrite

* Transient Analysis
* tran 4p 20n
tran 40p 150n
write Chevella_comparator_tb_tran.raw

* Measure vcpp_min & vcpn_min
let tmeas = 1/fclk
meas tran vcpp_min FIND v(x1.vcpp) at=tmeas
meas tran vcpn_min FIND v(x1.vcpn) at=tmeas

* Measure Propagation Delay
* Time from clock rising edge to 90% VDD of voutp
let voutp_limit = 0.9 * 1.5
meas tran tcross WHEN v(voutp)=voutp_limit CROSS=1
let tpd = tcross - tstart
echo Propagation Delay $&tpd s

* Calculate Energy / Conversion
* i_int in As
* energy_conv in Ws = J
let N = 1
let t_conv = 150n
meas tran i_int INTEG i(VDD) from=tstart to=t_conv
let energy_conv = 1.5 * i_int / N

let energy_conv_femto = energy_conv * 1e15
echo Energy / Conversion $&energy_conv_femto fJ/conv

* Plotting
plot v(clk) v(x1.vs) v(x1.vcpp) v(x1.vcpn) v(voutp) v(voutn)

plot i(VDD)

*quit
.endc"}
C {devices/vsource.sym} 740 -1050 0 0 {name=V1 value="pulse(0 1.5 \{tstart\} 10p 10p \{1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 1120 -980 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 1120 -1120 0 1 {name=l9 sig_type=std_logic lab=clk_n}
C {devices/vdd.sym} 1120 -860 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1120 -560 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1180 -580 2 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1520 -700 0 1 {name=l5 sig_type=std_logic lab=voutn}
C {devices/lab_wire.sym} 1520 -740 0 1 {name=l10 sig_type=std_logic lab=voutp}
C {devices/vsource.sym} 940 -630 0 0 {name=vinn value=\{Vcm\}}
C {devices/gnd.sym} 940 -560 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 820 -560 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 820 -630 0 1 {name=vinp value="\{\{Vcm\} + \{delta_vin\}\}"}
C {devices/vsource.sym} 1120 -1050 0 0 {name=V2 value="pulse(1.5 0 2n 10p 10p \{1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 740 -980 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 740 -1120 0 1 {name=l14 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1220 -580 2 0 {name=l15 sig_type=std_logic lab=clk_n}
C {capa.sym} 1360 -630 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1480 -630 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1360 -560 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1480 -560 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 800 -760 0 0 {name=l18 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 920 -680 0 0 {name=l19 sig_type=std_logic lab=vinn}
C {comparator/discrete_time/Chevella/Chevella_comparator.sym} 1140 -720 0 0 {name=x1}
