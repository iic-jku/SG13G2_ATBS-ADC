v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 1970 -1840 2190 -1840 2190 -1740 1970 -1740 1970 -1840 {dash = 8}
P 4 5 1970 -1120 2190 -1120 2190 -1020 1970 -1020 1970 -1120 {dash = 8}
P 4 5 1950 -420 2170 -420 2170 -320 1950 -320 1950 -420 {dash = 8}
P 4 5 3150 -1870 3370 -1870 3370 -1770 3150 -1770 3150 -1870 {dash = 8}
P 4 5 3150 -1310 3370 -1310 3370 -1210 3150 -1210 3150 -1310 {dash = 8}
P 4 5 2220 -1560 2220 -940 740 -940 740 -1560 2220 -1560 {dash = 8}
P 4 5 2220 -2240 2220 -1620 740 -1620 740 -2240 2220 -2240 {dash = 8}
P 4 5 740 -880 2220 -880 2220 -240 740 -240 740 -880 {dash = 8}
P 4 5 2260 -2240 3400 -2240 3400 -1140 2260 -1140 2260 -2240 {dash = 8}
T {Capacitive Load (Comparator, DAC, etc.)} 1940 -1690 0 0 0.25 0.25 {}
T {Template Testbench for AC analysis - Bio-signal Amplifier (simplified)} 700 -2390 0 0 1.2 1.2 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1940 -970 0 0 0.25 0.25 {}
T {Output CM voltage: vout_cm = (voutp_cm + voutn_cm)/2} 1890 -1350 0 0 0.2 0.2 {}
T {-0.5 for CM} 1180 -1100 0 0 0.3 0.3 {}
T {Closed-Loop Analysis (Acl, fcl, fcu)} 740 -2270 0 0 0.4 0.4 {}
T {Common-Mode Analysis (CMRR)} 740 -1590 0 0 0.4 0.4 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1930 -270 0 0 0.25 0.25 {}
T {PSRR Analysis} 740 -910 0 0 0.4 0.4 {}
T {Capacitive Load (Comparator, DAC, etc.)} 3120 -1730 0 0 0.25 0.25 {}
T {Capacitive Load (Comparator, DAC, etc.)} 3120 -1170 0 0 0.25 0.25 {}
T {Differential & Common-mode input impedance} 2260 -2270 0 0 0.4 0.4 {}
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
N 440 -2220 440 -2180 {lab=VDD}
N 440 -2120 440 -2080 {lab=GND}
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
N 1340 -1260 1380 -1260 {lab=vinp2}
N 1340 -1180 1380 -1180 {lab=vinn2}
N 800 -1240 920 -1240 {lab=vind}
N 920 -1200 920 -1160 {lab=GND}
N 920 -1160 960 -1160 {lab=GND}
N 960 -1190 960 -1160 {
lab=GND}
N 1240 -1220 1380 -1220 {
lab=Vcm2}
N 1160 -1220 1160 -1180 {lab=Vcm2}
N 1160 -1360 1160 -1320 {lab=vinp2}
N 1040 -1170 1120 -1170 {lab=#net2}
N 1040 -1310 1120 -1310 {lab=#net2}
N 960 -1310 960 -1250 {lab=#net2}
N 1080 -1130 1120 -1130 {lab=GND}
N 960 -1160 960 -1130 {
lab=GND}
N 1080 -1270 1120 -1270 {lab=GND}
N 1080 -1270 1080 -1130 {lab=GND}
N 960 -1130 1080 -1130 {lab=GND}
N 1040 -1310 1040 -1170 {lab=#net2}
N 960 -1310 1040 -1310 {lab=#net2}
N 1160 -1120 1160 -1080 {lab=vinn2}
N 960 -1130 960 -1000 {lab=GND}
N 1240 -1240 1240 -1220 {lab=Vcm2}
N 2000 -1040 2000 -1000 {lab=GND}
N 2100 -1040 2100 -1000 {lab=GND}
N 2140 -1460 2140 -1380 {lab=GND}
N 2020 -1400 2020 -1380 {lab=GND}
N 2020 -1470 2100 -1470 {lab=#net3}
N 2020 -1470 2020 -1460 {lab=#net3}
N 1940 -1410 1980 -1410 {lab=GND}
N 1940 -1410 1940 -1380 {lab=GND}
N 1940 -1450 1980 -1450 {lab=voutn2}
N 1940 -1510 2100 -1510 {lab=voutp2}
N 2140 -2220 2140 -2200 {lab=vout1}
N 2140 -2140 2140 -2120 {lab=GND}
N 2080 -2190 2100 -2190 {lab=voutp1}
N 2080 -2150 2100 -2150 {lab=voutn1}
N 2140 -1540 2140 -1520 {lab=vout2}
N 1160 -1940 1240 -1940 {lab=Vcm1}
N 1160 -1980 1160 -1940 {lab=Vcm1}
N 1160 -1220 1240 -1220 {lab=Vcm2}
N 1160 -1260 1160 -1220 {lab=Vcm2}
N 1340 -560 1380 -560 {lab=Vcm3}
N 1340 -480 1380 -480 {lab=Vcm3}
N 1600 -740 1600 -720 {lab=bio_amp_en}
N 1340 -520 1380 -520 {
lab=Vcm3}
N 1980 -340 1980 -300 {lab=GND}
N 2080 -340 2080 -300 {lab=GND}
N 1340 -520 1340 -480 {lab=Vcm3}
N 1340 -560 1340 -520 {lab=Vcm3}
N 1260 -520 1340 -520 {lab=Vcm3}
N 2120 -860 2120 -840 {lab=vout3}
N 2120 -780 2120 -760 {lab=GND}
N 2060 -830 2080 -830 {lab=voutp3}
N 2060 -790 2080 -790 {lab=voutn3}
N 3180 -1800 3180 -1760 {lab=GND}
N 3280 -1800 3280 -1760 {lab=GND}
N 3280 -1440 3320 -1440 {lab=voutp5}
N 3180 -1400 3320 -1400 {lab=voutn5}
N 3180 -1240 3180 -1200 {lab=GND}
N 3280 -1240 3280 -1200 {lab=GND}
N 2480 -1880 2480 -1840 {lab=GND}
N 2480 -1840 2520 -1840 {lab=GND}
N 2520 -1870 2520 -1840 {
lab=GND}
N 2520 -1840 2520 -1760 {lab=GND}
N 2520 -1940 2520 -1930 {lab=#net4}
N 2480 -2020 2480 -1920 {lab=vin_dm}
N 2380 -2020 2380 -2000 {lab=vin_dm}
N 2340 -1460 2380 -1460 {lab=vin_cm}
N 2380 -1460 2380 -1440 {lab=vin_cm}
N 2560 -1460 2560 -1380 {lab=#net5}
N 2340 -2020 2380 -2020 {lab=vin_dm}
N 2380 -1380 2380 -1360 {lab=Vcm}
N 2380 -1940 2380 -1920 {lab=Vcm}
N 2080 -540 2120 -540 {lab=voutp3}
N 1980 -500 2120 -500 {lab=voutn3}
N 1560 -840 1560 -820 {lab=VDD}
N 1560 -740 1560 -720 {lab=vdd_noise}
N 1540 -740 1560 -740 {lab=vdd_noise}
N 1560 -760 1560 -740 {lab=vdd_noise}
N 2000 -1200 2140 -1200 {lab=voutn2}
N 2100 -1240 2140 -1240 {lab=voutp2}
N 1580 -1020 1580 -1000 {lab=GND}
N 1560 -1440 1560 -1420 {lab=VDD}
N 1600 -1440 1600 -1420 {lab=bio_amp_en}
N 2000 -1200 2000 -1100 {lab=voutn2}
N 1780 -1200 2000 -1200 {lab=voutn2}
N 2100 -1240 2100 -1100 {lab=voutp2}
N 1780 -1240 2100 -1240 {lab=voutp2}
N 1560 -2160 1560 -2140 {lab=VDD}
N 1600 -2160 1600 -2140 {lab=bio_amp_en}
N 1580 -1740 1580 -1720 {lab=GND}
N 820 -1800 820 -1720 {lab=GND}
N 1580 -320 1580 -300 {lab=GND}
N 1980 -500 1980 -400 {lab=voutn3}
N 1780 -500 1980 -500 {lab=voutn3}
N 2080 -540 2080 -400 {lab=voutp3}
N 1780 -540 2080 -540 {lab=voutp3}
N 2840 -2200 2840 -2180 {lab=VDD}
N 2880 -2200 2880 -2180 {lab=bio_amp_en}
N 2860 -1780 2860 -1760 {lab=GND}
N 2640 -2020 2660 -2020 {lab=#net6}
N 2640 -1980 2660 -1980 {lab=Vcm4}
N 2640 -1940 2660 -1940 {lab=#net7}
N 2480 -2020 2580 -2020 {lab=vin_dm}
N 2520 -1940 2580 -1940 {lab=#net4}
N 3180 -1960 3320 -1960 {lab=voutn4}
N 3280 -2000 3320 -2000 {lab=voutp4}
N 3180 -1960 3180 -1860 {lab=voutn4}
N 3060 -1960 3180 -1960 {lab=voutn4}
N 3280 -2000 3280 -1860 {lab=voutp4}
N 3060 -2000 3280 -2000 {lab=voutp4}
N 2380 -2020 2480 -2020 {lab=vin_dm}
N 2860 -1220 2860 -1200 {lab=GND}
N 2840 -1640 2840 -1620 {lab=VDD}
N 2880 -1640 2880 -1620 {lab=bio_amp_en}
N 3280 -1440 3280 -1300 {lab=voutp5}
N 3180 -1400 3180 -1300 {lab=voutn5}
N 3060 -1400 3180 -1400 {lab=voutn5}
N 3060 -1440 3280 -1440 {lab=voutp5}
N 2560 -1460 2660 -1460 {lab=#net5}
N 2620 -1420 2660 -1420 {lab=Vcm5}
N 2560 -1380 2660 -1380 {lab=#net5}
N 2380 -1460 2440 -1460 {lab=vin_cm}
N 2500 -1460 2560 -1460 {lab=#net5}
N 1780 -1960 2100 -1960 {lab=voutp1}
N 1780 -1920 2000 -1920 {lab=voutn1}
N 2520 -1020 2520 -980 {lab=Vcm1}
N 2520 -920 2520 -880 {lab=GND}
N 2740 -1020 2740 -980 {lab=Vcm2}
N 2740 -920 2740 -880 {lab=GND}
N 2960 -1020 2960 -980 {lab=Vcm3}
N 2960 -920 2960 -880 {lab=GND}
N 2520 -800 2520 -760 {lab=Vcm4}
N 2520 -700 2520 -660 {lab=GND}
N 2740 -800 2740 -760 {lab=Vcm5}
N 2740 -700 2740 -660 {lab=GND}
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
save v(vind) v(vout1) v(vout2) v(vout3) v(vdd_noise) v(vin_dm) v(vin_cm)

set num_threads=1

* AC Analysis
ac dec 101 0.01 100Meg

* Closed-loop gain
let Acl=v(vout1)/v(vind)
let Acl_dB = vdb(Acl)

* Common-mode gain
let Acm=v(vout2)/v(vind)
let Acm_dB = vdb(Acm)

* Common Mode Rejection Ratio (CMRR)
* let CMRR = v(vout1)/v(vout2)
let CMRR = v(Acl)/v(Acm)
let CMRR_dB = vdb(CMRR)
* let CMRR_dB = Acl_dB - Acm_dB

* PSRR
let PSRR = v(vdd_noise)/v(vout3)
let PSRR_dB = vdb(PSRR)

* Differential Mode Zin
let Zin_dm = v(vin_dm) / (i(Vmeasp) - i(Vmeasn))

* Common Mode Zin
let Zin_cm = v(vin_cm) / i(Vmeas_cm)

* Measurements
* 10Hz closed-loop gain
meas ac Adc_cl_dB find Acl_dB when frequency = 10

* Lower 3dB cut-off frequency
let Amag_fc = Adc_cl_dB-3
meas ac fcl find frequency when Acl_dB = Amag_fc RISE=1

* Upper 3dB cut-off frequency
meas ac fcu find frequency when Acl_dB = Amag_fc FALL=1

* 10Hz CMRR
meas ac CMRR_dc_dB find CMRR_dB when frequency = 10

* 10Hz PSRR
meas ac PSRR_dc_dB find PSRR_dB when frequency = 10

* 10Hz differential input impedance
meas ac Zin_dc_dm find Zin_dm when frequency = 10

* 10Hz common-mode input impedance
meas ac Zin_dc_cm find Zin_cm when frequency = 10

* echo $&Adc_cl_dB $&fcl $&fcu $&CMRR_dc_dB $&PSRR_dc_dB $&Zin_dc_dm $&Zin_dc_cm > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
echo $&Adc_cl_dB $&fcl $&fcu $&CMRR_dc_dB $&Zin_dc_dm $&Zin_dc_cm > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
C {devices/vsource.sym} 440 -2150 0 0 {name=VDD value=CACE\{vdd\}}
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
C {devices/gnd.sym} 440 -2080 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 220 -1820 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 2140 -2120 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 2100 -1720 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 2000 -1720 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 960 -1720 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 820 -1720 0 0 {name=l18 lab=GND}
C {vdd.sym} 440 -2220 0 0 {name=l21 lab=VDD}
C {devices/code_shown.sym} 20 -1710 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {devices/capa.sym} 2000 -1070 0 0 {name=C3
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2140 -1240 0 1 {name=p2 sig_type=std_logic lab=voutp2}
C {lab_pin.sym} 2140 -1200 0 1 {name=p5 sig_type=std_logic lab=voutn2}
C {devices/lab_pin.sym} 1160 -1360 0 0 {name=l22 sig_type=std_logic lab=vinp2}
C {devices/lab_pin.sym} 1160 -1080 0 0 {name=l25 sig_type=std_logic lab=vinn2
}
C {devices/lab_pin.sym} 800 -1240 0 0 {name=l26 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 1340 -1260 0 0 {name=l27 sig_type=std_logic lab=vinp2}
C {devices/lab_pin.sym} 1340 -1180 0 0 {name=l28 sig_type=std_logic lab=vinn2}
C {devices/capa.sym} 2100 -1070 0 0 {name=C4
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vcvs.sym} 1160 -1150 0 0 {name=E2 value=-0.5}
C {devices/vcvs.sym} 1160 -1290 0 0 {name=E3 value=0.5}
C {devices/lab_pin.sym} 1240 -1240 1 0 {name=l29 sig_type=std_logic lab=Vcm2}
C {devices/vcvs.sym} 960 -1220 0 0 {name=E7 value=1}
C {devices/gnd.sym} 2100 -1000 0 0 {name=l31 lab=GND}
C {devices/gnd.sym} 2000 -1000 0 0 {name=l32 lab=GND}
C {devices/gnd.sym} 960 -1000 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 2140 -1540 0 1 {name=l34 sig_type=std_logic lab=vout2}
C {devices/vcvs.sym} 2140 -1490 0 0 {name=E8 value=0.5}
C {devices/gnd.sym} 2140 -1380 0 0 {name=l36 lab=GND}
C {devices/lab_pin.sym} 1940 -1450 2 1 {name=l39 sig_type=std_logic lab=voutn2
}
C {devices/lab_pin.sym} 1940 -1510 0 0 {name=l40 sig_type=std_logic lab=voutp2
}
C {devices/vcvs.sym} 2020 -1430 0 0 {name=E10 value=-1}
C {devices/gnd.sym} 2020 -1380 0 0 {name=l45 lab=GND}
C {devices/gnd.sym} 1940 -1380 0 0 {name=l46 lab=GND}
C {devices/gnd.sym} 1980 -300 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 1580 -300 0 0 {name=l42 lab=GND}
C {lab_pin.sym} 2120 -540 0 1 {name=p6 sig_type=std_logic lab=voutp3}
C {lab_pin.sym} 2120 -500 0 1 {name=p7 sig_type=std_logic lab=voutn3}
C {devices/gnd.sym} 2080 -300 0 0 {name=l43 lab=GND}
C {devices/lab_pin.sym} 1260 -520 0 0 {name=l47 sig_type=std_logic lab=Vcm3}
C {devices/lab_pin.sym} 2120 -860 0 1 {name=l14 sig_type=std_logic lab=vout3}
C {devices/lab_pin.sym} 2060 -790 2 1 {name=l48 sig_type=std_logic lab=voutn3
}
C {devices/lab_pin.sym} 2060 -830 0 0 {name=l49 sig_type=std_logic lab=voutp3}
C {devices/gnd.sym} 2120 -760 0 0 {name=l50 lab=GND}
C {devices/capa.sym} 1980 -370 0 0 {name=C5
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2080 -370 0 0 {name=C6
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 3180 -1760 0 0 {name=l51 lab=GND}
C {lab_pin.sym} 3320 -2000 0 1 {name=p8 sig_type=std_logic lab=voutp4}
C {lab_pin.sym} 3320 -1960 0 1 {name=p9 sig_type=std_logic lab=voutn4}
C {devices/gnd.sym} 3280 -1760 0 0 {name=l55 lab=GND}
C {devices/gnd.sym} 3180 -1200 0 0 {name=l59 lab=GND}
C {lab_pin.sym} 3320 -1440 0 1 {name=p10 sig_type=std_logic lab=voutp5}
C {lab_pin.sym} 3320 -1400 0 1 {name=p11 sig_type=std_logic lab=voutn5}
C {devices/gnd.sym} 3280 -1200 0 0 {name=l62 lab=GND}
C {devices/lab_pin.sym} 2640 -1980 0 0 {name=l64 sig_type=std_logic lab=Vcm4}
C {devices/lab_pin.sym} 2620 -1420 0 0 {name=l65 sig_type=std_logic lab=Vcm5}
C {devices/vsource.sym} 2380 -1970 0 0 {name=vin_dm value="dc 0 ac 1"
}
C {devices/vcvs.sym} 2520 -1900 0 0 {name=E11 value=-1}
C {devices/gnd.sym} 2520 -1760 0 0 {name=l66 lab=GND}
C {devices/vsource.sym} 2380 -1410 0 0 {name=vin_cm value="dc 0 ac 1"
}
C {ammeter.sym} 2610 -2020 3 0 {name=Vmeasp savecurrent=true spice_ignore=0}
C {lab_pin.sym} 2340 -2020 2 1 {name=p12 sig_type=std_logic lab=vin_dm}
C {lab_pin.sym} 2340 -1460 2 1 {name=p13 sig_type=std_logic lab=vin_cm}
C {ammeter.sym} 2610 -1940 3 1 {name=Vmeasn savecurrent=true spice_ignore=0}
C {ammeter.sym} 2470 -1460 3 0 {name=Vmeas_cm savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 2380 -1360 3 0 {name=l68 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 2380 -1920 3 0 {name=l69 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 3180 -1830 0 0 {name=C7
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 3280 -1830 0 0 {name=C8
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 3180 -1270 0 0 {name=C9
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 3280 -1270 0 0 {name=C10
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {title-2.sym} 0 0 0 0 {name=l67 author="Simon Dorrer" rev=1.0 lock=true}
C {vdd.sym} 1560 -840 0 0 {name=l41 lab=VDD}
C {devices/vcvs.sym} 2120 -810 0 0 {name=E9 value=1}
C {devices/vsource.sym} 1560 -790 2 0 {name=Vnoise value="0 AC 1"}
C {devices/lab_pin.sym} 1540 -740 0 0 {name=l44 sig_type=std_logic lab=vdd_noise}
C {devices/gnd.sym} 1580 -1000 0 0 {name=l30 lab=GND}
C {vdd.sym} 1560 -1440 0 0 {name=l33 lab=VDD}
C {devices/lab_pin.sym} 1600 -1440 2 0 {name=l37 sig_type=std_logic lab=bio_amp_en}
C {devices/lab_pin.sym} 220 -1960 2 0 {name=l4 sig_type=std_logic lab=bio_amp_en}
C {devices/lab_pin.sym} 1600 -2160 2 0 {name=l70 sig_type=std_logic lab=bio_amp_en}
C {devices/gnd.sym} 1580 -1720 0 0 {name=l5 lab=GND}
C {vdd.sym} 1560 -2160 0 0 {name=l9 lab=VDD}
C {devices/lab_pin.sym} 2880 -2200 2 0 {name=l24 sig_type=std_logic lab=bio_amp_en}
C {vdd.sym} 2840 -2200 0 0 {name=l52 lab=VDD}
C {devices/gnd.sym} 2860 -1760 0 0 {name=l54 lab=GND}
C {devices/gnd.sym} 2860 -1200 0 0 {name=l58 lab=GND}
C {devices/lab_pin.sym} 2880 -1640 2 0 {name=l60 sig_type=std_logic lab=bio_amp_en}
C {vdd.sym} 2840 -1640 0 0 {name=l61 lab=VDD}
C {devices/lab_pin.sym} 1600 -740 2 0 {name=l63 sig_type=std_logic lab=bio_amp_en}
C {bio_amplifier_simplified_CACE.sym} 1580 -1940 0 0 {name=x1}
C {bio_amplifier_simplified_CACE.sym} 1580 -1220 0 0 {name=x2}
C {bio_amplifier_simplified_CACE.sym} 1580 -520 0 0 {name=x3}
C {bio_amplifier_simplified_CACE.sym} 2860 -1980 0 0 {name=x4}
C {bio_amplifier_simplified_CACE.sym} 2860 -1420 0 0 {name=x5}
C {devices/vsource.sym} 2520 -950 0 0 {name=Vcm1 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 2520 -1020 2 0 {name=l72 sig_type=std_logic lab=Vcm1}
C {devices/gnd.sym} 2520 -880 0 0 {name=l73 lab=GND}
C {devices/vsource.sym} 2740 -950 0 0 {name=Vcm2 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 2740 -1020 2 0 {name=l74 sig_type=std_logic lab=Vcm2}
C {devices/gnd.sym} 2740 -880 0 0 {name=l75 lab=GND}
C {devices/vsource.sym} 2960 -950 0 0 {name=Vcm3 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 2960 -1020 2 0 {name=l76 sig_type=std_logic lab=Vcm3}
C {devices/gnd.sym} 2960 -880 0 0 {name=l77 lab=GND}
C {devices/vsource.sym} 2520 -730 0 0 {name=Vcm4 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 2520 -800 2 0 {name=l78 sig_type=std_logic lab=Vcm4}
C {devices/gnd.sym} 2520 -660 0 0 {name=l79 lab=GND}
C {devices/vsource.sym} 2740 -730 0 0 {name=Vcm5 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 2740 -800 2 0 {name=l80 sig_type=std_logic lab=Vcm5}
C {devices/gnd.sym} 2740 -660 0 0 {name=l81 lab=GND}
