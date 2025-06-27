v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Two-stage Amplifier Core for Bio-signal Amplifier (simplified)} 480 -1730 0 0 1 1 {}
T {This amplifier core is a simplified version of the amplifier core for the bio-signal amplifier. 
"Simplified" means that it does not contain switched capacitor circuits and dummy transistors.
However, power-down transistors, stacked transistors and decoupling transistors are already used.
Hence, the CMFB and the bias circuit consist of ideal resistors. This circuit serves to size the transistor W/L ratios and set their operating point. 
Furthermore, noise and AC analysis can be done more easily since no clock is used.} 280 -1620 0 0 0.5 0.5 {}
T {Inverter for Enable} 530 -1300 0 0 0.3 0.3 {}
T {di_amp_core_en = 1... enable
di_amp_core_en = 0... disable} 510 -1040 0 0 0.25 0.25 {}
N 680 -1160 720 -1160 {lab=amp_core_en_n}
N 500 -1160 540 -1160 {lab=di_amp_core_en}
N 600 -1120 600 -1100 {lab=VSS}
N 600 -1220 600 -1200 {lab=VDD}
N 1680 -760 1680 -720 {lab=VSS}
N 1620 -1000 1620 -960 {lab=di_amp_core_en}
N 1620 -760 1620 -720 {lab=amp_core_en_n}
N 1180 -1000 1180 -960 {lab=di_amp_core_en}
N 1180 -760 1180 -720 {lab=amp_core_en_n}
N 1240 -760 1240 -720 {lab=VSS}
N 1100 -900 1140 -900 {lab=vinp}
N 1100 -860 1140 -860 {lab=Vcm}
N 1100 -820 1140 -820 {lab=vinn}
N 1520 -1200 1680 -1200 {lab=#net1}
N 1520 -520 1680 -520 {lab=#net2}
N 740 -680 780 -680 {lab=Vbiasc}
N 740 -640 780 -640 {lab=Vbias}
N 420 -800 420 -660 {lab=di_amp_core_en}
N 420 -660 460 -660 {lab=di_amp_core_en}
N 1280 -1000 1280 -960 {lab=Vbiasc}
N 1320 -1000 1320 -960 {lab=Vbias}
N 1720 -1000 1720 -960 {lab=Vbiasc}
N 1760 -1000 1760 -960 {lab=Vbias}
N 600 -560 600 -520 {lab=VSS}
N 1380 -840 1440 -840 {lab=#net3}
N 1740 -520 1940 -520 {lab=voutn}
N 1380 -920 1520 -920 {lab=#net1}
N 1520 -1200 1520 -920 {lab=#net1}
N 1380 -800 1520 -800 {lab=#net2}
N 1520 -800 1520 -520 {lab=#net2}
N 1520 -900 1580 -900 {lab=#net3}
N 1520 -820 1580 -820 {lab=#net4}
N 1380 -880 1440 -880 {lab=#net4}
N 1440 -880 1520 -820 {lab=#net4}
N 1440 -840 1520 -900 {lab=#net3}
N 1740 -1200 1900 -1200 {lab=voutp}
N 1900 -1200 1900 -840 {lab=voutp}
N 1820 -840 1900 -840 {lab=voutp}
N 1940 -880 1940 -520 {lab=voutn}
N 1820 -880 1940 -880 {lab=voutn}
N 1940 -880 1980 -880 {lab=voutn}
N 1900 -840 1980 -840 {lab=voutp}
N 1240 -1000 1240 -960 {lab=VDD}
N 600 -800 600 -760 {lab=VDD}
N 1680 -1000 1680 -960 {lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {inverter/inverter_lv.sym} 600 -1160 0 0 {name=x1 W_P=3.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {devices/iopin.sym} 1240 -1000 3 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 500 -1160 0 0 {name=p5 lab=di_amp_core_en}
C {ipin.sym} 1100 -900 0 0 {name=p4 lab=vinp}
C {ipin.sym} 1100 -820 0 0 {name=p6 lab=vinn}
C {opin.sym} 1980 -840 0 0 {name=p3 lab=voutp}
C {opin.sym} 1980 -880 0 0 {name=p11 lab=voutn}
C {ipin.sym} 1100 -860 0 0 {name=p12 lab=Vcm}
C {devices/iopin.sym} 1240 -720 1 0 {name=p14 lab=VSS}
C {lab_wire.sym} 720 -1160 0 1 {name=p2 sig_type=std_logic lab=amp_core_en_n}
C {lab_pin.sym} 600 -1220 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 600 -1100 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1680 -720 3 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1680 -1000 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1180 -720 3 0 {name=p26 sig_type=std_logic lab=amp_core_en_n}
C {lab_wire.sym} 1620 -720 3 0 {name=p30 sig_type=std_logic lab=amp_core_en_n}
C {lab_wire.sym} 1180 -1000 3 1 {name=p25 sig_type=std_logic lab=di_amp_core_en}
C {lab_wire.sym} 1620 -1000 3 1 {name=p31 sig_type=std_logic lab=di_amp_core_en}
C {devices/capa.sym} 1710 -1200 1 0 {name=Cm1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"
spice_ignore=False}
C {devices/capa.sym} 1710 -520 1 0 {name=Cm2
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"
spice_ignore=False}
C {bio_amplifier/amplifier_core/push_pull_amplifier/push_pull_amplifier_simplified.sym} 1700 -860 0 0 {name=x2}
C {bio_amplifier/amplifier_core/telescopic_ota/telescopic_ota_simplified.sym} 1260 -860 0 0 {name=x3}
C {devices/lab_pin.sym} 780 -680 0 1 {name=l59 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 780 -640 0 1 {name=l60 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} 600 -800 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 600 -520 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 420 -800 3 1 {name=p18 sig_type=std_logic lab=di_amp_core_en}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 600 -660 0 0 {name=x4}
C {devices/lab_pin.sym} 1280 -1000 1 0 {name=l51 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1320 -1000 1 0 {name=l52 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} 1720 -1000 1 0 {name=l2 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1760 -1000 1 0 {name=l3 sig_type=std_logic lab=Vbias}
