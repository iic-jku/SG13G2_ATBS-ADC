v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Template Testbench for transient analysis - Bias Circuit v2} 480 -1750 0 0 1 1 {}
N 1220 -660 1220 -600 {lab=GND}
N 1220 -780 1220 -720 {lab=VDD}
N 1640 -700 1640 -600 {lab=GND}
N 1640 -940 1640 -900 {lab=VDD}
N 1460 -800 1500 -800 {lab=VDD}
N 1460 -940 1460 -800 {lab=VDD}
N 1460 -940 1640 -940 {lab=VDD}
N 1780 -780 1820 -780 {lab=Vbias}
N 1780 -820 1820 -820 {lab=Vbiasc}
N 1640 -980 1640 -940 {lab=VDD}
C {devices/code_shown.sym} 300 -550 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 300 -1310 0 0 {name=NGSPICE
only_toplevel=true
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15 SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.control

save all

set num_threads=1

* Transient Analysis
tran 1u 1m

* Measurement
let Iout_nominal = 10e-9
let Iout_99_percent = 0.99 * Iout_nominal
print Iout_99_percent
meas tran tsettle WHEN i(v.x1.viout)=Iout_99_percent from=10e-6 to=2e-3

echo $&tsettle > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

*quit
.endc"}
C {devices/gnd.sym} 1220 -600 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 1220 -780 0 0 {name=l8 lab=VDD}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1640 -600 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1640 -980 0 0 {name=l13 lab=VDD}
C {bias_circuit_2.sym} 1640 -800 0 0 {name=x1}
C {devices/lab_wire.sym} 1820 -780 0 1 {name=p3 sig_type=std_logic lab=Vbias}
C {devices/lab_wire.sym} 1820 -820 0 1 {name=p1 sig_type=std_logic lab=Vbiasc}
C {devices/vsource.sym} 1220 -690 0 0 {name=VDD value="pulse(0, CACE\{vdd\}, 0, 100n, 100n, 900u, 1m, 1)"}
