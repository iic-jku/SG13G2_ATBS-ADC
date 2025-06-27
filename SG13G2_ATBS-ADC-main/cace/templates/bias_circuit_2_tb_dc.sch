v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Template Testbench for DC sweep - Bias Circuit v2} 620 -1740 0 0 1 1 {}
N 1600 -700 1600 -600 {lab=GND}
N 1180 -660 1180 -600 {lab=GND}
N 1180 -780 1180 -720 {lab=VDD}
N 1600 -940 1600 -900 {lab=VDD}
N 1740 -780 1780 -780 {lab=Vbias}
N 1740 -820 1780 -820 {lab=Vbiasc}
N 1420 -940 1600 -940 {lab=VDD}
N 1420 -940 1420 -800 {lab=VDD}
N 1420 -800 1460 -800 {lab=VDD}
N 1600 -980 1600 -940 {lab=VDD}
C {devices/code_shown.sym} 260 -550 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 260 -1470 0 0 {name=NGSPICE
only_toplevel=true
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15 SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.control

save all

set num_threads=1

* DC Sweep of VDD
let vdd_stop=CACE\{vdd\} + 0.01
dc VDD 0 $&vdd_stop 5m

* Measurements
let Iout_nominal = 10e-9
let Iout_99_percent = 0.99 * Iout_nominal
print Iout_99_percent
meas dc VDD_min WHEN i(v.x1.viout)=Iout_99_percent

meas dc Iout_1_4V FIND i(v.x1.viout) at=1.4
meas dc Iout_1_3V FIND i(v.x1.viout) at=1.3
let Iout_volt = (Iout_1_4V - Iout_1_3V) * 10
print Iout_volt

meas dc Iout_VDD FIND i(v.x1.viout) at=CACE\{vdd\}

echo $&Iout_VDD $&Iout_volt > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

*quit
.endc"}
C {devices/gnd.sym} 1180 -600 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 1180 -780 0 0 {name=l8 lab=VDD}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1600 -600 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1600 -980 0 0 {name=l13 lab=VDD}
C {devices/vsource.sym} 1180 -690 0 0 {name=VDD value=CACE\{vdd\}}
C {bias_circuit_2.sym} 1600 -800 0 0 {name=x1}
C {devices/lab_wire.sym} 1780 -780 0 1 {name=p3 sig_type=std_logic lab=Vbias}
C {devices/lab_wire.sym} 1780 -820 0 1 {name=p1 sig_type=std_logic lab=Vbiasc}
