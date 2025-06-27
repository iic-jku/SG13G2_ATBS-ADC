v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Template Testbench for PSRR analysis - Bias Circuit v2} 600 -1720 0 0 1 1 {}
N 1680 -960 1680 -920 {lab=VDD}
N 1680 -720 1680 -620 {lab=GND}
N 1460 -820 1540 -820 {lab=bias_en}
N 1460 -820 1460 -740 {lab=bias_en}
N 1460 -680 1460 -620 {lab=GND}
N 1820 -800 1900 -800 {lab=Vbias}
N 1180 -800 1180 -780 {lab=VDD}
N 1180 -720 1180 -700 {lab=#net1}
N 1180 -640 1180 -620 {lab=GND}
N 1420 -820 1460 -820 {lab=bias_en}
N 1820 -840 1900 -840 {lab=Vbiasc}
C {devices/vsource.sym} 1460 -710 0 0 {name=Ven value=CACE\{vdd\}}
C {devices/gnd.sym} 1460 -620 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 360 -530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 360 -1390 0 0 {name=NGSPICE
only_toplevel=true
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15 SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.control

save all

set num_threads=1

* AC Analysis
ac dec 101 100m 10G

* Measurements
let PSRR = v(VDD)/v(Vbias)		
let PSRR_dB = vdb(PSRR)
meas ac PSRRdc_dB find PSRR_dB when frequency = 1
print PSRRdc_dB

echo $&PSRRdc_dB > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

*quit
.endc"}
C {devices/gnd.sym} 1180 -620 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 1180 -800 0 0 {name=l8 lab=VDD}
C {devices/lab_wire.sym} 1420 -820 0 0 {name=p2 sig_type=std_logic lab=bias_en}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1680 -620 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1680 -960 0 0 {name=l13 lab=VDD}
C {devices/vsource.sym} 1180 -670 0 0 {name=VDD value=CACE\{vdd\}}
C {devices/lab_wire.sym} 1900 -800 2 0 {name=p3 sig_type=std_logic lab=Vbias}
C {devices/vsource.sym} 1180 -750 0 0 {name=VDD_NOISE value="0 AC 1"}
C {bias_circuit_2.sym} 1680 -820 0 0 {name=x1}
C {devices/lab_wire.sym} 1900 -840 2 0 {name=p1 sig_type=std_logic lab=Vbiasc}
