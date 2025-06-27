v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Low-noise low-power bio-signal amplifier} 1240 -2360 0 0 1 1 {}
T {Features of the bio-signal amplifier:
-) As frequencies below 0.5Hz are intriguing due to their relevance in various medical contexts, the lower -3dB cut-off frequency of the LNA was set to fc,l = 0.1Hz. 
Furthermore, this will also truncate low-frequency noise and the dc offset voltage of the bio-signal acquisition electrodes [Fath].
-) At first glance, the topology reminds of an active 1st order RC bandpass filter, where R1 and C1 define the lower cut-off frequency, 
R2 and C2 define the upper cut-off frequency and R2/R1 sets the closed-loop gain. However, if R2 >> R1, then the cut-off frequencies shift together and 
at some ratio equal the same. Hence, if R2 is further increased, the AC-coupling is shifted to the feedback-loop of the amplifier and the bandpass transforms to a highpass.
This has the advantage of smaller input capacitors. The upper -3dB cut-off frequency is defined by the frequency response of the amplifier core. 
Due to the huge input transistors for low-noise and the tiny power consumption, the transit frequency is small anyway.
-) SC feedback resistor which can be programmed via phiX and therefore the lower cut-off frequency can be adjusted.
-) Programmable C1 for different closed-loop gain levels
-) Input ESD protection with R1 and D1. It is important that R2 >> R1.} 3020 -1800 2 0 0.6 0.6 {}
T {R1 is included in ESD protection!} 740 -970 0 0 0.4 0.4 {}
T {RC values:
-) took [Fath] and [Schmickl] as reference
-) use Jupyter notebooks sizing_biosignal_amplifier.ipynb and sizing_sc_fb_resistor.ipynb
-) R1 = 10k (+ series R of 2 x TG in programmable C1)
-) C1 = 330pF / 165pF / 33pF (Gain: 100 (40dB) / 50 (34dB) / 10 (20dB))
-) R2 = 160GOhm (Cshunt = 4nF, fphi = 7.81kHz, fcl = 0.3Hz) / 320GOhm (Cshunt = 4nF, fphi = 3.91kHz, fcl = 0.15Hz)
-) C2 = 3.3pF} 60 -340 0 0 0.6 0.6 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1795 -1720 0 0 0.3 0.3 {}
N 1900 -1080 1900 -1060 {lab=VDD}
N 1920 -860 1920 -840 {lab=VSS}
N 1940 -1080 1940 -1060 {lab=di_bio_amp_en}
N 2040 -980 2160 -980 {lab=voutn}
N 2040 -1440 2160 -1440 {lab=voutn}
N 2160 -1080 2160 -980 {lab=voutn}
N 2160 -1080 2280 -1080 {lab=voutn}
N 1840 -1520 1840 -1500 {lab=VDD}
N 1840 -1380 1840 -1360 {lab=VSS}
N 2040 -940 2160 -940 {lab=voutp}
N 2160 -940 2160 -840 {lab=voutp}
N 2160 -840 2280 -840 {lab=voutp}
N 2040 -480 2160 -480 {lab=voutp}
N 2160 -840 2160 -480 {lab=voutp}
N 1920 -1380 1920 -1360 {lab=di_phi_R_1}
N 2000 -1380 2000 -1360 {lab=di_phi_R_2}
N 1840 -420 1840 -400 {lab=VDD}
N 1840 -560 1840 -540 {lab=VSS}
N 2000 -560 2000 -540 {lab=di_phi_R_2}
N 1920 -560 1920 -540 {lab=di_phi_R_1}
N 1960 -860 1960 -840 {lab=di_phi_cmfb_1}
N 2000 -860 2000 -840 {lab=di_phi_cmfb_2}
N 1880 -860 1880 -840 {lab=di_phi_bias_2}
N 1840 -860 1840 -840 {lab=di_phi_bias_1}
N 2160 -1440 2160 -1080 {lab=voutn}
N 1960 -1640 2160 -1640 {lab=voutn}
N 2160 -1640 2160 -1440 {lab=voutn}
N 2160 -480 2160 -280 {lab=voutp}
N 1960 -280 2160 -280 {lab=voutp}
N 1680 -1000 1800 -1000 {lab=#net1}
N 1680 -1440 1680 -1000 {lab=#net1}
N 1680 -1440 1800 -1440 {lab=#net1}
N 1680 -1640 1900 -1640 {lab=#net1}
N 1680 -1640 1680 -1440 {lab=#net1}
N 1680 -920 1800 -920 {lab=#net2}
N 1680 -480 1680 -280 {lab=#net2}
N 1680 -280 1900 -280 {lab=#net2}
N 1680 -480 1800 -480 {lab=#net2}
N 1680 -920 1680 -480 {lab=#net2}
N 1260 -1260 1300 -1260 {lab=di_en_cap_3}
N 1260 -1220 1300 -1220 {lab=di_en_cap_2}
N 1260 -1180 1300 -1180 {lab=di_en_cap_1}
N 1340 -1320 1340 -1300 {lab=VSS}
N 1340 -1140 1340 -1120 {lab=VDD}
N 1360 -1440 1360 -1300 {lab=#net1}
N 1360 -1140 1360 -1000 {lab=vinp}
N 1220 -1000 1360 -1000 {lab=vinp}
N 1220 -920 1360 -920 {lab=vinn}
N 1360 -920 1360 -780 {lab=vinn}
N 1260 -660 1300 -660 {lab=di_en_cap_3}
N 1260 -700 1300 -700 {lab=di_en_cap_2}
N 1260 -740 1300 -740 {lab=di_en_cap_1}
N 1360 -1440 1680 -1440 {lab=#net1}
N 1360 -480 1680 -480 {lab=#net2}
N 1340 -800 1340 -780 {lab=VDD}
N 1340 -620 1340 -600 {lab=VSS}
N 1220 -960 1800 -960 {lab=Vcm}
N 1360 -620 1360 -480 {lab=#net2}
C {devices/iopin.sym} 1900 -1080 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 1920 -840 1 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 1940 -1080 1 0 {name=p5 lab=di_bio_amp_en}
C {devices/ipin.sym} 1220 -1000 0 0 {name=p8 lab=vinp}
C {devices/ipin.sym} 1220 -920 2 1 {name=p26 lab=vinn}
C {devices/ipin.sym} 1220 -960 0 0 {name=p27 lab=Vcm}
C {devices/opin.sym} 2280 -840 0 0 {name=p7 lab=voutp}
C {devices/opin.sym} 2280 -1080 0 0 {name=p14 lab=voutn}
C {devices/ipin.sym} 1960 -840 3 0 {name=p3 lab=di_phi_cmfb_1}
C {devices/ipin.sym} 2000 -840 3 0 {name=p10 lab=di_phi_cmfb_2}
C {devices/ipin.sym} 1920 -1360 3 0 {name=p11 lab=di_phi_R_1}
C {devices/ipin.sym} 2000 -1360 3 0 {name=p9 lab=di_phi_R_2}
C {devices/ipin.sym} 1840 -840 3 0 {name=p4 lab=di_phi_bias_1}
C {devices/ipin.sym} 1880 -840 3 0 {name=p6 lab=di_phi_bias_2}
C {devices/ipin.sym} 1260 -1180 0 0 {name=p12 lab=di_en_cap_1}
C {devices/ipin.sym} 1260 -1220 0 0 {name=p13 lab=di_en_cap_2}
C {devices/ipin.sym} 1260 -1260 2 1 {name=p15 lab=di_en_cap_3}
C {bio_amplifier/sc_fb_resistor/sc_fb_resistor.sym} 1920 -1440 0 0 {name=x2 W_P_FB=1.0u L_P_FB=0.13u W_N_FB=1.0u L_N_FB=0.13u}
C {bio_amplifier/sc_fb_resistor/sc_fb_resistor.sym} 1920 -480 2 1 {name=x3 W_P_FB=1.0u L_P_FB=0.13u W_N_FB=1.0u L_N_FB=0.13u}
C {lab_pin.sym} 1840 -1520 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1840 -1360 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1840 -400 3 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1840 -560 1 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1920 -560 1 0 {name=p18 sig_type=std_logic lab=di_phi_R_1}
C {lab_pin.sym} 2000 -560 1 0 {name=p21 sig_type=std_logic lab=di_phi_R_2}
C {lab_pin.sym} 1260 -740 0 0 {name=p22 sig_type=std_logic lab=di_en_cap_1}
C {lab_pin.sym} 1260 -700 0 0 {name=p23 sig_type=std_logic lab=di_en_cap_2}
C {lab_pin.sym} 1260 -660 2 1 {name=p24 sig_type=std_logic lab=di_en_cap_3}
C {lab_pin.sym} 1340 -1120 3 0 {name=p25 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1340 -1320 1 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1340 -600 3 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1340 -800 1 0 {name=p30 sig_type=std_logic lab=VDD}
C {title-2.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {capa.sym} 1930 -1640 1 0 {name=C2a
m=1
value=3.3p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1930 -280 1 0 {name=C2b
m=1
value=3.3p
footprint=1206
device="ceramic capacitor"}
C {programmable_cap/programmable_cap_x3.sym} 1360 -1220 2 1 {name=x4 W_P_PC=1.0u L_P_PC=0.13u W_N_PC=1.0u L_N_PC=0.13u Ctot_1=33p Ctot_2=165p Ctot_3=330p}
C {programmable_cap/programmable_cap_x3.sym} 1360 -700 0 0 {name=x5 W_P_PC=1.0u L_P_PC=0.13u W_N_PC=1.0u L_N_PC=0.13u Ctot_1=33p Ctot_2=165p Ctot_3=330p}
C {bio_amplifier/amplifier_core/amplifier_core.sym} 1920 -960 0 0 {name=x1}
