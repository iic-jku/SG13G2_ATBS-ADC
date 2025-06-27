v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Template Testbench for Input Capacitance analysis - DT comparator} 340 -1700 0 0 1 1 {}
T {https://www.edaboard.com/threads/comparator-offset-measurement.376131/} 690 -1590 0 0 0.5 0.5 {}
T {https://electronics.stackexchange.com/questions/498872/how-to-find-input-capacitance-and-output-resistance-of-a-cmos-circuit-with-spice} 320 -1520 0 0 0.5 0.5 {}
T {Capacitive load of digital core} 2010 -530 0 0 0.25 0.25 {}
N 2200 -1120 2200 -1080 {
lab=VDD}
N 2200 -1020 2200 -980 {
lab=GND}
N 1840 -1020 1840 -980 {
lab=GND}
N 1840 -1120 1840 -1080 {
lab=clk_n}
N 1500 -1020 1500 -980 {
lab=GND}
N 1500 -1120 1500 -1080 {
lab=clk}
N 1740 -760 1780 -760 {lab=#net1}
N 1440 -580 1440 -560 {lab=GND}
N 1440 -760 1440 -720 {lab=vin}
N 1440 -660 1440 -640 {lab=#net2}
N 1540 -760 1680 -760 {lab=vin}
N 1420 -760 1440 -760 {lab=vin}
N 1580 -620 1580 -580 {lab=GND}
N 1580 -580 1620 -580 {lab=GND}
N 1620 -610 1620 -580 {
lab=GND}
N 1620 -580 1620 -560 {lab=GND}
N 1540 -660 1580 -660 {lab=vin}
N 1540 -760 1540 -660 {lab=vin}
N 1440 -760 1540 -760 {lab=vin}
N 1840 -860 1840 -820 {lab=VDD}
N 2100 -600 2100 -560 {lab=GND}
N 1960 -660 1960 -620 {lab=clk}
N 1840 -660 1840 -560 {lab=GND}
N 2020 -740 2100 -740 {lab=vout}
N 2100 -740 2100 -660 {lab=vout}
N 2100 -740 2180 -740 {lab=vout}
N 1740 -720 1780 -720 {lab=#net3}
N 1620 -720 1680 -720 {lab=#net4}
N 1620 -720 1620 -670 {lab=#net4}
C {devices/vsource.sym} 2200 -1050 0 0 {name=VDD value=CACE\{vdd\}}
C {devices/gnd.sym} 2200 -980 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 2200 -1120 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 120 -570 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 120 -1250 0 0 {name=NGSPICE
only_toplevel=true
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15 SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.control
save all

set num_threads=1

* User Constants
let fstart = 1
let fstop = 1G

* AC Analysis
ac dec 101 $&fstart $&fstop

* Plotting Cinp
let Cinp = mag(i(Vmeasp)) / (2 * 3.14 * frequency)

* Plotting Cinn
let Cinn = mag(i(Vmeasn)) / (2 * 3.14 * frequency)

* Measure avg. Cinp & Cinn
meas ac Cinp_avg AVG Cinp from=fstart to=fstop
meas ac Cinn_avg AVG Cinn from=fstart to=fstop

echo $&Cinp_avg $&Cinn_avg > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc"}
C {devices/vsource.sym} 1500 -1050 0 0 {name=V1 value=CACE\{vdd\}}
C {devices/gnd.sym} 1840 -980 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 1840 -1120 0 1 {name=l9 sig_type=std_logic lab=clk_n}
C {devices/vsource.sym} 1840 -1050 0 0 {name=V2 value=0}
C {devices/gnd.sym} 1500 -980 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 1500 -1120 0 1 {name=l14 sig_type=std_logic lab=clk}
C {ammeter.sym} 1710 -760 3 0 {name=Vmeasp savecurrent=true spice_ignore=0}
C {ammeter.sym} 1710 -720 3 1 {name=Vmeasn savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 1440 -690 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/gnd.sym} 1440 -560 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 1440 -610 0 0 {name=Vcm value=CACE\{vcm\}
}
C {devices/lab_wire.sym} 1420 -760 0 0 {name=l12 sig_type=std_logic lab=vin}
C {devices/vcvs.sym} 1620 -640 0 0 {name=E2 value=-1}
C {devices/gnd.sym} 1620 -560 0 0 {name=l20 lab=GND}
C {devices/vdd.sym} 1840 -860 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1840 -560 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1960 -620 2 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 2180 -740 0 1 {name=l10 sig_type=std_logic lab=vout}
C {capa.sym} 2100 -630 0 0 {name=C2
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2100 -560 0 0 {name=l17 lab=GND}
C {DT_comparator.sym} 1900 -740 0 0 {name=x1}
