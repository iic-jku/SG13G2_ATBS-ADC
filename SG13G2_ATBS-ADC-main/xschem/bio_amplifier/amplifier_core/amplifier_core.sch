v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Two-stage Amplifier Core for Bio-signal Amplifier} 610 -1700 0 0 1 1 {}
T {Inverter for Enable} 570 -1340 0 0 0.3 0.3 {}
T {di_amp_core_en = 1... enable
di_amp_core_en = 0... disable} 550 -1080 0 0 0.25 0.25 {}
N 720 -1200 760 -1200 {lab=amp_core_en_n}
N 540 -1200 580 -1200 {lab=di_amp_core_en}
N 640 -1160 640 -1140 {lab=VSS}
N 640 -1260 640 -1240 {lab=VDD}
N 1720 -1040 1720 -1000 {lab=VDD}
N 1720 -800 1720 -760 {lab=VSS}
N 1660 -1040 1660 -1000 {lab=di_amp_core_en}
N 1660 -800 1660 -760 {lab=amp_core_en_n}
N 2020 -920 2060 -920 {lab=voutn}
N 1360 -800 1360 -760 {lab=di_phi_cmfb_2}
N 1320 -800 1320 -760 {lab=di_phi_cmfb_1}
N 1220 -1040 1220 -1000 {lab=di_amp_core_en}
N 1220 -800 1220 -760 {lab=amp_core_en_n}
N 1280 -1040 1280 -1000 {lab=VDD}
N 1280 -800 1280 -760 {lab=VSS}
N 1760 -800 1760 -760 {lab=di_phi_cmfb_1}
N 1800 -800 1800 -760 {lab=di_phi_cmfb_2}
N 1140 -940 1180 -940 {lab=vinp}
N 1140 -900 1180 -900 {lab=Vcm}
N 1140 -860 1180 -860 {lab=vinn}
N 1520 -1240 1520 -960 {lab=#net1}
N 1980 -880 2060 -880 {lab=voutp}
N 1580 -900 1620 -900 {lab=Vcm}
N 1520 -840 1520 -560 {lab=#net2}
N 1780 -1240 1980 -1240 {lab=voutp}
N 1520 -1240 1720 -1240 {lab=#net1}
N 1780 -560 2020 -560 {lab=voutn}
N 1520 -560 1720 -560 {lab=#net2}
N 1320 -1040 1320 -1000 {lab=Vbiasc}
N 1360 -1040 1360 -1000 {lab=Vbias}
N 1760 -1040 1760 -1000 {lab=Vbiasc}
N 1800 -1040 1800 -1000 {lab=Vbias}
N 780 -680 820 -680 {lab=Vbiasc}
N 780 -640 820 -640 {lab=Vbias}
N 720 -800 720 -760 {lab=di_amp_core_en}
N 460 -680 500 -680 {lab=di_phi_bias_1}
N 460 -640 500 -640 {lab=di_phi_bias_2}
N 1420 -960 1520 -960 {lab=#net1}
N 1420 -840 1520 -840 {lab=#net2}
N 1980 -1240 1980 -880 {lab=voutp}
N 1860 -880 1980 -880 {lab=voutp}
N 2020 -920 2020 -560 {lab=voutn}
N 1860 -920 2020 -920 {lab=voutn}
N 640 -560 640 -520 {lab=VSS}
N 640 -800 640 -760 {lab=VDD}
N 1520 -860 1620 -860 {lab=#net3}
N 1460 -920 1520 -860 {lab=#net3}
N 1420 -920 1460 -920 {lab=#net3}
N 1420 -880 1460 -880 {lab=#net4}
N 1460 -880 1520 -940 {lab=#net4}
N 1520 -940 1620 -940 {lab=#net4}
C {inverter/inverter_lv.sym} 640 -1200 0 0 {name=x1 W_P=3.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {devices/ipin.sym} 1320 -760 3 0 {name=p8 lab=di_phi_cmfb_1}
C {devices/ipin.sym} 1360 -760 3 0 {name=p9 lab=di_phi_cmfb_2}
C {devices/ipin.sym} 460 -680 0 0 {name=p7 lab=di_phi_bias_1}
C {devices/ipin.sym} 460 -640 0 0 {name=p10 lab=di_phi_bias_2}
C {devices/iopin.sym} 1280 -1040 3 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 540 -1200 0 0 {name=p5 lab=di_amp_core_en}
C {ipin.sym} 1140 -940 0 0 {name=p4 lab=vinp}
C {ipin.sym} 1140 -860 0 0 {name=p6 lab=vinn}
C {opin.sym} 2060 -880 0 0 {name=p3 lab=voutp}
C {opin.sym} 2060 -920 0 0 {name=p11 lab=voutn}
C {ipin.sym} 1140 -900 0 0 {name=p12 lab=Vcm}
C {devices/iopin.sym} 1280 -760 1 0 {name=p14 lab=VSS}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {lab_wire.sym} 760 -1200 0 1 {name=p2 sig_type=std_logic lab=amp_core_en_n}
C {lab_pin.sym} 640 -1260 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 -1140 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1720 -760 3 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1720 -1040 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1760 -760 3 0 {name=p28 sig_type=std_logic lab=di_phi_cmfb_1}
C {lab_wire.sym} 1800 -760 3 0 {name=p29 sig_type=std_logic lab=di_phi_cmfb_2}
C {lab_wire.sym} 1220 -760 3 0 {name=p26 sig_type=std_logic lab=amp_core_en_n}
C {lab_wire.sym} 1660 -760 3 0 {name=p30 sig_type=std_logic lab=amp_core_en_n}
C {lab_wire.sym} 1220 -1040 3 1 {name=p25 sig_type=std_logic lab=di_amp_core_en}
C {lab_wire.sym} 1660 -1040 3 1 {name=p31 sig_type=std_logic lab=di_amp_core_en}
C {lab_pin.sym} 1580 -900 0 0 {name=p20 sig_type=std_logic lab=Vcm}
C {bio_amplifier/amplifier_core/push_pull_amplifier/push_pull_amplifier.sym} 1740 -900 0 0 {name=x2}
C {bio_amplifier/amplifier_core/telescopic_ota/telescopic_ota.sym} 1300 -900 0 0 {name=x3}
C {devices/capa.sym} 1750 -1240 1 0 {name=Cm1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1750 -560 1 0 {name=Cm2
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1320 -1040 1 0 {name=l51 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1360 -1040 1 0 {name=l52 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} 1760 -1040 1 0 {name=l2 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1800 -1040 1 0 {name=l3 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} 820 -680 0 1 {name=l59 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 820 -640 0 1 {name=l60 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_4/bias_circuit_4.sym} 640 -660 0 0 {name=x4}
C {lab_pin.sym} 640 -800 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 -520 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 720 -800 3 1 {name=p18 sig_type=std_logic lab=di_amp_core_en}
