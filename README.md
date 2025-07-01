# SG13G2_ATBS-ADC
Author: Simon Dorrer, 2024 / 2025, Johannes Kepler University (JKU) Linz, Austria, Institute for Integrated Circuits and Quantum Computing (IICQC) / Institute of Signal Processing (ISP). This ATBS-ADC has been designed in the context of a Master's thesis, it is published on epub.jku.at (coming soon!).

**Title:** An Open-Source Adaptive Event-Based ADC for Bio-Signal Acquisition in 130nm CMOS

**Abstract:**
Event-based ADCs offer significant advantages over Nyquist ADCs in applications where signals are sparse and exhibit substantial variations only within short time intervals, such as the QRS complex in an electrocardiogram (ECG). Unlike Nyquist ADCs, which sample data continuously at fixed rates and therefore often lead to unnecessary data and higher power consumption in time intervals of minimal signal variation, event-based ADCs only generate data when the signal exceeds a predefined voltage threshold. This makes them more energy-efficient, especially for battery-powered, wireless, and wearable devices, such as fitness trackers, medical sensors, and Internet of Things (IoT) devices. Adaptively adjusting these voltage thresholds further enhances efficiency.

This work first presents a PCB-level demonstrator to validate the feasibility of the event-based ADC concept. The demonstrator enables the development of a reconstruction framework for non-uniform data points in Matlab and Python and serves as a verification platform of the digital core on an FPGA.

Subsequently, an event-based ADC is integrated utilizing open-source tools and IHP's 130nm CMOS technology. The analog circuit design uses Xschem, Ngspice, and Jupyter notebooks with gm/ID sizing scripts. Furthermore, the design consists of a digital core written in VHDL. Since some open-source tools prefer Verilog, the VHDL code is converted to Verilog using GHDL. Simulations are conducted with GTKWave, Surfer, or ModelSim, while register-transfer level (RTL) synthesis is performed using Yosys. The synthesized digital design is included in Xschem using Qflow scripts and Xspice, enabling analog-mixed signal (AMS) simulations. The digital layout is created with OpenROAD Flow scripts (ORFS).

Finally, a pinout and a suitable package is suggested and a potential evaluation board for the designed ASIC is proposed.

**Resources:**

- Master's Thesis: published soon on https://epub.jku.at/
- YouTube Video: coming soon on https://www.youtube.com/@Simi_OE3SDE
- GitHub Repository (SG13G2 ASIC Design Template):
  https://github.com/simi1505/SG13G2_ASIC-Design-Template
