v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Template Testbench for transient analysis - DT comparator} 540 -1710 0 0 1 1 {}
T {Capacitive load of digital core} 1990 -510 0 0 0.25 0.25 {}
N 1820 -1100 1820 -1060 {
lab=VDD}
N 1820 -1000 1820 -960 {
lab=GND}
N 1820 -840 1820 -800 {lab=VDD}
N 1680 -580 1680 -540 {lab=GND}
N 1560 -580 1560 -540 {lab=GND}
N 1560 -740 1560 -640 {lab=vinp}
N 1440 -1000 1440 -960 {
lab=GND}
N 1440 -1100 1440 -1060 {
lab=clk}
N 2080 -580 2080 -540 {lab=GND}
N 1560 -740 1760 -740 {lab=vinp}
N 1540 -740 1560 -740 {lab=vinp}
N 1680 -700 1760 -700 {lab=vinn}
N 1680 -700 1680 -640 {lab=vinn}
N 1660 -700 1680 -700 {lab=vinn}
N 1940 -640 1940 -600 {lab=clk}
N 1820 -640 1820 -540 {lab=GND}
N 2000 -720 2080 -720 {lab=vout}
N 2080 -720 2080 -640 {lab=vout}
N 2080 -720 2160 -720 {lab=vout}
C {devices/vsource.sym} 1820 -1030 0 0 {name=VDD value=CACE\{vdd\}}
C {devices/gnd.sym} 1820 -960 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 1820 -1100 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 200 -470 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 200 -1390 0 0 {name=NGSPICE
only_toplevel=true
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.param fclk=8000000
.param fphi=62500
.param tstart=2n
.csparam fclk=fclk
.csparam tstart=tstart
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15 SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.ic v(vout) = 0
.control
save all

set num_threads=1

* Transient Analysis
* tran 4p 20n
tran 40p 150n

* Measure vcpp_min & vcpn_min
let tmeas = 1/fclk
meas tran vcpp_min FIND v(x1.x1.vcpp) at=tmeas
meas tran vcpn_min FIND v(x1.x1.vcpn) at=tmeas

* Measure Propagation Delay
* Time from clock rising edge to 90% VDD of vout
let vout_limit = 0.9 * 1.5
meas tran tcross WHEN v(vout)=vout_limit CROSS=1
let tpd = tcross - tstart

* Calculate Energy / Conversion
* i_int in As
* energy_conv in Ws = J
let N = 1
let t_conv = 150n
meas tran i_int INTEG i(VDD) from=tstart to=t_conv
let energy_conv = 1.5 * i_int / N

let energy_conv_femto = energy_conv * 1e15

echo $&tpd $&energy_conv_femto > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc"}
C {devices/vsource.sym} 1440 -1030 0 0 {name=V1 value="pulse(0 CACE\{vdd\} \{tstart\} 10p 10p \{1/fclk\} \{1/fphi\})"}
C {devices/vdd.sym} 1820 -840 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1820 -540 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1940 -600 2 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 2160 -720 0 1 {name=l10 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 1680 -610 0 0 {name=vinn value=CACE\{vcm\}}
C {devices/gnd.sym} 1680 -540 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 1560 -540 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 1560 -610 0 1 {name=vinp value="\{CACE\{vcm\} + CACE\{delta_vin\}\}"}
C {devices/gnd.sym} 1440 -960 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 1440 -1100 0 1 {name=l14 sig_type=std_logic lab=clk}
C {capa.sym} 2080 -610 0 0 {name=C2
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2080 -540 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 1540 -740 0 0 {name=l18 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 1660 -700 0 0 {name=l19 sig_type=std_logic lab=vinn}
C {DT_comparator.sym} 1880 -720 0 0 {name=x1}
