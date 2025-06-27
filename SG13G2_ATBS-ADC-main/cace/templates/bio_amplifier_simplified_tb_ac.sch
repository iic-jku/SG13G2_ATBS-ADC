v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 1970 -1840 2190 -1840 2190 -1740 1970 -1740 1970 -1840 {dash = 8}
P 4 5 2220 -2240 2220 -1620 740 -1620 740 -2240 2220 -2240 {dash = 8}
T {Capacitive Load (Comparator, DAC, etc.)} 1940 -1690 0 0 0.25 0.25 {}
T {Template Testbench for AC analysis - Bio-signal Amplifier (simplified)} 100 -2380 0 0 1.2 1.2 {}
T {Closed-Loop Analysis (Acl, fcl, fcu)} 740 -2270 0 0 0.4 0.4 {}
N 1340 -1980 1380 -1980 {lab=vinp1}
N 1340 -1900 1380 -1900 {lab=vinn1}
N 820 -1960 820 -1860 {lab=vind}
N 800 -1960 820 -1960 {lab=vind}
N 920 -1920 920 -1880 {lab=GND}
N 920 -1880 960 -1880 {lab=GND}
N 960 -1910 960 -1880 {
lab=GND}
N 1240 -1940 1380 -1940 {
lab=Vcm1}
N 1160 -1940 1160 -1900 {lab=Vcm1}
N 1160 -2080 1160 -2040 {lab=vinp1}
N 1040 -1890 1120 -1890 {lab=#net1}
N 1040 -2030 1120 -2030 {lab=#net1}
N 960 -2030 960 -1970 {lab=#net1}
N 1080 -1850 1120 -1850 {lab=GND}
N 960 -1880 960 -1850 {
lab=GND}
N 1080 -1990 1120 -1990 {lab=GND}
N 1080 -1990 1080 -1850 {lab=GND}
N 960 -1850 1080 -1850 {lab=GND}
N 1040 -2030 1040 -1890 {lab=#net1}
N 960 -2030 1040 -2030 {lab=#net1}
N 1160 -1840 1160 -1800 {lab=vinn1}
N 960 -1850 960 -1720 {lab=GND}
N 400 -2220 400 -2180 {lab=VDD}
N 400 -2120 400 -2080 {lab=GND}
N 220 -1960 220 -1920 {lab=bio_amp_en}
N 220 -1860 220 -1820 {lab=GND}
N 1240 -1960 1240 -1940 {lab=Vcm1}
N 2100 -1960 2140 -1960 {lab=voutp1}
N 2000 -1920 2140 -1920 {lab=voutn1}
N 2000 -1920 2000 -1820 {lab=voutn1}
N 2000 -1760 2000 -1720 {lab=GND}
N 2100 -1960 2100 -1820 {lab=voutp1}
N 2100 -1760 2100 -1720 {lab=GND}
N 820 -1960 920 -1960 {lab=vind}
N 220 -2120 220 -2080 {
lab=GND}
N 220 -2220 220 -2180 {
lab=VSS}
N 2140 -2220 2140 -2200 {lab=vout1}
N 2140 -2140 2140 -2120 {lab=GND}
N 2080 -2190 2100 -2190 {lab=voutp1}
N 2080 -2150 2100 -2150 {lab=voutn1}
N 1160 -1940 1240 -1940 {lab=Vcm1}
N 1160 -1980 1160 -1940 {lab=Vcm1}
N 1560 -2160 1560 -2140 {lab=VDD}
N 1600 -2160 1600 -2140 {lab=bio_amp_en}
N 1580 -1740 1580 -1720 {lab=GND}
N 820 -1800 820 -1720 {lab=GND}
N 1780 -1960 2100 -1960 {lab=voutp1}
N 1780 -1920 2000 -1920 {lab=voutn1}
N 400 -1960 400 -1920 {lab=Vcm1}
N 400 -1860 400 -1820 {lab=GND}
N 560 -1960 560 -1920 {lab=Vcm2}
N 560 -1860 560 -1820 {lab=GND}
C {devices/code_shown.sym} 20 -1530 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e12 SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.control

optran 0 0 0 1u 1m 0

* save all
save v(vind) v(vout1)
*save v(vind) v(vout1) v(vout2)

set num_threads=1

* AC Analysis
ac dec 101 0.01 100Meg

* Closed-loop gain
let Acl=v(vout1)/v(vind)
let Acl_dB = vdb(Acl)

* Common-mode gain
*let Acm=v(vout2)/v(vind)
*let Acm_dB = vdb(Acm)

* Common Mode Rejection Ratio (CMRR)
* let CMRR = v(vout1)/v(vout2)
* let CMRR = v(Acl)/v(Acm)
* let CMRR_dB = vdb(CMRR)
* let CMRR_dB = Acl_dB - Acm_dB

* Measurements
* 10Hz closed-loop gain
meas ac Adc_cl_dB find Acl_dB when frequency = 10

* 10Hz CMRR
*meas ac CMRR_dc_dB find CMRR_dB when frequency = 10
let CMRR_dc_dB = 77.66

echo $&Adc_cl_dB $&CMRR_dc_dB > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
C {devices/vsource.sym} 400 -2150 0 0 {name=VDD value=CACE\{vdd\}}
C {devices/capa.sym} 2000 -1790 0 0 {name=C1
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2140 -1960 0 1 {name=p3 sig_type=std_logic lab=voutp1}
C {lab_pin.sym} 2140 -1920 0 1 {name=p4 sig_type=std_logic lab=voutn1}
C {devices/lab_pin.sym} 1160 -2080 0 0 {name=l10 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 1160 -1800 0 0 {name=l11 sig_type=std_logic lab=vinn1
}
C {devices/lab_pin.sym} 800 -1960 0 0 {name=l13 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 1340 -1980 0 0 {name=l1 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 1340 -1900 0 0 {name=l19 sig_type=std_logic lab=vinn1
}
C {devices/capa.sym} 2100 -1790 0 0 {name=C2
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vcvs.sym} 1160 -1870 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1160 -2010 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 1240 -1960 1 0 {name=l38 sig_type=std_logic lab=Vcm1}
C {devices/vcvs.sym} 960 -1940 0 0 {name=E6 value=1}
C {devices/vsource.sym} 220 -1890 0 0 {name=V1 value="1.5"}
C {devices/lab_pin.sym} 2140 -2220 0 1 {name=l12 sig_type=std_logic lab=vout1}
C {devices/vcvs.sym} 2140 -2170 0 0 {name=E1 value=1}
C {devices/lab_pin.sym} 2080 -2150 2 1 {name=l15 sig_type=std_logic lab=voutn1
}
C {devices/lab_pin.sym} 2080 -2190 0 0 {name=l23 sig_type=std_logic lab=voutp1}
C {devices/vsource.sym} 820 -1830 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/vsource.sym} 220 -2150 0 0 {name=VSS value=0 savecurrent=false}
C {devices/gnd.sym} 220 -2080 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 220 -2220 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 400 -2080 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 220 -1820 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 2140 -2120 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 2100 -1720 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 2000 -1720 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 960 -1720 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 820 -1720 0 0 {name=l18 lab=GND}
C {vdd.sym} 400 -2220 0 0 {name=l21 lab=VDD}
C {devices/code_shown.sym} 20 -1710 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {title-2.sym} 0 0 0 0 {name=l67 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/lab_pin.sym} 220 -1960 2 0 {name=l4 sig_type=std_logic lab=bio_amp_en}
C {devices/lab_pin.sym} 1600 -2160 2 0 {name=l70 sig_type=std_logic lab=bio_amp_en}
C {devices/gnd.sym} 1580 -1720 0 0 {name=l5 lab=GND}
C {vdd.sym} 1560 -2160 0 0 {name=l9 lab=VDD}
C {bio_amplifier_simplified_CACE.sym} 1580 -1940 0 0 {name=x1}
C {devices/vsource.sym} 400 -1890 0 0 {name=Vcm1 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 400 -1960 2 0 {name=l72 sig_type=std_logic lab=Vcm1}
C {devices/gnd.sym} 400 -1820 0 0 {name=l73 lab=GND}
C {devices/vsource.sym} 560 -1890 0 0 {name=Vcm2 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 560 -1960 2 0 {name=l74 sig_type=std_logic lab=Vcm2}
C {devices/gnd.sym} 560 -1820 0 0 {name=l75 lab=GND}
