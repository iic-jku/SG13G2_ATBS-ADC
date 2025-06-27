v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -760 2460 -360 {flags=graph
y1=-0.0015
y2=0.00045
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
y1=-0.17467568
y2=1.6514195
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
vinp
vinn
\\"vs; x1.x1.vs\\"
\\"vcpp; x1.x1.vcpp\\"
\\"vcpn; x1.x1.vcpn\\"
\\"voutp; x1.voutp_comp\\"
\\"voutn; x1.voutn_comp\\"
vout"
color="4 7 10 12 17 18 21 8 11"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
autoload=0}
T {Testbench for transient analysis - DT comparator} 540 -1710 0 0 1 1 {}
T {Capacitive load of digital core} 1350 -530 0 0 0.25 0.25 {}
N 1180 -1120 1180 -1080 {
lab=VDD}
N 1180 -1020 1180 -980 {
lab=GND}
N 1180 -860 1180 -820 {lab=VDD}
N 840 -1020 840 -980 {
lab=GND}
N 840 -1120 840 -1080 {
lab=clk}
N 1440 -600 1440 -560 {lab=GND}
N 920 -760 1120 -760 {lab=vinp}
N 900 -760 920 -760 {lab=vinp}
N 1040 -720 1120 -720 {lab=vinn}
N 1040 -720 1040 -660 {lab=vinn}
N 1020 -720 1040 -720 {lab=vinn}
N 1300 -660 1300 -620 {lab=clk}
N 1180 -660 1180 -560 {lab=GND}
N 1360 -740 1440 -740 {lab=vout}
N 1440 -740 1440 -660 {lab=vout}
N 1440 -740 1520 -740 {lab=vout}
N 1040 -600 1040 -560 {lab=GND}
N 920 -760 920 -660 {lab=vinp}
N 920 -600 920 -560 {lab=GND}
C {devices/vsource.sym} 1180 -1050 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 1180 -980 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 1180 -1120 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 40 -1510 0 0 {name=MODEL only_toplevel=true
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
tclcommand="xschem raw_read $netlist_dir/DT_comparator_tb_tran.raw tran"
}
C {devices/launcher.sym} 1720 -1300 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 40 -1330 0 0 {name=NGSPICE
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
.ic v(vout) = 0
.control
save all

* Operating Point Analysis
op
remzerovec
write DT_comparator_tb_tran.raw
set appendwrite

* Transient Analysis
* tran 4p 20n
tran 40p 150n
write DT_comparator_tb_tran.raw

* Measure vcpp_min & vcpn_min
let tmeas = 1/fclk
meas tran vcpp_min FIND v(x1.x1.vcpp) at=tmeas
meas tran vcpn_min FIND v(x1.x1.vcpn) at=tmeas

* Measure Propagation Delay
* Time from clock rising edge to 90% VDD of vout
let vout_limit = 0.9 * 1.5
meas tran tcross WHEN v(vout)=vout_limit CROSS=1
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
plot v(clk) v(vinp) v(vinn) v(x1.x1.vs) v(x1.x1.vcpp) v(x1.x1.vcpn) v(x1.voutp_comp) v(x1.voutn_comp) v(vout)
plot i(VDD)

* Writing Data
set wr_singlescale
set wr_vecnames
let vs=x1.x1.vs
let vcpp=x1.x1.vcpp
let vcpn=x1.x1.vcpn
let voutp_comp=x1.voutp_comp
let voutn_comp=x1.voutn_comp
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/DT_comparator_tb_tran.txt v(clk) v(vinp) v(vinn) v(vs) v(vcpp) v(vcpn) v(voutp_comp) v(voutn_comp) v(vout)

*quit
.endc"}
C {devices/vsource.sym} 840 -1050 0 0 {name=V1 value="pulse(0 1.5 \{tstart\} 10p 10p \{1/fclk\} \{1/fphi\})"}
C {devices/vdd.sym} 1180 -860 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1180 -560 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1300 -620 2 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1520 -740 0 1 {name=l10 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 1040 -630 0 0 {name=vinn value=\{Vcm\}}
C {devices/gnd.sym} 1040 -560 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 920 -560 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 920 -630 0 1 {name=vinp value="\{0.75 + \{delta_vin\}\}"}
C {devices/gnd.sym} 840 -980 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 840 -1120 0 1 {name=l14 sig_type=std_logic lab=clk}
C {capa.sym} 1440 -630 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1440 -560 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 900 -760 0 0 {name=l18 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 1020 -720 0 0 {name=l19 sig_type=std_logic lab=vinn}
C {comparator/discrete_time/DT_comparator.sym} 1240 -740 0 0 {name=x1}
