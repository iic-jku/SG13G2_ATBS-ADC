v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 995 0 4040 0 {}
L 4 0 0 65 0 {}
L 4 2720 -160 2720 0 {}
L 4 2720 -160 4040 -160 {}
L 4 2720 -80 4040 -80 {}
L 4 3350 -80 3350 0 {}
L 4 3350 -160 3350 -80 {}
L 4 3060 -80 3060 0 {}
L 4 380 0 1000 0 {}
L 4 0 -2960 4040 -2960 {}
L 4 4040 -2960 4040 0 {}
L 4 0 -2960 0 -0 {}
B 2 2890 -2320 3690 -1920 {flags=graph
y1=-180
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"Rosenstark's Phase; ph(vr1)\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
B 2 2890 -2740 3690 -2340 {flags=graph
y1=-46
y2=85
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-2
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"Rosenstark's Magnitude; vr1 vind1 / db20()\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
P 4 5 2560 -2220 2560 -2120 2760 -2120 2760 -2220 2560 -2220 {dash = 8}
P 4 5 1240 -2660 2860 -2660 2860 -1920 1240 -1920 1240 -2660 {dash = 8}
P 4 5 2060 -1420 2060 -1320 2260 -1320 2260 -1420 2060 -1420 {dash = 8}
P 4 5 2060 -680 2060 -580 2260 -580 2260 -680 2060 -680 {dash = 8}
P 4 6 1260 -1860 2580 -1860 2580 -380 1240 -380 1240 -1860 1260 -1860 {dash = 8}
P 4 5 3440 -1420 3440 -1320 3640 -1320 3640 -1420 3440 -1420 {dash = 8}
P 4 5 3440 -680 3440 -580 3640 -580 3640 -680 3440 -680 {dash = 8}
P 4 6 2640 -1860 3960 -1860 3960 -380 2620 -380 2620 -1860 2640 -1860 {dash = 8}
P 5 38 140 -15 135 -10 125 0 135 10 147.5 22.5 155 30 147.5 30 140 30 135 30 130 25 125 20 115 10 105 20 100 25 95 30 90 30 82.5 30 75 30 82.5 22.5 95 10 105 0 95 -10 82.5 -22.5 75 -30 82.5 -30 90 -30 95 -30 100 -25 105 -20 115 -10 125 -20 130 -25 135 -30 140 -30 147.5 -30 155 -30 147.5 -22.5 140 -15 {fill=true
bezier=1}
T {Testbench for loop gain analysis - Bio-signal Amplifier (simplified)} 850 -2910 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 2560 -2050 0 0 0.25 0.25 {}
T {Rosenstark’s Method} 1240 -2700 0 0 0.5 0.5 {}
T {Capacitive Load (Comparator, DAC, etc.)} 2060 -1250 0 0 0.25 0.25 {}
T {Capacitive Load (Comparator, DAC, etc.)} 2060 -510 0 0 0.25 0.25 {}
T {Middlebrook’s Method} 1240 -1900 0 0 0.5 0.5 {}
T {Capacitive Load (Comparator, DAC, etc.)} 3440 -1250 0 0 0.25 0.25 {}
T {Capacitive Load (Comparator, DAC, etc.)} 3440 -510 0 0 0.25 0.25 {}
T {Tian’s Method} 2620 -1900 0 0 0.5 0.5 {}
T {2025-01-14} 3360 -60 0 0 0.8 0.8 {}
T {Simon Dorrer} 2730 -140 0 0 0.8 0.8 {}
T {Page 1 of 1} 2730 -60 0 0 0.8 0.8 {}
T {Rev. 1} 3070 -60 0 0 0.8 0.8 {}
T {SCHEM} 155 -25 0 0 1 1 {}
N 2340 -2440 2340 -2400 {lab=VDD}
N 1860 -2420 1900 -2420 {lab=Vcm1}
N 2240 -2300 2260 -2300 {lab=Vcm1}
N 1860 -2180 1900 -2180 {lab=Vcm1}
N 2600 -2280 2740 -2280 {lab=voutp1}
N 2700 -2320 2740 -2320 {lab=voutn1}
N 2600 -2140 2600 -2080 {lab=GND}
N 2700 -2140 2700 -2080 {lab=GND}
N 2600 -2280 2600 -2200 {lab=voutp1}
N 2700 -2320 2700 -2200 {lab=voutn1}
N 1320 -2320 1320 -2260 {lab=vind1}
N 1300 -2320 1320 -2320 {lab=vind1}
N 1320 -2320 1400 -2320 {lab=vind1}
N 1400 -2280 1400 -2240 {lab=GND}
N 1400 -2240 1440 -2240 {lab=GND}
N 1440 -2270 1440 -2240 {
lab=GND}
N 1740 -2300 1860 -2300 {
lab=Vcm1}
N 1640 -2340 1640 -2300 {lab=Vcm1}
N 1640 -2440 1640 -2400 {lab=vinp1}
N 1520 -2250 1600 -2250 {lab=#net1}
N 1520 -2390 1600 -2390 {lab=#net1}
N 1440 -2390 1440 -2330 {lab=#net1}
N 1560 -2210 1600 -2210 {lab=GND}
N 1440 -2240 1440 -2210 {
lab=GND}
N 1560 -2350 1600 -2350 {lab=GND}
N 1560 -2350 1560 -2210 {lab=GND}
N 1440 -2210 1560 -2210 {lab=GND}
N 1520 -2390 1520 -2250 {lab=#net1}
N 1440 -2390 1520 -2390 {lab=#net1}
N 1640 -2300 1640 -2260 {lab=Vcm1}
N 1640 -2200 1640 -2160 {lab=vinn1}
N 1740 -2300 1740 -2260 {lab=Vcm1}
N 1640 -2300 1740 -2300 {
lab=Vcm1}
N 1740 -2200 1740 -2160 {lab=GND}
N 1440 -2210 1440 -2160 {lab=GND}
N 1320 -2200 1320 -2160 {lab=GND}
N 3760 -2080 3760 -2040 {lab=VDD}
N 3760 -1980 3760 -1940 {lab=GND}
N 3880 -2080 3880 -2040 {lab=bio_amp_en}
N 3880 -1980 3880 -1940 {lab=GND}
N 2740 -2540 2740 -2520 {
lab=vout1}
N 2670 -2510 2700 -2510 {
lab=voutp1}
N 2670 -2470 2700 -2470 {
lab=voutn1}
N 2740 -2460 2740 -2440 {lab=GND}
N 2340 -2200 2340 -2160 {
lab=GND}
N 2360 -2420 2360 -2400 {
lab=bio_amp_en}
N 2440 -2320 2540 -2320 {lab=voutn1}
N 2440 -2280 2540 -2280 {lab=voutp1}
N 2540 -2280 2600 -2280 {lab=voutp1}
N 2540 -2320 2700 -2320 {lab=voutn1}
N 2540 -2060 2540 -1980 {lab=voutp1}
N 2000 -2180 2000 -2060 {lab=vrn1}
N 2000 -2420 2000 -2340 {lab=vrp1}
N 2000 -2540 2000 -2420 {lab=vrp1}
N 2000 -2260 2000 -2180 {lab=vrn1}
N 1960 -2180 2000 -2180 {lab=vrn1}
N 1960 -2420 2000 -2420 {lab=vrp1}
N 2000 -2060 2240 -2060 {lab=vrn1}
N 2300 -2060 2540 -2060 {lab=voutp1}
N 2540 -2280 2540 -2060 {lab=voutp1}
N 2300 -1980 2540 -1980 {lab=voutp1}
N 2000 -1980 2240 -1980 {lab=vrn1}
N 2000 -2060 2000 -1980 {lab=vrn1}
N 2000 -2540 2240 -2540 {lab=vrp1}
N 2000 -2620 2000 -2540 {lab=vrp1}
N 2000 -2620 2240 -2620 {lab=vrp1}
N 2300 -2620 2540 -2620 {lab=voutn1}
N 2300 -2540 2540 -2540 {lab=voutn1}
N 2540 -2540 2540 -2320 {lab=voutn1}
N 2540 -2620 2540 -2540 {lab=voutn1}
N 1860 -2300 1860 -2180 {lab=Vcm1}
N 2180 -2340 2260 -2340 {lab=#net2}
N 2180 -2360 2180 -2340 {lab=#net2}
N 2180 -2440 2180 -2420 {lab=vinp1}
N 2160 -2440 2180 -2440 {lab=vinp1}
N 2120 -2340 2180 -2340 {lab=#net2}
N 2000 -2340 2060 -2340 {lab=vrp1}
N 2000 -2260 2060 -2260 {lab=vrn1}
N 2180 -2260 2260 -2260 {lab=#net3}
N 2180 -2260 2180 -2240 {lab=#net3}
N 2120 -2260 2180 -2260 {lab=#net3}
N 2160 -2160 2180 -2160 {lab=vinn1}
N 2180 -2180 2180 -2160 {lab=vinn1}
N 1740 -2320 1740 -2300 {lab=Vcm1}
N 1860 -2420 1860 -2300 {lab=Vcm1}
N 1980 -2340 2000 -2340 {lab=vrp1}
N 1980 -2260 2000 -2260 {lab=vrn1}
N 1740 -2100 1740 -2080 {
lab=vr1}
N 1670 -2070 1700 -2070 {
lab=vrp1}
N 1670 -2030 1700 -2030 {
lab=vrn1}
N 1740 -2020 1740 -2000 {lab=GND}
N 1840 -1640 1840 -1600 {lab=VDD}
N 1360 -1620 1400 -1620 {lab=Vcm2}
N 1740 -1500 1760 -1500 {lab=Vcm2}
N 1360 -1380 1400 -1380 {lab=Vcm2}
N 2100 -1480 2240 -1480 {lab=voutp2}
N 2200 -1520 2240 -1520 {lab=voutn2}
N 2100 -1340 2100 -1280 {lab=GND}
N 2200 -1340 2200 -1280 {lab=GND}
N 2100 -1480 2100 -1400 {lab=voutp2}
N 2200 -1520 2200 -1400 {lab=voutn2}
N 2500 -1550 2500 -1530 {
lab=vout2}
N 2430 -1520 2460 -1520 {
lab=voutp2}
N 2430 -1480 2460 -1480 {
lab=voutn2}
N 2500 -1470 2500 -1450 {lab=GND}
N 1840 -1400 1840 -1360 {
lab=GND}
N 1860 -1620 1860 -1600 {
lab=bio_amp_en}
N 1940 -1520 2040 -1520 {lab=voutn2}
N 1940 -1480 2040 -1480 {lab=voutp2}
N 2040 -1480 2100 -1480 {lab=voutp2}
N 2040 -1520 2200 -1520 {lab=voutn2}
N 2040 -1260 2040 -1180 {lab=voutp2}
N 1500 -1380 1500 -1260 {lab=vrn2}
N 1500 -1620 1500 -1540 {lab=vrp2}
N 1500 -1740 1500 -1620 {lab=vrp2}
N 1500 -1460 1500 -1380 {lab=vrn2}
N 1460 -1380 1500 -1380 {lab=vrn2}
N 1460 -1620 1500 -1620 {lab=vrp2}
N 1500 -1260 1740 -1260 {lab=vrn2}
N 1800 -1260 2040 -1260 {lab=voutp2}
N 2040 -1480 2040 -1260 {lab=voutp2}
N 1800 -1180 2040 -1180 {lab=voutp2}
N 1500 -1180 1740 -1180 {lab=vrn2}
N 1500 -1260 1500 -1180 {lab=vrn2}
N 1500 -1740 1740 -1740 {lab=vrp2}
N 1500 -1820 1500 -1740 {lab=vrp2}
N 1500 -1820 1740 -1820 {lab=vrp2}
N 1800 -1820 2040 -1820 {lab=voutn2}
N 1800 -1740 2040 -1740 {lab=voutn2}
N 2040 -1740 2040 -1520 {lab=voutn2}
N 2040 -1820 2040 -1740 {lab=voutn2}
N 1360 -1500 1360 -1380 {lab=Vcm2}
N 1840 -900 1840 -860 {lab=VDD}
N 1360 -880 1400 -880 {lab=Vcm2}
N 1740 -760 1760 -760 {lab=Vcm2}
N 1360 -640 1400 -640 {lab=Vcm2}
N 2100 -740 2240 -740 {lab=voutp3}
N 2200 -780 2240 -780 {lab=voutn3}
N 2100 -600 2100 -540 {lab=GND}
N 2200 -600 2200 -540 {lab=GND}
N 2100 -740 2100 -660 {lab=voutp3}
N 2200 -780 2200 -660 {lab=voutn3}
N 2500 -810 2500 -790 {
lab=vout3}
N 2430 -780 2460 -780 {
lab=voutp3}
N 2430 -740 2460 -740 {
lab=voutn3}
N 2500 -730 2500 -710 {lab=GND}
N 1840 -660 1840 -620 {
lab=GND}
N 1860 -880 1860 -860 {
lab=bio_amp_en}
N 1940 -780 2040 -780 {lab=voutn3}
N 1940 -740 2040 -740 {lab=voutp3}
N 2040 -740 2100 -740 {lab=voutp3}
N 2040 -780 2200 -780 {lab=voutn3}
N 2040 -520 2040 -440 {lab=voutp3}
N 1500 -640 1500 -520 {lab=#net4}
N 1500 -1000 1500 -880 {lab=#net5}
N 1500 -700 1500 -640 {lab=#net4}
N 1460 -640 1500 -640 {lab=#net4}
N 1460 -880 1500 -880 {lab=#net5}
N 1500 -520 1740 -520 {lab=#net4}
N 1800 -520 2040 -520 {lab=voutp3}
N 2040 -740 2040 -520 {lab=voutp3}
N 1800 -440 2040 -440 {lab=voutp3}
N 1500 -440 1740 -440 {lab=#net4}
N 1500 -520 1500 -440 {lab=#net4}
N 1500 -1000 1740 -1000 {lab=#net5}
N 1500 -1080 1500 -1000 {lab=#net5}
N 1500 -1080 1740 -1080 {lab=#net5}
N 1800 -1080 2040 -1080 {lab=voutn3}
N 1800 -1000 2040 -1000 {lab=voutn3}
N 2040 -1000 2040 -780 {lab=voutn3}
N 2040 -1080 2040 -1000 {lab=voutn3}
N 1360 -760 1360 -640 {lab=Vcm2}
N 1320 -1500 1360 -1500 {lab=Vcm2}
N 1360 -1620 1360 -1500 {lab=Vcm2}
N 1320 -760 1360 -760 {lab=Vcm2}
N 1360 -880 1360 -760 {lab=Vcm2}
N 2260 -1770 2260 -1750 {
lab=vf2}
N 2190 -1740 2220 -1740 {
lab=vfp2}
N 2190 -1700 2220 -1700 {
lab=vfn2}
N 2260 -1690 2260 -1660 {
lab=GND}
N 2500 -1770 2500 -1750 {
lab=vr2}
N 2430 -1740 2460 -1740 {
lab=vrp2}
N 2430 -1700 2460 -1700 {
lab=vrn2}
N 2500 -1690 2500 -1660 {
lab=GND}
N 1500 -1540 1600 -1540 {lab=vrp2}
N 1660 -1540 1760 -1540 {lab=vfp2}
N 1500 -1460 1600 -1460 {lab=vrn2}
N 1660 -1460 1760 -1460 {lab=vfn2}
N 1620 -700 1640 -700 {
lab=#net6}
N 1600 -700 1620 -700 {
lab=#net6}
N 1620 -820 1640 -820 {
lab=#net7}
N 1600 -820 1620 -820 {
lab=#net7}
N 1620 -620 1620 -600 {lab=GND}
N 1620 -700 1620 -680 {lab=#net6}
N 1620 -840 1620 -820 {lab=#net7}
N 1620 -920 1620 -900 {lab=GND}
N 1700 -820 1740 -820 {lab=#net8}
N 1740 -820 1740 -800 {lab=#net8}
N 1740 -800 1760 -800 {lab=#net8}
N 1740 -720 1760 -720 {lab=#net9}
N 1740 -720 1740 -700 {lab=#net9}
N 1700 -700 1740 -700 {lab=#net9}
N 1500 -700 1540 -700 {lab=#net4}
N 1500 -820 1540 -820 {lab=#net5}
N 1500 -880 1500 -820 {lab=#net5}
N 3220 -1640 3220 -1600 {lab=VDD}
N 2740 -1620 2780 -1620 {lab=Vcm3}
N 3120 -1500 3140 -1500 {lab=Vcm3}
N 2740 -1380 2780 -1380 {lab=Vcm3}
N 3480 -1480 3620 -1480 {lab=voutp4}
N 3580 -1520 3620 -1520 {lab=voutn4}
N 3480 -1340 3480 -1280 {lab=GND}
N 3580 -1340 3580 -1280 {lab=GND}
N 3480 -1480 3480 -1400 {lab=voutp4}
N 3580 -1520 3580 -1400 {lab=voutn4}
N 3860 -1550 3860 -1530 {
lab=vout4}
N 3790 -1520 3820 -1520 {
lab=voutp4}
N 3790 -1480 3820 -1480 {
lab=voutn4}
N 3860 -1470 3860 -1450 {lab=GND}
N 3220 -1400 3220 -1360 {
lab=GND}
N 3240 -1620 3240 -1600 {
lab=bio_amp_en}
N 3320 -1520 3420 -1520 {lab=voutn4}
N 3320 -1480 3420 -1480 {lab=voutp4}
N 3420 -1480 3480 -1480 {lab=voutp4}
N 3420 -1520 3580 -1520 {lab=voutn4}
N 3420 -1260 3420 -1180 {lab=voutp4}
N 2880 -1380 2880 -1260 {lab=#net10}
N 2880 -1740 2880 -1620 {lab=#net11}
N 2880 -1440 2880 -1380 {lab=#net10}
N 2840 -1380 2880 -1380 {lab=#net10}
N 2840 -1620 2880 -1620 {lab=#net11}
N 2880 -1260 3120 -1260 {lab=#net10}
N 3180 -1260 3420 -1260 {lab=voutp4}
N 3420 -1480 3420 -1260 {lab=voutp4}
N 3180 -1180 3420 -1180 {lab=voutp4}
N 2880 -1180 3120 -1180 {lab=#net10}
N 2880 -1260 2880 -1180 {lab=#net10}
N 2880 -1740 3120 -1740 {lab=#net11}
N 2880 -1820 2880 -1740 {lab=#net11}
N 2880 -1820 3120 -1820 {lab=#net11}
N 3180 -1820 3420 -1820 {lab=voutn4}
N 3180 -1740 3420 -1740 {lab=voutn4}
N 3420 -1740 3420 -1520 {lab=voutn4}
N 3420 -1820 3420 -1740 {lab=voutn4}
N 2740 -1500 2740 -1380 {lab=Vcm3}
N 3220 -900 3220 -860 {lab=VDD}
N 2740 -880 2780 -880 {lab=Vcm3}
N 3120 -760 3140 -760 {lab=Vcm3}
N 2740 -640 2780 -640 {lab=Vcm3}
N 3480 -740 3620 -740 {lab=voutp5}
N 3580 -780 3620 -780 {lab=voutn5}
N 3480 -600 3480 -540 {lab=GND}
N 3580 -600 3580 -540 {lab=GND}
N 3480 -740 3480 -660 {lab=voutp5}
N 3580 -780 3580 -660 {lab=voutn5}
N 3860 -810 3860 -790 {
lab=vout5}
N 3790 -780 3820 -780 {
lab=voutp5}
N 3790 -740 3820 -740 {
lab=voutn5}
N 3860 -730 3860 -710 {lab=GND}
N 3220 -660 3220 -620 {
lab=GND}
N 3240 -880 3240 -860 {
lab=bio_amp_en}
N 3320 -780 3420 -780 {lab=voutn5}
N 3320 -740 3420 -740 {lab=voutp5}
N 3420 -740 3480 -740 {lab=voutp5}
N 3420 -780 3580 -780 {lab=voutn5}
N 3420 -520 3420 -440 {lab=voutp5}
N 2880 -640 2880 -520 {lab=#net12}
N 2880 -1000 2880 -880 {lab=#net13}
N 2880 -700 2880 -640 {lab=#net12}
N 2840 -640 2880 -640 {lab=#net12}
N 2840 -880 2880 -880 {lab=#net13}
N 2880 -520 3120 -520 {lab=#net12}
N 3180 -520 3420 -520 {lab=voutp5}
N 3420 -740 3420 -520 {lab=voutp5}
N 3180 -440 3420 -440 {lab=voutp5}
N 2880 -440 3120 -440 {lab=#net12}
N 2880 -520 2880 -440 {lab=#net12}
N 2880 -1000 3120 -1000 {lab=#net13}
N 2880 -1080 2880 -1000 {lab=#net13}
N 2880 -1080 3120 -1080 {lab=#net13}
N 3180 -1080 3420 -1080 {lab=voutn5}
N 3180 -1000 3420 -1000 {lab=voutn5}
N 3420 -1000 3420 -780 {lab=voutn5}
N 3420 -1080 3420 -1000 {lab=voutn5}
N 2740 -760 2740 -640 {lab=Vcm3}
N 2700 -1500 2740 -1500 {lab=Vcm3}
N 2740 -1620 2740 -1500 {lab=Vcm3}
N 2700 -760 2740 -760 {lab=Vcm3}
N 2740 -880 2740 -760 {lab=Vcm3}
N 2880 -880 2880 -820 {lab=#net13}
N 2960 -1560 2980 -1560 {lab=#net14}
N 3120 -1560 3120 -1540 {lab=vmeasp4}
N 3080 -1660 3080 -1640 {lab=GND}
N 2880 -1620 2880 -1560 {lab=#net11}
N 3120 -1540 3140 -1540 {lab=vmeasp4}
N 3040 -1560 3080 -1560 {lab=vmeasp4}
N 3080 -1560 3080 -1540 {lab=vmeasp4}
N 3080 -1360 3080 -1340 {lab=GND}
N 3080 -1440 3120 -1440 {lab=vmeasn4}
N 3040 -1440 3080 -1440 {lab=vmeasn4}
N 3120 -1460 3120 -1440 {lab=vmeasn4}
N 3080 -1460 3080 -1440 {lab=vmeasn4}
N 2960 -1440 2980 -1440 {lab=#net15}
N 3080 -1440 3080 -1420 {lab=vmeasn4}
N 3080 -1580 3080 -1560 {lab=vmeasp4}
N 3080 -620 3080 -600 {lab=GND}
N 3080 -700 3120 -700 {lab=vmeasn5}
N 3040 -700 3080 -700 {lab=vmeasn5}
N 3120 -720 3120 -700 {lab=vmeasn5}
N 3080 -720 3080 -700 {lab=vmeasn5}
N 2960 -700 2980 -700 {lab=#net16}
N 3080 -700 3080 -680 {lab=vmeasn5}
N 3120 -720 3140 -720 {lab=vmeasn5}
N 2880 -700 2900 -700 {lab=#net12}
N 2960 -820 2980 -820 {lab=#net17}
N 3100 -820 3100 -800 {lab=vmeasp5}
N 3080 -920 3080 -900 {lab=GND}
N 3080 -820 3100 -820 {lab=vmeasp5}
N 3040 -820 3080 -820 {lab=vmeasp5}
N 3080 -820 3080 -800 {lab=vmeasp5}
N 3080 -840 3080 -820 {lab=vmeasp5}
N 3120 -1460 3140 -1460 {lab=vmeasn4}
N 2880 -1440 2900 -1440 {lab=#net10}
N 2880 -1560 2900 -1560 {lab=#net11}
N 3080 -1560 3120 -1560 {lab=vmeasp4}
N 3100 -800 3140 -800 {lab=vmeasp5}
N 2880 -820 2900 -820 {lab=#net13}
N 3860 -1770 3860 -1750 {
lab=vmeas4}
N 3790 -1740 3820 -1740 {
lab=vmeasp4}
N 3790 -1700 3820 -1700 {
lab=vmeasn4}
N 3860 -1690 3860 -1660 {
lab=GND}
N 3860 -1030 3860 -1010 {
lab=vmeas5}
N 3790 -1000 3820 -1000 {
lab=vmeasp5}
N 3790 -960 3820 -960 {
lab=vmeasn5}
N 3860 -950 3860 -920 {
lab=GND}
N 1300 -1800 1300 -1760 {lab=Vcm2}
N 1300 -1700 1300 -1660 {lab=GND}
N 2680 -1800 2680 -1760 {lab=Vcm3}
N 2680 -1700 2680 -1660 {lab=GND}
C {devices/code_shown.sym} 3390 -2870 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 40 -2450 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* .param C1=33e-12
* .param C1=165e-12
.param C1=33e-12
.param C2=3.3e-12
* 227.56fF DAC
.param CL=227.56f
.param R1=10e3
.param R2=160e9
* .param R2=320e9
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e12
.control

optran 0 0 0 1u 1m 0

save all

* User Constants
let f_min = 0.01
let f_max = 1G
let fdc = 1
* ===================================================

* Operating Point Analysis
op
remzerovec
write bio_amplifier_simplified_tb_loopgain_all.raw
set appendwrite
* ===================================================

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write bio_amplifier_simplified_tb_loopgain_all.raw
set appendwrite
* ===================================================

* Rosenstark's method
let L = -v(vr1)/v(vind1)
let L_dB = vdb(L)
let L_arg = 180/PI*cphase(L)

* DC loop gain	
meas ac Ldc_dB find L_dB when frequency = fdc
print Ldc_dB

* Phase margin
meas ac fug find frequency when L_dB=0
meas ac pm find L_arg when frequency=fug
let pm = 180-abs(pm)
print pm
	
* Plotting
plot L_dB L_arg title 'Bode Plot (Rosenstark)' ylabel 'Magnitude (dB), Phase (Deg)'

let L_re = real(L)
let L_im = imag(L)	
plot L_im vs L_re retraceplot title 'Nyquist Plot (Rosenstark)' ylabel 'Imaginary Part' xlabel 'Real Part' 
* ===================================================

* Middlebrook's method
let Tv=-v(vr2)/v(vf2)
let Ti=-(i(Virp3) - i(Virn3))/(i(Vifp3) - i(Vifn3))
let Tmb =(Tv * Ti - 1)/(Tv + Ti + 2)

let Tmb_dB = vdb(Tmb)
let Tmb_arg = 180/PI*cphase(Tmb)

* DC loop gain	
meas ac Tmbdc_dB find Tmb_dB when frequency = fdc
print Tmbdc_dB

* Phase margin
meas ac fug find frequency when Tmb_dB=0
meas ac pm find Tmb_arg when frequency=fug
let pm = 180-abs(pm)
print pm
	
* Plotting
plot Tmb_dB Tmb_arg title 'Bode Plot (Middlebrook)' ylabel 'Magnitude (dB), Phase (Deg)'

let Tmb_re = real(Tmb)
let Tmb_im = imag(Tmb)	
plot Tmb_im vs Tmb_re retraceplot title 'Nyquist Plot (Middlebrook)' ylabel 'Imaginary Part' xlabel 'Real Part' 
* ===================================================

* Tian's Method
* vtest=0, itest=1:
let A=i(Vimeasp5)
let C=v(vmeas5)

* vtest=1, itest=0:
let B=i(Vimeasp4)
let D=v(vmeas4)

let Ttian=(A*D-B*C-A)/(2*(B*C-A*D)+A-D+1)

let Ttian_dB = vdb(Ttian)
let Ttian_arg = 180/PI*cphase(Ttian)

* DC loop gain	
meas ac Ttianbdc_dB find Ttian_dB when frequency = fdc
print Ttianbdc_dB

* Phase margin
meas ac fug find frequency when Ttian_dB=0
meas ac pm find Ttian_arg when frequency=fug
let pm = 180-abs(pm)
print pm

* Plotting
plot Ttian_dB Ttian_arg title 'Bode Plot (Tian)' ylabel 'Magnitude (dB), Phase (Deg)'

let Ttian_re = real(Ttian)
let Ttian_im = imag(Ttian)	
plot Ttian_im vs Ttian_re retraceplot title 'Nyquist Plot (Tian)' ylabel 'Imaginary Part' xlabel 'Real Part' 
* ===================================================

* Rosenstark vs. Middlebrook vs. Tian
plot L_dB Tmb_dB Ttian_dB title 'Rosenstark vs. Middlebrook vs. Tian' ylabel 'Magnitude (dB)'
plot L_arg Tmb_arg Ttian_arg title 'Rosenstark vs. Middlebrook vs. Tian' ylabel 'Phase (Deg)'

* plot L_im vs L_re Tmb_im vs Tmb_re Ttian_im vs Ttian_re retraceplot title 'Rosenstark vs. Middlebrook vs. Tian' ylabel 'Imaginary Part' xlabel 'Real Part'
plot Tmb_im vs Tmb_re Ttian_im vs Ttian_re retraceplot title 'Middlebrook vs. Tian' ylabel 'Imaginary Part' xlabel 'Real Part' 
* ===================================================

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bio_amplifier_simplified_tb_loopgain_all.txt v(L_dB) v(L_arg) v(Tmb_dB) v(Tmb_arg) v(Ttian_dB) v(Ttian_arg)
* ===================================================

*quit
.endc
"}
C {devices/gnd.sym} 2600 -2080 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 3760 -2010 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 3760 -1940 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 2950 -2920 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/capa.sym} 2600 -2170 0 0 {name=C1
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {devices/launcher.sym} 2950 -2800 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bio_amplifier_simplified_tb_loopgain_all.raw ac"
}
C {devices/launcher.sym} 2950 -2860 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vdd.sym} 3760 -2080 0 0 {name=l7 lab=VDD}
C {vdd.sym} 2340 -2440 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 2340 -2160 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 2740 -2280 0 1 {name=p3 sig_type=std_logic lab=voutp1}
C {lab_pin.sym} 2740 -2320 0 1 {name=p4 sig_type=std_logic lab=voutn1}
C {devices/lab_pin.sym} 1640 -2440 0 0 {name=l10 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 1640 -2160 0 0 {name=l11 sig_type=std_logic lab=vinn1
}
C {devices/lab_pin.sym} 1300 -2320 0 0 {name=l13 sig_type=std_logic lab=vind1}
C {devices/lab_pin.sym} 2240 -2300 0 0 {name=l4 sig_type=std_logic lab=Vcm1}
C {devices/lab_pin.sym} 2160 -2440 0 0 {name=l5 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 2160 -2160 0 0 {name=l19 sig_type=std_logic lab=vinn1
}
C {devices/lab_pin.sym} 2360 -2420 2 0 {name=l24 sig_type=std_logic lab=bio_amp_en}
C {devices/capa.sym} 2700 -2170 0 0 {name=C2
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2700 -2080 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 3880 -1940 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 3880 -2080 2 0 {name=l35 sig_type=std_logic lab=bio_amp_en}
C {devices/vsource.sym} 1740 -2230 0 0 {name=Vcm1 value=0.75
}
C {devices/vcvs.sym} 1640 -2230 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1640 -2370 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 1740 -2320 1 0 {name=l38 sig_type=std_logic lab=Vcm1}
C {devices/gnd.sym} 1320 -2160 0 0 {name=l39 lab=GND}
C {devices/gnd.sym} 1740 -2160 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 1440 -2300 0 0 {name=E6 value=1}
C {devices/gnd.sym} 1440 -2160 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 3880 -2010 0 0 {name=V1 value="1.5"}
C {devices/lab_pin.sym} 2740 -2540 0 1 {name=l12 sig_type=std_logic lab=vout1}
C {devices/vcvs.sym} 2740 -2490 0 0 {name=E1 value=1}
C {devices/gnd.sym} 2740 -2440 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 2670 -2470 2 1 {name=l15 sig_type=std_logic lab=voutn1
}
C {devices/lab_pin.sym} 2670 -2510 0 0 {name=l23 sig_type=std_logic lab=voutp1
}
C {devices/vsource.sym} 1320 -2230 0 0 {name=vind1 value="dc 0 ac 1"
}
C {res.sym} 2270 -2620 1 0 {name=R2a
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {res.sym} 2270 -1980 1 0 {name=R2b
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 2340 -2300 0 0 {name=x1}
C {capa.sym} 2270 -2540 1 0 {name=C2a
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2270 -2060 1 1 {name=C2b
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1930 -2420 1 0 {name=C1a
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1930 -2180 1 0 {name=C1b
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2180 -2390 0 0 {name=C8
m=1
value=1G
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 2090 -2340 1 0 {name=L28
m=1
value=1G
footprint=1206
device=inductor}
C {devices/ind.sym} 2090 -2260 1 0 {name=L16
m=1
value=1G
footprint=1206
device=inductor}
C {devices/capa.sym} 2180 -2210 0 0 {name=C3
m=1
value=1G
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1740 -2100 0 1 {name=l18 sig_type=std_logic lab=vr1}
C {devices/vcvs.sym} 1740 -2050 0 0 {name=E2 value=1}
C {devices/gnd.sym} 1740 -2000 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 1670 -2030 2 1 {name=l22 sig_type=std_logic lab=vrn1
}
C {devices/lab_pin.sym} 1670 -2070 0 0 {name=l25 sig_type=std_logic lab=vrp1

}
C {devices/lab_pin.sym} 1980 -2340 0 0 {name=l21 sig_type=std_logic lab=vrp1

}
C {devices/lab_pin.sym} 1980 -2260 2 1 {name=l17 sig_type=std_logic lab=vrn1
}
C {devices/gnd.sym} 2100 -1280 0 0 {name=l26 lab=GND}
C {devices/capa.sym} 2100 -1370 0 0 {name=C4
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1840 -1640 0 0 {name=l27 lab=VDD}
C {devices/gnd.sym} 1840 -1360 0 0 {name=l29 lab=GND}
C {lab_pin.sym} 2240 -1480 0 1 {name=p1 sig_type=std_logic lab=voutp2}
C {lab_pin.sym} 2240 -1520 0 1 {name=p2 sig_type=std_logic lab=voutn2}
C {devices/lab_pin.sym} 1740 -1500 0 0 {name=l31 sig_type=std_logic lab=Vcm2}
C {devices/lab_pin.sym} 1860 -1620 2 0 {name=l34 sig_type=std_logic lab=bio_amp_en}
C {devices/capa.sym} 2200 -1370 0 0 {name=C5
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2200 -1280 0 0 {name=l36 lab=GND}
C {devices/lab_pin.sym} 2500 -1550 0 1 {name=l37 sig_type=std_logic lab=vout2}
C {devices/vcvs.sym} 2500 -1500 0 0 {name=E3 value=1}
C {devices/gnd.sym} 2500 -1450 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} 2430 -1480 2 1 {name=l43 sig_type=std_logic lab=voutn2
}
C {devices/lab_pin.sym} 2430 -1520 0 0 {name=l44 sig_type=std_logic lab=voutp2
}
C {res.sym} 1770 -1820 1 0 {name=R1
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {res.sym} 1770 -1180 1 0 {name=R2
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1840 -1500 0 0 {name=x2}
C {capa.sym} 1770 -1740 1 0 {name=C6
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1770 -1260 1 1 {name=C7
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1430 -1620 1 0 {name=C9
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1430 -1380 1 0 {name=C10
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2100 -540 0 0 {name=l49 lab=GND}
C {devices/capa.sym} 2100 -630 0 0 {name=C13
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1840 -900 0 0 {name=l50 lab=VDD}
C {devices/gnd.sym} 1840 -620 0 0 {name=l51 lab=GND}
C {lab_pin.sym} 2240 -740 0 1 {name=p5 sig_type=std_logic lab=voutp3}
C {lab_pin.sym} 2240 -780 0 1 {name=p6 sig_type=std_logic lab=voutn3}
C {devices/lab_pin.sym} 1740 -760 0 0 {name=l52 sig_type=std_logic lab=Vcm2}
C {devices/lab_pin.sym} 1860 -880 2 0 {name=l55 sig_type=std_logic lab=bio_amp_en}
C {devices/capa.sym} 2200 -630 0 0 {name=C14
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2200 -540 0 0 {name=l56 lab=GND}
C {devices/lab_pin.sym} 2500 -810 0 1 {name=l57 sig_type=std_logic lab=vout3}
C {devices/vcvs.sym} 2500 -760 0 0 {name=E7 value=1}
C {devices/gnd.sym} 2500 -710 0 0 {name=l58 lab=GND}
C {devices/lab_pin.sym} 2430 -740 2 1 {name=l59 sig_type=std_logic lab=voutn3
}
C {devices/lab_pin.sym} 2430 -780 0 0 {name=l60 sig_type=std_logic lab=voutp3
}
C {res.sym} 1770 -1080 1 0 {name=R3
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {res.sym} 1770 -440 1 0 {name=R4
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1840 -760 0 0 {name=x3}
C {capa.sym} 1770 -1000 1 0 {name=C15
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1770 -520 1 1 {name=C16
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1430 -880 1 0 {name=C17
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1430 -640 1 0 {name=C18
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1320 -1500 0 0 {name=l65 sig_type=std_logic lab=Vcm2}
C {devices/lab_pin.sym} 1320 -760 0 0 {name=l32 sig_type=std_logic lab=Vcm2}
C {devices/lab_pin.sym} 2260 -1770 0 1 {name=l48 sig_type=std_logic lab=vf2}
C {devices/vcvs.sym} 2260 -1720 0 0 {name=E8 value=0.5}
C {devices/gnd.sym} 2260 -1660 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 2190 -1700 2 1 {name=l45 sig_type=std_logic lab=vfn2
}
C {devices/lab_pin.sym} 2190 -1740 0 0 {name=l46 sig_type=std_logic lab=vfp2

}
C {devices/lab_pin.sym} 2500 -1770 0 1 {name=l47 sig_type=std_logic lab=vr2}
C {devices/vcvs.sym} 2500 -1720 0 0 {name=E9 value=0.5}
C {devices/gnd.sym} 2500 -1660 0 0 {name=l53 lab=GND}
C {devices/lab_pin.sym} 2430 -1700 2 1 {name=l54 sig_type=std_logic lab=vrn2
}
C {devices/lab_pin.sym} 2430 -1740 0 0 {name=l61 sig_type=std_logic lab=vrp2

}
C {devices/vsource.sym} 1630 -1540 1 1 {name=Vtestp2 value="dc 0 ac 1"}
C {lab_wire.sym} 1720 -1540 0 0 {name=p9 sig_type=std_logic lab=vfp2}
C {lab_wire.sym} 1560 -1540 0 0 {name=p13 sig_type=std_logic lab=vrp2}
C {devices/vsource.sym} 1630 -1460 1 0 {name=Vtestn2 value="dc 0 ac -1"}
C {lab_wire.sym} 1720 -1460 0 0 {name=p10 sig_type=std_logic lab=vfn2}
C {lab_wire.sym} 1560 -1460 0 0 {name=p11 sig_type=std_logic lab=vrn2}
C {ammeter.sym} 1570 -820 3 1 {name=Virp3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1670 -820 3 1 {name=Vifp3 savecurrent=true spice_ignore=0}
C {isource.sym} 1620 -650 2 1 {name=Itestn3 value="dc 0 ac -1"}
C {devices/gnd.sym} 1620 -600 0 0 {name=l62 lab=GND}
C {ammeter.sym} 1570 -700 3 0 {name=Virn3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1670 -700 3 0 {name=Vifn3 savecurrent=true spice_ignore=0}
C {isource.sym} 1620 -870 0 0 {name=Itestp3 value="dc 0 ac 1"}
C {devices/gnd.sym} 1620 -920 2 0 {name=l63 lab=GND}
C {devices/gnd.sym} 3480 -1280 0 0 {name=l64 lab=GND}
C {devices/capa.sym} 3480 -1370 0 0 {name=C11
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 3220 -1640 0 0 {name=l66 lab=VDD}
C {devices/gnd.sym} 3220 -1360 0 0 {name=l67 lab=GND}
C {lab_pin.sym} 3620 -1480 0 1 {name=p7 sig_type=std_logic lab=voutp4}
C {lab_pin.sym} 3620 -1520 0 1 {name=p8 sig_type=std_logic lab=voutn4}
C {devices/lab_pin.sym} 3120 -1500 0 0 {name=l68 sig_type=std_logic lab=Vcm3}
C {devices/lab_pin.sym} 3240 -1620 2 0 {name=l69 sig_type=std_logic lab=bio_amp_en}
C {devices/capa.sym} 3580 -1370 0 0 {name=C12
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 3580 -1280 0 0 {name=l70 lab=GND}
C {devices/lab_pin.sym} 3860 -1550 0 1 {name=l71 sig_type=std_logic lab=vout4}
C {devices/vcvs.sym} 3860 -1500 0 0 {name=E10 value=1}
C {devices/gnd.sym} 3860 -1450 0 0 {name=l72 lab=GND}
C {devices/lab_pin.sym} 3790 -1480 2 1 {name=l73 sig_type=std_logic lab=voutn4
}
C {devices/lab_pin.sym} 3790 -1520 0 0 {name=l74 sig_type=std_logic lab=voutp4
}
C {res.sym} 3150 -1820 1 0 {name=R5
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {res.sym} 3150 -1180 1 0 {name=R6
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 3220 -1500 0 0 {name=x4}
C {capa.sym} 3150 -1740 1 0 {name=C19
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 3150 -1260 1 1 {name=C20
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2810 -1620 1 0 {name=C21
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2810 -1380 1 0 {name=C22
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 3480 -540 0 0 {name=l75 lab=GND}
C {devices/capa.sym} 3480 -630 0 0 {name=C23
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 3220 -900 0 0 {name=l76 lab=VDD}
C {devices/gnd.sym} 3220 -620 0 0 {name=l77 lab=GND}
C {lab_pin.sym} 3620 -740 0 1 {name=p12 sig_type=std_logic lab=voutp5}
C {lab_pin.sym} 3620 -780 0 1 {name=p14 sig_type=std_logic lab=voutn5}
C {devices/lab_pin.sym} 3120 -760 0 0 {name=l78 sig_type=std_logic lab=Vcm3}
C {devices/lab_pin.sym} 3240 -880 2 0 {name=l79 sig_type=std_logic lab=bio_amp_en}
C {devices/capa.sym} 3580 -630 0 0 {name=C24
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 3580 -540 0 0 {name=l80 lab=GND}
C {devices/lab_pin.sym} 3860 -810 0 1 {name=l81 sig_type=std_logic lab=vout5}
C {devices/vcvs.sym} 3860 -760 0 0 {name=E11 value=1}
C {devices/gnd.sym} 3860 -710 0 0 {name=l82 lab=GND}
C {devices/lab_pin.sym} 3790 -740 2 1 {name=l83 sig_type=std_logic lab=voutn5
}
C {devices/lab_pin.sym} 3790 -780 0 0 {name=l84 sig_type=std_logic lab=voutp5
}
C {res.sym} 3150 -1080 1 0 {name=R7
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {res.sym} 3150 -440 1 0 {name=R8
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 3220 -760 0 0 {name=x5}
C {capa.sym} 3150 -1000 1 0 {name=C25
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 3150 -520 1 1 {name=C26
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2810 -880 1 0 {name=C27
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2810 -640 1 0 {name=C28
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2700 -1500 0 0 {name=l85 sig_type=std_logic lab=Vcm3}
C {devices/lab_pin.sym} 2700 -760 0 0 {name=l86 sig_type=std_logic lab=Vcm3}
C {devices/vsource.sym} 3010 -1560 1 1 {name=Vtestp4 value="dc 0 ac 1"}
C {ammeter.sym} 2930 -1560 3 0 {name=Vimeasp4 savecurrent=true spice_ignore=0}
C {isource.sym} 3080 -1610 0 0 {name=Itestp4 value="dc 0 ac 0"}
C {devices/gnd.sym} 3080 -1660 2 0 {name=l88 lab=GND}
C {ammeter.sym} 2930 -1440 3 0 {name=Vimeasn4 savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 3010 -1440 1 0 {name=Vtestn4 value="dc 0 ac -1"}
C {lab_wire.sym} 3080 -1540 2 1 {name=p16 sig_type=std_logic lab=vmeasp4}
C {isource.sym} 3080 -1390 2 1 {name=Itestn4 value="dc 0 ac 0"}
C {devices/gnd.sym} 3080 -1340 0 0 {name=l89 lab=GND}
C {lab_wire.sym} 3080 -1460 0 0 {name=p15 sig_type=std_logic lab=vmeasn4}
C {ammeter.sym} 2930 -700 3 0 {name=Vimeasn5 savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 3010 -700 1 0 {name=Vtestn5 value="dc 0 ac 0"}
C {isource.sym} 3080 -650 2 1 {name=Itestn5 value="dc 0 ac -1"}
C {devices/gnd.sym} 3080 -600 0 0 {name=l87 lab=GND}
C {lab_wire.sym} 3080 -720 0 0 {name=p17 sig_type=std_logic lab=vmeasn5}
C {devices/vsource.sym} 3010 -820 1 1 {name=Vtestp5 value="dc 0 ac 0"}
C {ammeter.sym} 2930 -820 3 0 {name=Vimeasp5 savecurrent=true spice_ignore=0}
C {isource.sym} 3080 -870 0 0 {name=Itestp5 value="dc 0 ac 1"}
C {devices/gnd.sym} 3080 -920 2 0 {name=l90 lab=GND}
C {lab_wire.sym} 3080 -800 2 1 {name=p18 sig_type=std_logic lab=vmeasp5}
C {devices/lab_pin.sym} 3860 -1770 0 1 {name=l91 sig_type=std_logic lab=vmeas4}
C {devices/vcvs.sym} 3860 -1720 0 0 {name=E12 value=0.5}
C {devices/gnd.sym} 3860 -1660 0 0 {name=l92 lab=GND}
C {devices/lab_pin.sym} 3790 -1700 2 1 {name=l93 sig_type=std_logic lab=vmeasn4
}
C {devices/lab_pin.sym} 3790 -1740 0 0 {name=l94 sig_type=std_logic lab=vmeasp4

}
C {devices/lab_pin.sym} 3860 -1030 0 1 {name=l95 sig_type=std_logic lab=vmeas5}
C {devices/vcvs.sym} 3860 -980 0 0 {name=E13 value=0.5}
C {devices/gnd.sym} 3860 -920 0 0 {name=l96 lab=GND}
C {devices/lab_pin.sym} 3790 -960 2 1 {name=l97 sig_type=std_logic lab=vmeasn5
}
C {devices/lab_pin.sym} 3790 -1000 0 0 {name=l98 sig_type=std_logic lab=vmeasp5
}
C {devices/vsource.sym} 1300 -1730 0 0 {name=Vcm2 value=0.75
}
C {devices/gnd.sym} 1300 -1660 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1300 -1800 0 1 {name=l99 sig_type=std_logic lab=Vcm2}
C {devices/vsource.sym} 2680 -1730 0 0 {name=Vcm3 value=0.75
}
C {devices/gnd.sym} 2680 -1660 0 0 {name=l100 lab=GND}
C {devices/lab_pin.sym} 2680 -1800 0 1 {name=l101 sig_type=std_logic lab=Vcm3}
