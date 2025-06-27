v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Template Testbench for Offset analysis - DT comparator} 470 -1720 0 0 1 1 {}
T {https://www.edaboard.com/threads/comparator-offset-measurement.376131/} 690 -1620 0 0 0.5 0.5 {}
T {The lower the slope of the ramp, the more precise the result. However, the simulation also takes longer. 
Therefore, the highest slope is sought in order to achieve a fast simulation without losing too much precision in the DC offset.} 500 -1550 0 0 0.4 0.4 {}
T {Capacitive load of digital core} 1990 -550 0 0 0.25 0.25 {}
N 1820 -1140 1820 -1100 {
lab=VDD}
N 1820 -1040 1820 -1000 {
lab=GND}
N 1560 -620 1560 -580 {lab=GND}
N 1560 -780 1560 -680 {lab=vinp}
N 1440 -1040 1440 -1000 {
lab=GND}
N 1440 -1140 1440 -1100 {
lab=clk}
N 1560 -780 1760 -780 {lab=vinp}
N 1540 -780 1560 -780 {lab=vinp}
N 1820 -880 1820 -840 {lab=VDD}
N 1680 -620 1680 -580 {lab=GND}
N 2080 -620 2080 -580 {lab=GND}
N 1680 -740 1760 -740 {lab=vinn}
N 1680 -740 1680 -680 {lab=vinn}
N 1660 -740 1680 -740 {lab=vinn}
N 1940 -680 1940 -640 {lab=clk}
N 1820 -680 1820 -580 {lab=GND}
N 2000 -760 2080 -760 {lab=vout}
N 2080 -760 2080 -680 {lab=vout}
N 2080 -760 2160 -760 {lab=vout}
C {devices/vsource.sym} 1820 -1070 0 0 {name=VDD value=CACE\{vdd\}}
C {devices/gnd.sym} 1820 -1000 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 1820 -1140 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 160 -530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 160 -1190 0 0 {name=NGSPICE
only_toplevel=true
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.param fclk=8000000
.param tstart=2n
.csparam fclk=fclk
.csparam Vcm=CACE\{vcm\}
.options klu method=gear reltol=1e-6 abstol=1e-15 gmin=1e-15 SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.ic v(vout) = 0
.control
* save all

set num_threads=1

* User Constants
let tstop = 10u
let tstep = 1/fclk

* Transient Analysis
tran $&tstep $&tstop

* Measure offset
let vout_limit = 0.9 * 1.5
meas tran tcross WHEN v(vout)=vout_limit CROSS=1
meas tran vinp_voff FIND v(vinp) at=tcross CROSS=1
let voff = vinp_voff - Vcm

echo $&tcross $&voff > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc"}
C {devices/vsource.sym} 1440 -1070 0 0 {name=V1 value="pulse(0 CACE\{vdd\} \{tstart\} 10p 10p \{0.5/fclk\} \{1/fclk\})"}
C {devices/gnd.sym} 1560 -580 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 1560 -650 0 1 {name=vinp value="pulse(\{CACE\{vcm\}-0.025\} \{CACE\{vcm\}+0.025\} \{tstart\} 10u 1p 1p 10u)"}
C {devices/gnd.sym} 1440 -1000 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 1440 -1140 0 1 {name=l14 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1540 -780 0 0 {name=l18 sig_type=std_logic lab=vinp}
C {devices/vdd.sym} 1820 -880 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1820 -580 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1940 -640 2 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 2160 -760 0 1 {name=l10 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 1680 -650 0 0 {name=vinn value=CACE\{vcm\}}
C {devices/gnd.sym} 1680 -580 0 0 {name=l11 lab=GND}
C {capa.sym} 2080 -650 0 0 {name=C2
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2080 -580 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 1660 -740 0 0 {name=l19 sig_type=std_logic lab=vinn}
C {DT_comparator.sym} 1880 -760 0 0 {name=x1}
