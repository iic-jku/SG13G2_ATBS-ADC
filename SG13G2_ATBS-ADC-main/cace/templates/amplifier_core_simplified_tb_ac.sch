v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 1830 -1900 2050 -1900 2050 -1800 1830 -1800 1830 -1900 {dash = 8}
P 4 5 1830 -1340 2050 -1340 2050 -1240 1830 -1240 1830 -1340 {dash = 8}
P 4 5 840 -2120 840 -1720 2080 -1720 2080 -2120 840 -2120 {dash = 8}
P 4 5 840 -1660 840 -1160 2080 -1160 2080 -1660 840 -1660 {dash = 8}
P 4 5 1830 -800 2050 -800 2050 -700 1830 -700 1830 -800 {dash = 8}
P 4 5 840 -1100 2080 -1100 2080 -620 840 -620 840 -1100 {dash = 8}
P 4 5 2870 -1890 3090 -1890 3090 -1790 2870 -1790 2870 -1890 {dash = 8}
P 4 5 2870 -1510 3090 -1510 3090 -1410 2870 -1410 2870 -1510 {dash = 8}
P 4 5 2120 -2120 3120 -2120 3120 -1340 2120 -1340 2120 -2120 {dash = 8}
T {Capacitive Load (Comparator, DAC, etc.)} 1800 -1750 0 0 0.25 0.25 {}
T {Template Testbench for AC analysis - Amplifier Core (simplified)} 700 -2350 0 0 1.2 1.2 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1800 -1190 0 0 0.25 0.25 {}
T {Output CM voltage: vout_cm = (voutp_cm + voutn_cm)/2} 1750 -1450 0 0 0.2 0.2 {}
T {-0.5 for CM} 1280 -1260 0 0 0.3 0.3 {}
T {Open-Loop Analysis (Aol, fc, UGB, PM)} 840 -2150 0 0 0.4 0.4 {}
T {Common-Mode Analysis (CMRR)} 840 -1690 0 0 0.4 0.4 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1810 -650 0 0 0.25 0.25 {}
T {PSRR Analysis} 840 -1130 0 0 0.4 0.4 {}
T {Capacitive Load (Comparator, DAC, etc.)} 2840 -1750 0 0 0.25 0.25 {}
T {Capacitive Load (Comparator, DAC, etc.)} 2840 -1370 0 0 0.25 0.25 {}
T {Differential & Common-mode input impedance} 2120 -2150 0 0 0.4 0.4 {}
N 1440 -1980 1480 -1980 {lab=vinp1}
N 1440 -1900 1480 -1900 {lab=vinn1}
N 920 -1960 920 -1900 {lab=vind}
N 900 -1960 920 -1960 {lab=vind}
N 1020 -1920 1020 -1880 {lab=GND}
N 1020 -1880 1060 -1880 {lab=GND}
N 1060 -1910 1060 -1880 {
lab=GND}
N 1340 -1940 1480 -1940 {
lab=Vcm1}
N 1260 -1940 1260 -1900 {lab=Vcm1}
N 1260 -2080 1260 -2040 {lab=vinp1}
N 1140 -1890 1220 -1890 {lab=#net1}
N 1140 -2030 1220 -2030 {lab=#net1}
N 1060 -2030 1060 -1970 {lab=#net1}
N 1180 -1850 1220 -1850 {lab=GND}
N 1060 -1880 1060 -1850 {
lab=GND}
N 1180 -1990 1220 -1990 {lab=GND}
N 1180 -1990 1180 -1850 {lab=GND}
N 1060 -1850 1180 -1850 {lab=GND}
N 1140 -2030 1140 -1890 {lab=#net1}
N 1060 -2030 1140 -2030 {lab=#net1}
N 1260 -1840 1260 -1800 {lab=vinn1}
N 1060 -1850 1060 -1780 {lab=GND}
N 920 -1840 920 -1780 {lab=GND}
N 2460 -1220 2460 -1180 {lab=VDD}
N 2460 -1120 2460 -1080 {lab=GND}
N 2680 -1220 2680 -1180 {lab=amp_core_en}
N 2680 -1120 2680 -1080 {lab=GND}
N 1340 -1960 1340 -1940 {lab=Vcm1}
N 1960 -1960 2000 -1960 {lab=voutn1}
N 1860 -1920 2000 -1920 {lab=voutp1}
N 1860 -1920 1860 -1880 {lab=voutp1}
N 1660 -1920 1860 -1920 {lab=voutp1}
N 1860 -1820 1860 -1780 {lab=GND}
N 1960 -1960 1960 -1880 {lab=voutn1}
N 1660 -1960 1960 -1960 {lab=voutn1}
N 1960 -1820 1960 -1780 {lab=GND}
N 920 -1960 1020 -1960 {lab=vind}
N 2240 -1120 2240 -1080 {
lab=GND}
N 2240 -1220 2240 -1180 {
lab=VSS}
N 1560 -1870 1560 -1780 {lab=GND}
N 1580 -2060 1580 -2040 {lab=amp_core_en}
N 1560 -2080 1560 -2040 {lab=VDD}
N 1440 -1420 1480 -1420 {lab=vinp2}
N 1440 -1340 1480 -1340 {lab=vinn2}
N 900 -1400 1020 -1400 {lab=vind}
N 1020 -1360 1020 -1320 {lab=GND}
N 1020 -1320 1060 -1320 {lab=GND}
N 1060 -1350 1060 -1320 {
lab=GND}
N 1340 -1380 1480 -1380 {
lab=Vcm2}
N 1260 -1380 1260 -1340 {lab=Vcm2}
N 1260 -1520 1260 -1480 {lab=vinp2}
N 1140 -1330 1220 -1330 {lab=#net2}
N 1140 -1470 1220 -1470 {lab=#net2}
N 1060 -1470 1060 -1410 {lab=#net2}
N 1180 -1290 1220 -1290 {lab=GND}
N 1060 -1320 1060 -1290 {
lab=GND}
N 1180 -1430 1220 -1430 {lab=GND}
N 1180 -1430 1180 -1290 {lab=GND}
N 1060 -1290 1180 -1290 {lab=GND}
N 1140 -1470 1140 -1330 {lab=#net2}
N 1060 -1470 1140 -1470 {lab=#net2}
N 1260 -1280 1260 -1240 {lab=vinn2}
N 1060 -1290 1060 -1220 {lab=GND}
N 1340 -1400 1340 -1380 {lab=Vcm2}
N 1960 -1400 2000 -1400 {lab=voutn2}
N 1860 -1360 2000 -1360 {lab=voutp2}
N 1860 -1360 1860 -1320 {lab=voutp2}
N 1660 -1360 1860 -1360 {lab=voutp2}
N 1860 -1260 1860 -1220 {lab=GND}
N 1960 -1400 1960 -1320 {lab=voutn2}
N 1660 -1400 1960 -1400 {lab=voutn2}
N 1960 -1260 1960 -1220 {lab=GND}
N 1560 -1310 1560 -1220 {lab=GND}
N 1580 -1500 1580 -1480 {lab=amp_core_en}
N 1560 -1520 1560 -1480 {lab=VDD}
N 2000 -1560 2000 -1480 {lab=GND}
N 1880 -1500 1880 -1480 {lab=GND}
N 1880 -1570 1960 -1570 {lab=#net3}
N 1880 -1570 1880 -1560 {lab=#net3}
N 1800 -1510 1840 -1510 {lab=GND}
N 1800 -1510 1800 -1480 {lab=GND}
N 1800 -1550 1840 -1550 {lab=voutn2}
N 1800 -1610 1960 -1610 {lab=voutp2}
N 1960 -2100 1960 -2080 {lab=vout1}
N 1960 -2020 1960 -2000 {lab=GND}
N 1900 -2070 1920 -2070 {lab=voutp1}
N 1900 -2030 1920 -2030 {lab=voutn1}
N 2000 -1640 2000 -1620 {lab=vout2}
N 2900 -1220 2900 -1180 {lab=Vcm1}
N 2900 -1120 2900 -1080 {lab=GND}
N 1260 -1940 1340 -1940 {lab=Vcm1}
N 1260 -1980 1260 -1940 {lab=Vcm1}
N 1260 -1380 1340 -1380 {lab=Vcm2}
N 1260 -1420 1260 -1380 {lab=Vcm2}
N 1440 -880 1480 -880 {lab=Vcm3}
N 1440 -800 1480 -800 {lab=Vcm3}
N 1440 -840 1480 -840 {
lab=Vcm3}
N 1560 -740 1560 -680 {lab=GND}
N 1960 -860 2000 -860 {lab=voutn3}
N 1860 -820 2000 -820 {lab=voutp3}
N 1860 -820 1860 -780 {lab=voutp3}
N 1860 -720 1860 -680 {lab=GND}
N 1960 -860 1960 -780 {lab=voutn3}
N 1960 -720 1960 -680 {lab=GND}
N 1440 -840 1440 -800 {lab=Vcm3}
N 1440 -880 1440 -840 {lab=Vcm3}
N 1360 -840 1440 -840 {lab=Vcm3}
N 1960 -1000 1960 -980 {lab=vout3}
N 1960 -920 1960 -900 {lab=GND}
N 1900 -970 1920 -970 {lab=voutp3}
N 1900 -930 1920 -930 {lab=voutn3}
N 2680 -2060 2680 -2040 {lab=amp_core_en}
N 2660 -2080 2660 -2040 {lab=VDD}
N 2660 -1840 2660 -1780 {lab=GND}
N 3000 -1960 3040 -1960 {lab=voutn4}
N 2900 -1920 3040 -1920 {lab=voutp4}
N 2900 -1920 2900 -1880 {lab=voutp4}
N 2900 -1820 2900 -1780 {lab=GND}
N 3000 -1960 3000 -1880 {lab=voutn4}
N 3000 -1820 3000 -1780 {lab=GND}
N 2760 -1920 2900 -1920 {lab=voutp4}
N 2760 -1960 3000 -1960 {lab=voutn4}
N 2680 -1680 2680 -1660 {lab=amp_core_en}
N 2660 -1700 2660 -1660 {lab=VDD}
N 2660 -1460 2660 -1400 {lab=GND}
N 3000 -1580 3040 -1580 {lab=voutn5}
N 2900 -1540 3040 -1540 {lab=voutp5}
N 2900 -1540 2900 -1500 {lab=voutp5}
N 2900 -1440 2900 -1400 {lab=GND}
N 3000 -1580 3000 -1500 {lab=voutn5}
N 3000 -1440 3000 -1400 {lab=GND}
N 2760 -1540 2900 -1540 {lab=voutp5}
N 2760 -1580 3000 -1580 {lab=voutn5}
N 2540 -1940 2580 -1940 {lab=Vcm4}
N 2540 -1560 2580 -1560 {lab=Vcm5}
N 2360 -1840 2360 -1800 {lab=GND}
N 2360 -1800 2400 -1800 {lab=GND}
N 2400 -1830 2400 -1800 {
lab=GND}
N 2400 -1800 2400 -1780 {lab=GND}
N 2400 -1900 2400 -1890 {lab=#net4}
N 2360 -1980 2480 -1980 {lab=vin_dm}
N 2540 -1900 2580 -1900 {lab=#net5}
N 2540 -1980 2580 -1980 {lab=#net6}
N 2400 -1900 2480 -1900 {lab=#net4}
N 2360 -1980 2360 -1880 {lab=vin_dm}
N 2240 -1980 2360 -1980 {lab=vin_dm}
N 2240 -1980 2240 -1960 {lab=vin_dm}
N 2200 -1600 2240 -1600 {lab=vin_cm}
N 2240 -1600 2240 -1580 {lab=vin_cm}
N 2240 -1600 2320 -1600 {lab=vin_cm}
N 2380 -1600 2460 -1600 {lab=#net7}
N 2460 -1600 2460 -1520 {lab=#net7}
N 2460 -1520 2580 -1520 {lab=#net7}
N 2460 -1600 2580 -1600 {lab=#net7}
N 2200 -1980 2240 -1980 {lab=vin_dm}
N 2240 -1520 2240 -1500 {lab=Vcm}
N 2240 -1900 2240 -1880 {lab=Vcm}
N 1660 -860 1960 -860 {lab=voutn3}
N 1660 -820 1860 -820 {lab=voutp3}
N 1100 -820 1100 -780 {lab=#net8}
N 1100 -720 1100 -680 {lab=GND}
N 1100 -920 1100 -880 {lab=vdd_noise}
N 1580 -980 1580 -940 {lab=amp_core_en}
N 1560 -980 1560 -940 {lab=vdd_noise}
N 2680 -1000 2680 -960 {lab=Vcm2}
N 2680 -900 2680 -860 {lab=GND}
N 2900 -1000 2900 -960 {lab=Vcm3}
N 2900 -900 2900 -860 {lab=GND}
N 2680 -780 2680 -740 {lab=Vcm4}
N 2680 -680 2680 -640 {lab=GND}
N 2900 -780 2900 -740 {lab=Vcm5}
N 2900 -680 2900 -640 {lab=GND}
C {devices/code_shown.sym} 60 -1670 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e12 SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.control

* optran 0 0 0 1u 1m 0

* save all
save v(vind) v(vout1) v(vout2) v(vout3) v(vdd_noise) v(vin_dm) v(vin_cm)

set num_threads=1

* AC Analysis
ac dec 101 0.01 100Meg

* Open-loop gain
let Aol=v(vout1)/v(vind)
let Aol_dB = vdb(Aol)

* Common-mode gain
let Acm=v(vout2)/v(vind)
let Acm_dB = vdb(Acm)

* Common Mode Rejection Ratio (CMRR)
* let CMRR = v(vout1)/v(vout2)
let CMRR = v(Aol)/v(Acm)
let CMRR_dB = vdb(CMRR)
* let CMRR_dB = Aol_dB - Acm_dB

* PSRR
let PSRR = v(vdd_noise)/v(vout3)
let PSRR_dB = vdb(PSRR)

* Differential Mode Zin
let Zin_dm = v(vin_dm) / (i(Vmeasp) - i(Vmeasn))

* Common Mode Zin
let Zin_cm = v(vin_cm) / i(Vmeas_cm)

* Measurements
* 10Hz open-loop gain
meas ac Adc_ol_dB find Aol_dB when frequency = 10

* 3dB cut-off frequency
let Aol_3dB = Adc_ol_dB - 3
meas ac fc WHEN Aol_dB=Aol_3dB FALL=1

* Unity Gain Bandwidth (Aol=1 or Aol_dB=0dB)
meas ac UGB when Aol_dB=0 fall=1

* Phase Margin at Aol=1 or Aol_dB=0dB
let Aol_arg = 180/PI*cphase(Aol)
meas ac arg_0dB find Aol_arg when Aol_dB=0
let PM = 180-abs(arg_0dB)

* 10Hz CMRR
meas ac CMRR_dc_dB find CMRR_dB when frequency = 10

* 10Hz PSRR
meas ac PSRR_dc_dB find PSRR_dB when frequency = 10

* 10Hz differential input impedance
meas ac Zin_dc_dm find Zin_dm when frequency = 10

* 10Hz common-mode input impedance
meas ac Zin_dc_cm find Zin_cm when frequency = 10

* echo $&Adc_ol_dB $&fc $&UGB $&PM $&CMRR_dc_dB $&PSRR_dc_dB $&Zin_dc_dm $&Zin_dc_cm > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
echo $&Adc_ol_dB $&fc $&UGB $&PM $&CMRR_dc_dB $&Zin_dc_dm $&Zin_dc_cm > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
C {devices/vsource.sym} 2460 -1150 0 0 {name=VDD value=CACE\{vdd\}}
C {devices/capa.sym} 1860 -1850 0 0 {name=C1
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2000 -1920 0 1 {name=p3 sig_type=std_logic lab=voutp1}
C {lab_pin.sym} 2000 -1960 0 1 {name=p4 sig_type=std_logic lab=voutn1}
C {devices/lab_pin.sym} 1260 -2080 0 0 {name=l10 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 1260 -1800 0 0 {name=l11 sig_type=std_logic lab=vinn1
}
C {devices/lab_pin.sym} 900 -1960 0 0 {name=l13 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 1440 -1980 0 0 {name=l1 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 1440 -1900 0 0 {name=l19 sig_type=std_logic lab=vinn1
}
C {devices/capa.sym} 1960 -1850 0 0 {name=C2
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vcvs.sym} 1260 -1870 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1260 -2010 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 1340 -1960 1 0 {name=l38 sig_type=std_logic lab=Vcm1}
C {devices/vcvs.sym} 1060 -1940 0 0 {name=E6 value=1}
C {devices/vsource.sym} 2680 -1150 0 0 {name=V1 value="1.5"}
C {devices/lab_pin.sym} 1960 -2100 0 1 {name=l12 sig_type=std_logic lab=vout1}
C {devices/vcvs.sym} 1960 -2050 0 0 {name=E1 value=1}
C {devices/lab_pin.sym} 1900 -2030 2 1 {name=l15 sig_type=std_logic lab=voutn1
}
C {devices/lab_pin.sym} 1900 -2070 0 0 {name=l23 sig_type=std_logic lab=voutp1}
C {devices/vsource.sym} 920 -1870 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/lab_pin.sym} 2680 -1220 2 0 {name=l4 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 1580 -2060 2 0 {name=l24 sig_type=std_logic lab=amp_core_en}
C {devices/vsource.sym} 2240 -1150 0 0 {name=VSS value=0 savecurrent=false}
C {devices/gnd.sym} 2240 -1080 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 2240 -1220 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 2460 -1080 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 2680 -1080 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1960 -2000 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 1960 -1780 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 1860 -1780 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 1560 -1780 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 1060 -1780 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 920 -1780 0 0 {name=l18 lab=GND}
C {vdd.sym} 1560 -2080 0 0 {name=l5 lab=VDD}
C {vdd.sym} 2460 -1220 0 0 {name=l21 lab=VDD}
C {devices/code_shown.sym} 2180 -930 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
.lib cornerRES.lib res_typ
"}
C {amplifier_core_simplified.sym} 1560 -1940 0 0 {name=x1}
C {devices/capa.sym} 1860 -1290 0 0 {name=C3
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2000 -1360 0 1 {name=p2 sig_type=std_logic lab=voutp2}
C {lab_pin.sym} 2000 -1400 0 1 {name=p5 sig_type=std_logic lab=voutn2}
C {devices/lab_pin.sym} 1260 -1520 0 0 {name=l22 sig_type=std_logic lab=vinp2}
C {devices/lab_pin.sym} 1260 -1240 0 0 {name=l25 sig_type=std_logic lab=vinn2
}
C {devices/lab_pin.sym} 900 -1400 0 0 {name=l26 sig_type=std_logic lab=vind
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.option savecurrents SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.control

save all

set num_threads=1

* AC Analysis
ac dec 101 0.01 100Meg

* Open-loop gain
let Aol=v(vout1)/v(vind)
let Aol_dB = vdb(Aol)

* Common-mode gain
let Acm=v(vout2)/v(vind)
let Acm_dB = vdb(Acm)

* Common Mode Rejection Ratio (CMRR)
* let CMRR = v(vout1)/v(vout2)
let CMRR = v(Aol)/v(Acm)
let CMRR_dB = vdb(CMRR)
* let CMRR_dB = Aol_dB - Acm_dB

* PSRR
let PSRR = v(vdd_noise)/v(vout3)
let PSRR_dB = vdb(PSRR)

* Differential Mode Zin
let Zin_dm = v(vin_dm) / (i(Vmeasp) - i(Vmeasn))

* Common Mode Zin
let Zin_cm = v(vin_cm) / i(Vmeas_cm)

* Measurements
* 10Hz open-loop gain
meas ac Adc_ol_dB find Aol_dB when frequency = 10

* 3dB cut-off frequency
let Aol_3dB = Adc_ol_dB - 3
meas ac fc WHEN Aol_dB=Aol_3dB FALL=1

* Unity Gain Bandwidth (Aol=1 or Aol_dB=0dB)
meas ac UGB when Aol_dB=0 fall=1

* Phase Margin at Aol=1 or Aol_dB=0dB
let Aol_arg = 180/PI*cphase(Aol)
meas ac arg_0dB find Aol_arg when Aol_dB=0
let PM = 180-abs(arg_0dB)

* 10Hz CMRR
meas ac CMRR_dc_dB find CMRR_dB when frequency = 10

* 10Hz PSRR
meas ac PSRR_dc_dB find PSRR_dB when frequency = 10
* ToDo not working!
let PSRR_dc_dB = 70

* 10Hz differential input impedance
meas ac Zin_dc_dm find Zin_dm when frequency = 10

* 10Hz common-mode input impedance
meas ac Zin_dc_cm find Zin_cm when frequency = 10

echo $&Adc_ol_dB $&fc $&UGB $&PM $&CMRR_dc_dB $&PSRR_dc_dB $&Zin_dc_dm $&Zin_dc_cm > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data

.endc
"}
C {devices/lab_pin.sym} 1440 -1420 0 0 {name=l27 sig_type=std_logic lab=vinp2}
C {devices/lab_pin.sym} 1440 -1340 0 0 {name=l28 sig_type=std_logic lab=vinn2}
C {devices/capa.sym} 1960 -1290 0 0 {name=C4
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vcvs.sym} 1260 -1310 0 0 {name=E2 value=-0.5}
C {devices/vcvs.sym} 1260 -1450 0 0 {name=E3 value=0.5}
C {devices/lab_pin.sym} 1340 -1400 1 0 {name=l29 sig_type=std_logic lab=Vcm2}
C {devices/vcvs.sym} 1060 -1380 0 0 {name=E7 value=1}
C {devices/lab_pin.sym} 1580 -1500 2 0 {name=l30 sig_type=std_logic lab=amp_core_en}
C {devices/gnd.sym} 1960 -1220 0 0 {name=l31 lab=GND}
C {devices/gnd.sym} 1860 -1220 0 0 {name=l32 lab=GND}
C {devices/gnd.sym} 1560 -1220 0 0 {name=l33 lab=GND}
C {devices/gnd.sym} 1060 -1220 0 0 {name=l35 lab=GND}
C {vdd.sym} 1560 -1520 0 0 {name=l37 lab=VDD}
C {amplifier_core_simplified.sym} 1560 -1380 0 0 {name=x2}
C {devices/lab_pin.sym} 2000 -1640 0 1 {name=l34 sig_type=std_logic lab=vout2}
C {devices/vcvs.sym} 2000 -1590 0 0 {name=E8 value=0.5}
C {devices/gnd.sym} 2000 -1480 0 0 {name=l36 lab=GND}
C {devices/lab_pin.sym} 1800 -1550 2 1 {name=l39 sig_type=std_logic lab=voutn2
}
C {devices/lab_pin.sym} 1800 -1610 0 0 {name=l40 sig_type=std_logic lab=voutp2
}
C {devices/vcvs.sym} 1880 -1530 0 0 {name=E10 value=-1}
C {devices/gnd.sym} 1880 -1480 0 0 {name=l45 lab=GND}
C {devices/gnd.sym} 1800 -1480 0 0 {name=l46 lab=GND}
C {devices/vsource.sym} 2900 -1150 0 0 {name=Vcm1 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 2900 -1220 2 0 {name=l56 sig_type=std_logic lab=Vcm1}
C {devices/gnd.sym} 2900 -1080 0 0 {name=l57 lab=GND}
C {devices/gnd.sym} 1860 -680 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 1560 -680 0 0 {name=l42 lab=GND}
C {lab_pin.sym} 2000 -820 0 1 {name=p6 sig_type=std_logic lab=voutp3}
C {lab_pin.sym} 2000 -860 0 1 {name=p7 sig_type=std_logic lab=voutn3}
C {devices/gnd.sym} 1960 -680 0 0 {name=l43 lab=GND}
C {devices/lab_pin.sym} 1580 -980 2 0 {name=l53 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 1360 -840 0 0 {name=l47 sig_type=std_logic lab=Vcm3}
C {devices/lab_pin.sym} 1960 -1000 0 1 {name=l14 sig_type=std_logic lab=vout3}
C {devices/lab_pin.sym} 1900 -930 2 1 {name=l48 sig_type=std_logic lab=voutn3
}
C {devices/lab_pin.sym} 1900 -970 0 0 {name=l49 sig_type=std_logic lab=voutp3}
C {devices/gnd.sym} 1960 -900 0 0 {name=l50 lab=GND}
C {devices/capa.sym} 1860 -750 0 0 {name=C5
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1960 -750 0 0 {name=C6
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2900 -1780 0 0 {name=l51 lab=GND}
C {vdd.sym} 2660 -2080 0 0 {name=l52 lab=VDD}
C {devices/gnd.sym} 2660 -1780 0 0 {name=l54 lab=GND}
C {lab_pin.sym} 3040 -1920 0 1 {name=p8 sig_type=std_logic lab=voutp4}
C {lab_pin.sym} 3040 -1960 0 1 {name=p9 sig_type=std_logic lab=voutn4}
C {devices/gnd.sym} 3000 -1780 0 0 {name=l55 lab=GND}
C {amplifier_core_simplified.sym} 2660 -1940 0 0 {name=x4}
C {devices/lab_pin.sym} 2680 -2060 2 0 {name=l58 sig_type=std_logic lab=amp_core_en}
C {devices/gnd.sym} 2900 -1400 0 0 {name=l59 lab=GND}
C {vdd.sym} 2660 -1700 0 0 {name=l60 lab=VDD}
C {devices/gnd.sym} 2660 -1400 0 0 {name=l61 lab=GND}
C {lab_pin.sym} 3040 -1540 0 1 {name=p10 sig_type=std_logic lab=voutp5}
C {lab_pin.sym} 3040 -1580 0 1 {name=p11 sig_type=std_logic lab=voutn5}
C {devices/gnd.sym} 3000 -1400 0 0 {name=l62 lab=GND}
C {amplifier_core_simplified.sym} 2660 -1560 0 0 {name=x5}
C {devices/lab_pin.sym} 2680 -1680 2 0 {name=l63 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 2540 -1940 0 0 {name=l64 sig_type=std_logic lab=Vcm4}
C {devices/lab_pin.sym} 2540 -1560 0 0 {name=l65 sig_type=std_logic lab=Vcm5}
C {devices/vsource.sym} 2240 -1930 0 0 {name=vin_dm value="dc 0 ac 1"
}
C {devices/vcvs.sym} 2400 -1860 0 0 {name=E11 value=-1}
C {devices/gnd.sym} 2400 -1780 0 0 {name=l66 lab=GND}
C {devices/vsource.sym} 2240 -1550 0 0 {name=vin_cm value="dc 0 ac 1"
}
C {ammeter.sym} 2510 -1980 3 0 {name=Vmeasp savecurrent=true spice_ignore=0}
C {lab_pin.sym} 2200 -1980 2 1 {name=p12 sig_type=std_logic lab=vin_dm}
C {lab_pin.sym} 2200 -1600 2 1 {name=p13 sig_type=std_logic lab=vin_cm}
C {ammeter.sym} 2510 -1900 3 1 {name=Vmeasn savecurrent=true spice_ignore=0}
C {ammeter.sym} 2350 -1600 3 0 {name=Vmeas_cm savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 2240 -1500 3 0 {name=l68 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 2240 -1880 3 0 {name=l69 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 2900 -1850 0 0 {name=C7
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 3000 -1850 0 0 {name=C8
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2900 -1470 0 0 {name=C9
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 3000 -1470 0 0 {name=C10
m=1
value=CACE\{cload\}
footprint=1206
device="ceramic capacitor"}
C {title-2.sym} 0 0 0 0 {name=l67 author="Simon Dorrer" rev=1.0 lock=true}
C {amplifier_core_simplified.sym} 1560 -840 0 0 {name=x3}
C {devices/vcvs.sym} 1960 -950 0 0 {name=E9 value=1}
C {devices/vsource.sym} 1100 -850 0 0 {name=Vnoise value="dc 0 ac 1"}
C {devices/lab_pin.sym} 1560 -980 0 0 {name=l44 sig_type=std_logic lab=vdd_noise}
C {devices/vsource.sym} 1100 -750 0 0 {name=V2 value=CACE\{vdd\}}
C {devices/gnd.sym} 1100 -680 0 0 {name=l70 lab=GND}
C {devices/lab_pin.sym} 1100 -920 2 0 {name=l72 sig_type=std_logic lab=vdd_noise}
C {devices/vsource.sym} 2680 -930 0 0 {name=Vcm2 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 2680 -1000 2 0 {name=l41 sig_type=std_logic lab=Vcm2}
C {devices/gnd.sym} 2680 -860 0 0 {name=l71 lab=GND}
C {devices/vsource.sym} 2900 -930 0 0 {name=Vcm3 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 2900 -1000 2 0 {name=l73 sig_type=std_logic lab=Vcm3}
C {devices/gnd.sym} 2900 -860 0 0 {name=l74 lab=GND}
C {devices/vsource.sym} 2680 -710 0 0 {name=Vcm4 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 2680 -780 2 0 {name=l75 sig_type=std_logic lab=Vcm4}
C {devices/gnd.sym} 2680 -640 0 0 {name=l76 lab=GND}
C {devices/vsource.sym} 2900 -710 0 0 {name=Vcm5 value=CACE\{vcm\}
}
C {devices/lab_pin.sym} 2900 -780 2 0 {name=l77 sig_type=std_logic lab=Vcm5}
C {devices/gnd.sym} 2900 -640 0 0 {name=l78 lab=GND}
