v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Low-noise low-power bio-signal amplifier (simplified)} 560 -1720 0 0 1 1 {}
T {R1 is included in ESD protection!} 740 -1110 0 0 0.4 0.4 {}
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
-) C2 = 3.3pF} 70 -380 0 0 0.5 0.5 {}
N 1400 -800 1400 -780 {
lab=VSS}
N 1400 -1020 1400 -1000 {
lab=VDD}
N 1420 -1020 1420 -1000 {
lab=di_bio_amp_en}
N 1200 -780 1200 -580 {
lab=#net1}
N 1200 -580 1200 -380 {
lab=#net1}
N 1200 -580 1380 -580 {
lab=#net1}
N 1440 -580 1620 -580 {
lab=voutp}
N 1620 -580 1620 -380 {
lab=voutp}
N 1200 -1020 1200 -940 {
lab=#net2}
N 1200 -1220 1380 -1220 {
lab=#net2}
N 1440 -1220 1620 -1220 {
lab=voutn}
N 1200 -1420 1200 -1220 {
lab=#net2}
N 1620 -1420 1620 -1220 {
lab=voutn}
N 1200 -1220 1200 -1020 {
lab=#net2}
N 1080 -1020 1200 -1020 {
lab=#net2}
N 1620 -780 1620 -580 {
lab=voutp}
N 1080 -780 1200 -780 {
lab=#net1}
N 1200 -860 1200 -780 {
lab=#net1}
N 1500 -920 1620 -920 {lab=voutn}
N 1500 -880 1620 -880 {lab=voutp}
N 1200 -940 1320 -940 {lab=#net2}
N 1200 -860 1320 -860 {lab=#net1}
N 1200 -1420 1380 -1420 {lab=#net2}
N 1440 -1420 1620 -1420 {lab=voutn}
N 1200 -380 1380 -380 {lab=#net1}
N 1440 -380 1620 -380 {lab=voutp}
N 1620 -1020 1620 -920 {
lab=voutn}
N 1620 -780 1740 -780 {
lab=voutp}
N 1620 -880 1620 -780 {
lab=voutp}
N 900 -1020 1020 -1020 {lab=vinp}
N 900 -780 1020 -780 {lab=vinn}
N 900 -900 1320 -900 {lab=Vcm}
N 1620 -1020 1740 -1020 {lab=voutn}
N 1620 -1220 1620 -1020 {
lab=voutn}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1400 -1020 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 1400 -780 1 0 {name=p12 lab=VSS}
C {devices/opin.sym} 1740 -780 0 0 {name=p13 lab=voutp}
C {devices/ipin.sym} 900 -1020 0 0 {name=p14 lab=vinp}
C {devices/ipin.sym} 900 -780 2 1 {name=p15 lab=vinn}
C {devices/opin.sym} 1740 -1020 0 0 {name=p16 lab=voutn}
C {devices/ipin.sym} 1420 -1020 1 0 {name=p17 lab=di_bio_amp_en}
C {devices/ipin.sym} 900 -900 0 0 {name=p7 lab=Vcm}
C {res.sym} 1410 -1420 1 0 {name=R2a
value=160G
footprint=1206
device=resistor
m=1}
C {res.sym} 1410 -380 1 0 {name=R2b
value=160G
footprint=1206
device=resistor
m=1}
C {capa.sym} 1410 -1220 1 0 {name=C2a
m=1
value=3.3p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1410 -580 1 0 {name=C2b
m=1
value=3.3p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1050 -1020 1 0 {name=C1a
m=1
value=330p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1050 -780 1 0 {name=C1b
m=1
value=330p
footprint=1206
device="ceramic capacitor"}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1400 -900 0 0 {name=x1}
