v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Testbench for transfer characteristic - Ideal 8-Bit DAC} 580 -1710 0 0 1 1 {}
N 820 -790 820 -770 {
lab=VDD}
N 820 -710 820 -690 {
lab=GND}
N 1380 -1180 1380 -1160 {
lab=VDD}
N 1380 -940 1380 -920 {
lab=GND}
N 1240 -1120 1280 -1120 {
lab=d0}
N 1240 -980 1280 -980 {
lab=d7}
N 1240 -1000 1280 -1000 {
lab=d6}
N 1240 -1020 1280 -1020 {
lab=d5}
N 1240 -1040 1280 -1040 {
lab=d4}
N 1240 -1060 1280 -1060 {
lab=d3}
N 1240 -1080 1280 -1080 {
lab=d2}
N 1240 -1100 1280 -1100 {
lab=d1}
N 1760 -1050 1820 -1050 {
lab=vdac_out}
N 960 -790 960 -770 {
lab=d0}
N 1100 -790 1100 -770 {
lab=d1}
N 1240 -790 1240 -770 {
lab=d2}
N 1380 -790 1380 -770 {
lab=d3}
N 1940 -790 1940 -770 {
lab=d7}
N 1800 -790 1800 -770 {
lab=d6}
N 1660 -790 1660 -770 {
lab=d5}
N 1520 -790 1520 -770 {
lab=d4}
N 960 -710 960 -690 {
lab=GND}
N 1100 -710 1100 -690 {
lab=GND}
N 1240 -710 1240 -690 {
lab=GND}
N 1380 -710 1380 -690 {
lab=GND}
N 1520 -710 1520 -690 {
lab=GND}
N 1660 -710 1660 -690 {
lab=GND}
N 1800 -710 1800 -690 {
lab=GND}
N 1940 -710 1940 -690 {
lab=GND}
N 1760 -1050 1760 -1020 {lab=vdac_out}
N 1580 -1050 1760 -1050 {
lab=vdac_out}
N 1760 -960 1760 -920 {lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 140 -1550 0 0 {name=NGSPICE
only_toplevel=false
value="
.param temp=27
.control
  set wr_vecnames
  set wr_singlescale
  let code = 0
  while code < 256
    if code eq 0
      let d0 = 0
    else
      let d0 = code % 2 * v(VDD)
    end
    if floor(code / 2) eq 0
      let d1 = 0
    else
      let d1 = floor(code / 2) % 2 * v(VDD)
    end	
    if floor(code / 4) eq 0
      let d2 = 0
    else
      let d2 = floor(code / 4) % 2 * v(VDD)
    end	
    if floor(code / 8) eq 0
      let d3 = 0
    else
      let d3 = floor(code / 8) % 2 * v(VDD)
    end
    if floor(code / 16) eq 0
      let d4 = 0
    else
      let d4 = floor(code / 16) % 2 * v(VDD)
    end
    if floor(code / 32) eq 0
      let d5 = 0
    else
      let d5 = floor(code / 32) % 2 * v(VDD)
    end
    if floor(code / 64) eq 0
      let d6 = 0
    else
      let d6 = floor(code / 64) % 2 * v(VDD)
    end
    if floor(code / 128) eq 0
      let d7 = 0
    else
      let d7 = floor(code / 128) % 2 * v(VDD)
    end
    alter vd0 $&d0
    alter vd1 $&d1
    alter vd2 $&d2
    alter vd3 $&d3
    alter vd4 $&d4
    alter vd5 $&d5
    alter vd6 $&d6
    alter vd7 $&d7
    save all
    op
    wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/dac_ideal_tb_tc.txt v(d0) v(d1) v(d2) v(d3) v(d4) v(d5) v(d6) v(d7) v(vdac_out)
    if code eq 0
      set appendwrite
      set wr_vecnames = FALSE
    end
    let code = code + 1
  end
  quit
.endc"}
C {devices/vsource.sym} 820 -740 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 820 -690 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 820 -790 0 0 {name=l8 lab=VDD}
C {devices/vdd.sym} 1380 -1180 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 1380 -920 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1820 -1050 2 0 {name=p1 sig_type=std_logic lab=vdac_out}
C {devices/vsource.sym} 960 -740 0 0 {name=vd0 value="1.5"}
C {devices/vsource.sym} 1100 -740 0 0 {name=vd1 value="1.5"}
C {devices/vsource.sym} 1240 -740 0 0 {name=vd2 value="1.5"}
C {devices/vsource.sym} 1380 -740 0 0 {name=vd3 value="1.5"}
C {devices/vsource.sym} 1520 -740 0 0 {name=vd4 value="1.5"}
C {devices/vsource.sym} 1660 -740 0 0 {name=vd5 value="1.5"}
C {devices/vsource.sym} 1800 -740 0 0 {name=vd6 value="1.5"}
C {devices/vsource.sym} 1940 -740 0 0 {name=vd7 value="1.5"}
C {devices/gnd.sym} 960 -690 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 1100 -690 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 1240 -690 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 1380 -690 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 1520 -690 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 1660 -690 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 1800 -690 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 1940 -690 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1240 -1120 0 0 {name=p2 sig_type=std_logic lab=d0}
C {devices/lab_wire.sym} 1240 -1100 0 0 {name=p3 sig_type=std_logic lab=d1}
C {devices/lab_wire.sym} 1240 -1080 0 0 {name=p4 sig_type=std_logic lab=d2}
C {devices/lab_wire.sym} 1240 -1060 0 0 {name=p5 sig_type=std_logic lab=d3}
C {devices/lab_wire.sym} 1240 -1040 0 0 {name=p6 sig_type=std_logic lab=d4}
C {devices/lab_wire.sym} 1240 -1020 0 0 {name=p7 sig_type=std_logic lab=d5}
C {devices/lab_wire.sym} 1240 -1000 0 0 {name=p8 sig_type=std_logic lab=d6}
C {devices/lab_wire.sym} 1240 -980 0 0 {name=p9 sig_type=std_logic lab=d7}
C {devices/lab_wire.sym} 1940 -790 1 0 {name=p10 sig_type=std_logic lab=d7}
C {devices/lab_wire.sym} 1800 -790 1 0 {name=p11 sig_type=std_logic lab=d6}
C {devices/lab_wire.sym} 1660 -790 1 0 {name=p12 sig_type=std_logic lab=d5}
C {devices/lab_wire.sym} 960 -790 1 0 {name=p13 sig_type=std_logic lab=d0}
C {devices/lab_wire.sym} 1100 -790 1 0 {name=p14 sig_type=std_logic lab=d1}
C {devices/lab_wire.sym} 1240 -790 1 0 {name=p15 sig_type=std_logic lab=d2}
C {devices/lab_wire.sym} 1380 -790 1 0 {name=p16 sig_type=std_logic lab=d3}
C {devices/lab_wire.sym} 1520 -790 1 0 {name=p17 sig_type=std_logic lab=d4}
C {devices/code_shown.sym} 140 -240 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1920 -1510 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/res.sym} 1760 -990 0 0 {name=R1
value=10Meg
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1760 -920 0 0 {name=l5 lab=GND}
C {dac/ideal/dac_ideal.sym} 1420 -1050 0 0 {name=x1 tsettle=10n}
