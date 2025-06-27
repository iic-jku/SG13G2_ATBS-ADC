v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Low-noise low-power bio-signal amplifier (simplified)} 560 -1720 0 0 1 1 {}
T {R1 is included in ESD protection!} 740 -1130 0 0 0.4 0.4 {}
T {"Simplified" means that no switched-capacitor blocks, such as SC bias circuit, SC feedback resistor R2, programmable capacitor C1, and SC CMFBs, are used.
Instead, ideal resistors and capacitors are used. In this way, it is easier to set up all testbenches and to simulate the operating points. 
With SC elements no .ac, .op or .noise simulations are possible. For a closed-loop Bode plot simulation with SC elements, a transient analysis with manual for-loops must be applied.
Ultimately, the switched-capacitor blocks are applied step-by-step, and final transient analyses are made.} 70 -1620 0 0 0.5 0.5 {}
T {RC values:
-) took [Fath] and [Schmickl] as reference
-) use Jupyter notebooks sizing_biosignal_amplifier.ipynb and sizing_sc_fb_resistor.ipynb
-) R1 = 10k (+ series R of 2 x TG in programmable C1)
-) C1 = 330pF / 165pF / 33pF (Gain: 100 (40dB) / 50 (34dB) / 10 (20dB))
-) R2 = 160GOhm (Cshunt = 4nF, fphi = 7.81kHz, fcl = 0.3Hz) / 320GOhm (Cshunt = 4nF, fphi = 3.91kHz, fcl = 0.15Hz)
-) C2 = 3.3pF} 70 -390 0 0 0.5 0.5 {}
N 1400 -820 1400 -800 {
lab=VSS}
N 1400 -1040 1400 -1020 {
lab=#net1}
N 1420 -1040 1420 -1020 {
lab=di_bio_amp_en}
N 1200 -800 1200 -600 {
lab=vinna}
N 1200 -600 1200 -400 {
lab=vinna}
N 1200 -600 1380 -600 {
lab=vinna}
N 1440 -600 1620 -600 {
lab=voutp}
N 1620 -600 1620 -400 {
lab=voutp}
N 1200 -1040 1200 -960 {
lab=vinpa}
N 1200 -1240 1380 -1240 {
lab=vinpa}
N 1440 -1240 1620 -1240 {
lab=voutn}
N 1200 -1440 1200 -1240 {
lab=vinpa}
N 1620 -1440 1620 -1240 {
lab=voutn}
N 1200 -1240 1200 -1040 {
lab=vinpa}
N 1080 -1040 1200 -1040 {
lab=vinpa}
N 1620 -800 1620 -600 {
lab=voutp}
N 1080 -800 1200 -800 {
lab=vinna}
N 1200 -880 1200 -800 {
lab=vinna}
N 1200 -960 1320 -960 {lab=vinpa}
N 1200 -880 1320 -880 {lab=vinna}
N 1200 -1440 1380 -1440 {lab=vinpa}
N 1440 -1440 1620 -1440 {lab=voutn}
N 1200 -400 1380 -400 {lab=vinna}
N 1440 -400 1620 -400 {lab=voutp}
N 1620 -1040 1620 -940 {
lab=voutn}
N 1620 -800 1740 -800 {
lab=voutp}
N 1620 -900 1620 -800 {
lab=voutp}
N 900 -1040 1020 -1040 {lab=vinp}
N 900 -800 1020 -800 {lab=vinn}
N 900 -920 1320 -920 {lab=Vcm}
N 1620 -1040 1740 -1040 {lab=voutn}
N 1620 -1240 1620 -1040 {
lab=voutn}
N 1400 -1120 1400 -1100 {lab=VDD}
N 1200 -1040 1220 -1040 {lab=vinpa}
N 1200 -800 1220 -800 {lab=vinna}
N 1500 -940 1620 -940 {lab=voutn}
N 1500 -900 1620 -900 {lab=voutp}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1400 -1120 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 1400 -800 1 0 {name=p12 lab=VSS}
C {devices/opin.sym} 1740 -800 0 0 {name=p13 lab=voutp}
C {devices/ipin.sym} 900 -1040 0 0 {name=p14 lab=vinp}
C {devices/ipin.sym} 900 -800 2 1 {name=p15 lab=vinn}
C {devices/opin.sym} 1740 -1040 0 0 {name=p16 lab=voutn}
C {devices/ipin.sym} 1420 -1040 1 0 {name=p17 lab=di_bio_amp_en}
C {devices/ipin.sym} 900 -920 0 0 {name=p7 lab=Vcm}
C {res.sym} 1410 -1440 1 0 {name=R2a
value=R2
footprint=1206
device=resistor
m=1}
C {res.sym} 1410 -400 1 0 {name=R2b
value=R2
footprint=1206
device=resistor
m=1}
C {capa.sym} 1410 -1240 1 0 {name=C2a
m=1
value=C2
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1410 -600 1 0 {name=C2b
m=1
value=C2
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1050 -1040 1 0 {name=C1a
m=1
value=C1
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1050 -800 1 0 {name=C1b
m=1
value=C1
footprint=1206
device="ceramic capacitor"}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1400 -920 0 0 {name=x1}
C {ammeter.sym} 1400 -1070 0 1 {name=Vidd savecurrent=true spice_ignore=0}
C {lab_pin.sym} 1220 -1040 0 1 {name=p3 sig_type=std_logic lab=vinpa}
C {lab_pin.sym} 1220 -800 0 1 {name=p1 sig_type=std_logic lab=vinna}
