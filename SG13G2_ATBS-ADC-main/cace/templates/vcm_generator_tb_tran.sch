v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 1930 -800 2060 -800 2060 -700 1930 -700 1930 -800 {dash = 8}
T {Template Testbench for transient analysis - Vcm Generator} 570 -1690 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1870 -630 0 0 0.25 0.25 {}
N 1360 -800 1360 -760 {
lab=VDD}
N 1360 -700 1360 -660 {
lab=GND}
N 1680 -980 1680 -940 {
lab=VDD}
N 1520 -880 1600 -880 {
lab=phi_1}
N 1520 -800 1600 -800 {
lab=phi_2}
N 1680 -740 1680 -660 {
lab=GND}
N 1360 -1120 1360 -1080 {
lab=GND}
N 1840 -1120 1840 -1080 {
lab=GND}
N 1360 -1220 1360 -1180 {
lab=phi_1}
N 1840 -1220 1840 -1180 {
lab=phi_2}
N 1960 -720 1960 -660 {
lab=GND}
N 1960 -840 1960 -780 {
lab=Vcm}
N 1760 -840 1960 -840 {
lab=Vcm}
N 1960 -840 2060 -840 {lab=Vcm}
N 1160 -700 1160 -660 {
lab=GND}
N 1160 -800 1160 -760 {
lab=VSS}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/vsource.sym} 1360 -730 0 0 {name=VDD value=CACE\{vdd\}}
C {devices/gnd.sym} 1360 -660 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 1360 -800 0 0 {name=l8 lab=VDD}
C {devices/code_shown.sym} 240 -510 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {devices/gnd.sym} 1680 -660 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 1680 -980 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} 1360 -1150 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 1360 -1080 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 1360 -1220 0 1 {name=l9 sig_type=std_logic lab=phi_1}
C {devices/lab_wire.sym} 1520 -880 0 0 {name=l12 sig_type=std_logic lab=phi_1}
C {devices/gnd.sym} 1840 -1080 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1840 -1220 0 1 {name=l15 sig_type=std_logic lab=phi_2}
C {devices/lab_wire.sym} 1520 -800 0 0 {name=l18 sig_type=std_logic lab=phi_2}
C {code_shown.sym} 240 -1470 0 0 {name=NGSPICE
only_toplevel=true
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.param fclk=8000000
.param fphi=65200
.param C_VCM=1p 
.param W_P=1.0u 
.param L_P=0.13u 
.param W_N=1.0u 
.param L_N=0.13u
.ic v(Vcm)=0
.option savecurrents SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.control

save all

set num_threads=1

* User Constants
let tstep = 500n
let tstart = 0.5m
let tstop = 1m

* Transient Analysis
tran $&tstep $&tstop

* Measurements
meas tran Vcm_at_tstop FIND v(Vcm) at=tstop

* tsettle at 99% Vcm
meas tran tsettle WHEN v(Vcm)=0.7425 RISE=1

echo $&Vcm_at_tstop $&tsettle > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc"}
C {devices/vsource.sym} 1840 -1150 0 0 {name=V2 value="pulse(0 1.5 \{0.50/fphi\} 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/lab_wire.sym} 2060 -840 2 0 {name=p1 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 1960 -660 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 1960 -750 0 0 {name=C9
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 1160 -730 0 0 {name=VSS value=0 savecurrent=false}
C {devices/gnd.sym} 1160 -660 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 1160 -800 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {vcm_generator_CACE.sym} 1680 -840 0 0 {name=x1}
