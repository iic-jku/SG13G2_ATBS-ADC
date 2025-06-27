v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 2050 -900 2270 -900 2270 -800 2050 -800 2050 -900 {dash = 8}
T {Template Testbench for noise analysis - Bio-signal Amplifier (simplified)} 320 -1730 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 2020 -740 0 0 0.25 0.25 {}
N 2180 -520 2180 -500 {
lab=vout}
N 2110 -490 2140 -490 {
lab=voutp}
N 2110 -450 2140 -450 {
lab=voutn}
N 2180 -440 2180 -420 {lab=GND}
N 2180 -960 2220 -960 {lab=voutp}
N 2080 -920 2220 -920 {lab=voutn}
N 2080 -920 2080 -880 {lab=voutn}
N 2080 -820 2080 -780 {lab=GND}
N 2180 -960 2180 -880 {lab=voutp}
N 2180 -820 2180 -780 {lab=GND}
N 1200 -560 1200 -520 {lab=VDD}
N 1200 -460 1200 -420 {lab=GND}
N 1420 -560 1420 -520 {lab=bio_amp_en}
N 1420 -460 1420 -420 {lab=GND}
N 980 -460 980 -420 {
lab=GND}
N 980 -560 980 -520 {
lab=VSS}
N 1640 -560 1640 -520 {lab=Vcm}
N 1640 -460 1640 -420 {lab=GND}
N 1480 -980 1520 -980 {lab=vinp1}
N 1480 -900 1520 -900 {lab=vinn1}
N 980 -960 980 -860 {lab=vind}
N 940 -960 980 -960 {lab=vind}
N 1060 -920 1060 -880 {lab=GND}
N 1060 -880 1100 -880 {lab=GND}
N 1100 -910 1100 -880 {
lab=GND}
N 1380 -940 1520 -940 {
lab=Vcm}
N 1300 -940 1300 -900 {lab=Vcm}
N 1300 -1080 1300 -1040 {lab=vinp1}
N 1180 -890 1260 -890 {lab=#net1}
N 1180 -1030 1260 -1030 {lab=#net1}
N 1100 -1030 1100 -970 {lab=#net1}
N 1220 -850 1260 -850 {lab=GND}
N 1100 -880 1100 -850 {
lab=GND}
N 1220 -990 1260 -990 {lab=GND}
N 1220 -990 1220 -850 {lab=GND}
N 1100 -850 1220 -850 {lab=GND}
N 1180 -1030 1180 -890 {lab=#net1}
N 1100 -1030 1180 -1030 {lab=#net1}
N 1300 -840 1300 -800 {lab=vinn1}
N 1100 -850 1100 -720 {lab=GND}
N 1380 -960 1380 -940 {lab=Vcm}
N 980 -960 1060 -960 {lab=vind}
N 1300 -940 1380 -940 {lab=Vcm}
N 1300 -980 1300 -940 {lab=Vcm}
N 1700 -1160 1700 -1140 {lab=VDD}
N 1920 -920 2080 -920 {lab=voutn}
N 1920 -960 2180 -960 {lab=voutp}
N 1720 -740 1720 -720 {lab=GND}
N 980 -800 980 -720 {lab=GND}
N 1740 -1160 1740 -1140 {lab=bio_amp_en}
C {devices/gnd.sym} 2080 -780 0 0 {name=l1 lab=GND}
C {vdd.sym} 1700 -1160 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1720 -720 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 2220 -960 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 2220 -920 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 2180 -780 0 0 {name=l30 lab=GND}
C {devices/lab_pin.sym} 2180 -520 0 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 2180 -470 0 0 {name=E1 value=1}
C {devices/gnd.sym} 2180 -420 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 2110 -450 2 1 {name=l15 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 2110 -490 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 80 -1510 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.option savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.control

optran 0 0 0 1u 1m 0

save all

set num_threads=1
set enable_noisy_r

* Noise Analysis
noise v(vout) vin dec 101 0.15 512 1

* Measurements
setplot noise2

* Convert to uVrms
let input_noise_total = inoise_total * 1e6
let output_noise_total = onoise_total * 1e6

echo $&input_noise_total $&output_noise_total > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
C {devices/code_shown.sym} 80 -490 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {devices/capa.sym} 2080 -850 0 0 {name=C1
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2180 -850 0 0 {name=C2
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 1200 -490 0 0 {name=VDD value=CACE\{vdd\}}
C {devices/vsource.sym} 1420 -490 0 0 {name=V1 value="1.5"}
C {devices/vsource.sym} 980 -490 0 0 {name=VSS value=0 savecurrent=false}
C {devices/gnd.sym} 980 -420 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 980 -560 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 1200 -420 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 1420 -420 0 0 {name=l7 lab=GND}
C {vdd.sym} 1200 -560 0 0 {name=l21 lab=VDD}
C {devices/vsource.sym} 1640 -490 0 0 {name=Vcm value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 1640 -560 2 0 {name=l56 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 1640 -420 0 0 {name=l57 lab=GND}
C {devices/lab_pin.sym} 1300 -1080 0 0 {name=l10 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 1300 -800 0 0 {name=l11 sig_type=std_logic lab=vinn1
}
C {devices/lab_pin.sym} 940 -960 0 0 {name=l13 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 1480 -980 0 0 {name=l5 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 1480 -900 0 0 {name=l19 sig_type=std_logic lab=vinn1
}
C {devices/vcvs.sym} 1300 -870 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1300 -1010 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 1380 -960 1 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/vcvs.sym} 1100 -940 0 0 {name=E6 value=1}
C {devices/vsource.sym} 980 -830 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/gnd.sym} 1100 -720 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 980 -720 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 1740 -1160 2 0 {name=l16 sig_type=std_logic lab=bio_amp_en}
C {devices/lab_pin.sym} 1420 -560 2 0 {name=l4 sig_type=std_logic lab=bio_amp_en}
C {bio_amplifier_simplified_CACE.sym} 1720 -940 0 0 {name=x1}
