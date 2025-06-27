v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 1870 -940 2090 -940 2090 -840 1870 -840 1870 -940 {dash = 8}
T {Template Testbench for noise analysis - Amplifier Core (simplified)} 400 -1730 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1840 -780 0 0 0.25 0.25 {}
N 1620 -1100 1620 -1080 {lab=amp_core_en}
N 2000 -600 2000 -580 {
lab=vout}
N 1930 -570 1960 -570 {
lab=voutp}
N 1930 -530 1960 -530 {
lab=voutn}
N 2000 -520 2000 -500 {lab=GND}
N 1600 -1120 1600 -1080 {lab=VDD}
N 1600 -880 1600 -820 {lab=GND}
N 2000 -1000 2040 -1000 {lab=voutn}
N 1900 -960 2040 -960 {lab=voutp}
N 1900 -960 1900 -920 {lab=voutp}
N 1700 -960 1900 -960 {lab=voutp}
N 1900 -860 1900 -820 {lab=GND}
N 2000 -1000 2000 -920 {lab=voutn}
N 1700 -1000 2000 -1000 {lab=voutn}
N 2000 -860 2000 -820 {lab=GND}
N 1160 -640 1160 -600 {lab=VDD}
N 1160 -540 1160 -500 {lab=GND}
N 1380 -640 1380 -600 {lab=amp_core_en}
N 1380 -540 1380 -500 {lab=GND}
N 940 -540 940 -500 {
lab=GND}
N 940 -640 940 -600 {
lab=VSS}
N 1600 -640 1600 -600 {lab=Vcm}
N 1600 -540 1600 -500 {lab=GND}
N 1480 -1020 1520 -1020 {lab=vinp1}
N 1480 -940 1520 -940 {lab=vinn1}
N 960 -1000 960 -940 {lab=vind}
N 940 -1000 960 -1000 {lab=vind}
N 1060 -960 1060 -920 {lab=GND}
N 1060 -920 1100 -920 {lab=GND}
N 1100 -950 1100 -920 {
lab=GND}
N 1380 -980 1520 -980 {
lab=Vcm}
N 1300 -980 1300 -940 {lab=Vcm}
N 1300 -1120 1300 -1080 {lab=vinp1}
N 1180 -930 1260 -930 {lab=#net1}
N 1180 -1070 1260 -1070 {lab=#net1}
N 1100 -1070 1100 -1010 {lab=#net1}
N 1220 -890 1260 -890 {lab=GND}
N 1100 -920 1100 -890 {
lab=GND}
N 1220 -1030 1260 -1030 {lab=GND}
N 1220 -1030 1220 -890 {lab=GND}
N 1100 -890 1220 -890 {lab=GND}
N 1180 -1070 1180 -930 {lab=#net1}
N 1100 -1070 1180 -1070 {lab=#net1}
N 1300 -880 1300 -840 {lab=vinn1}
N 1100 -890 1100 -820 {lab=GND}
N 960 -880 960 -820 {lab=GND}
N 1380 -1000 1380 -980 {lab=Vcm}
N 960 -1000 1060 -1000 {lab=vind}
N 1300 -980 1380 -980 {lab=Vcm}
N 1300 -1020 1300 -980 {lab=Vcm}
C {devices/gnd.sym} 1900 -820 0 0 {name=l1 lab=GND}
C {vdd.sym} 1600 -1120 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1600 -820 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 2040 -960 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 2040 -1000 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 2000 -820 0 0 {name=l30 lab=GND}
C {devices/lab_pin.sym} 2000 -600 0 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 2000 -550 0 0 {name=E1 value=1}
C {devices/gnd.sym} 2000 -500 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1930 -530 2 1 {name=l15 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1930 -570 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {amplifier_core_simplified.sym} 1600 -980 0 0 {name=x1}
C {devices/lab_pin.sym} 1620 -1100 2 0 {name=l16 sig_type=std_logic lab=amp_core_en}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 80 -1510 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.control

* optran 0 0 0 1u 1m 0

save all

set num_threads=1
set enable_noisy_r

* Noise Analysis
noise v(vout) vin dec 101 0.15 512

* Measurements
setplot noise2

* Convert to uVrms
let input_noise_total = inoise_total * 1e6
let output_noise_total = onoise_total * 1e6

echo $&input_noise_total $&output_noise_total > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
C {devices/code_shown.sym} 80 -570 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {devices/capa.sym} 1900 -890 0 0 {name=C1
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2000 -890 0 0 {name=C2
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 1160 -570 0 0 {name=VDD value=CACE\{vdd\}}
C {devices/vsource.sym} 1380 -570 0 0 {name=V1 value="1.5"}
C {devices/lab_pin.sym} 1380 -640 2 0 {name=l4 sig_type=std_logic lab=amp_core_en}
C {devices/vsource.sym} 940 -570 0 0 {name=VSS value=0 savecurrent=false}
C {devices/gnd.sym} 940 -500 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 940 -640 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 1160 -500 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 1380 -500 0 0 {name=l7 lab=GND}
C {vdd.sym} 1160 -640 0 0 {name=l21 lab=VDD}
C {devices/vsource.sym} 1600 -570 0 0 {name=Vcm value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 1600 -640 2 0 {name=l56 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 1600 -500 0 0 {name=l57 lab=GND}
C {devices/lab_pin.sym} 1300 -1120 0 0 {name=l10 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 1300 -840 0 0 {name=l11 sig_type=std_logic lab=vinn1
}
C {devices/lab_pin.sym} 940 -1000 0 0 {name=l13 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 1480 -1020 0 0 {name=l5 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 1480 -940 0 0 {name=l19 sig_type=std_logic lab=vinn1
}
C {devices/vcvs.sym} 1300 -910 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1300 -1050 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 1380 -1000 1 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/vcvs.sym} 1100 -980 0 0 {name=E6 value=1}
C {devices/vsource.sym} 960 -910 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/gnd.sym} 1100 -820 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 960 -820 0 0 {name=l18 lab=GND}
