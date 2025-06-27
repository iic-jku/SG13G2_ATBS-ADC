// =====================================================
// Author: Simon Dorrer
// Last Modified: 14.12.2024
// Description: This .v file implements a testbench testing the Verilog counter entity.
// =====================================================

`timescale 1ns / 1ps

module atbs_core_fixed_window_tb;

  // Constants
  parameter CLK_FREQ = 8e6;
  parameter DAC_BITWIDTH = 8;
  parameter DAC_SETTLING_CLKS = 10; // 1.25us @ 8MHz

  // INPUT signals
  reg clock = 0;
  reg reset_n = 1; // active low input

  // Comparators
  reg comp_upper = 0;
  reg comp_lower = 0;

  // AWG Trigger
  reg trigger_start_sampling = 0;

  // Switches for different modes
  reg trigger_start_mode;
  reg adaptive_mode;
  reg control_mode;

  // Switch for Input Signal Select Switch
  reg signal_select;

  // Enable Switch for Input Signal Select Switch, Amp., and DAC
  reg enable;

  // Select TBS delta steps --> enables virtual DAC resolution
  reg select_tbs_delta_steps; // SW5: full DAC resolution(0), "virtual" DAC resolution(1)

  // OUTPUT signals
  // Comparator
  wire phi_comp;
   
  // DAC
  wire phi_dac_upper;
  wire [3:0] dac_upper;

  wire phi_dac_lower;
  wire [3:0] dac_lower;

  // Non-Overlapping Clocks (NOCs)
  wire phi_vcm_generator_1;
  wire phi_vcm_generator_2;

  wire phi_bias_1;
  wire phi_bias_2;

  wire phi_cmfb_1;
  wire phi_cmfb_2;

  wire phi_res_1;
  wire phi_res_2;

  // Analog Control
  // Bio-Signal Amplifier
  wire bio_amp_en;
  wire [2:0] select_cap;
  // SPDT Input Switch
  wire select_spdt;

  // LEDs
  wire idle_led;
  wire overflow_led;
  wire underflow_led;
  
  // Spike  
  wire spike;

  // UART
  wire uart_tx;

  // INTERNAL signals
  // Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
  reg reset;
  
  // needed for simulation control
  reg tb_end = 0;

  // Device Under Test - Adaptive Threshold Based Sampling
  atbs_core_fixed_window_board dut_atbs (
    .clock_i(clock),
    .reset_n_i(reset_n),
    .comp_upper_i(comp_upper),
    .comp_lower_i(comp_lower),
    .trigger_start_sampling_i(trigger_start_sampling),
    .trigger_start_mode_i(trigger_start_mode),
    .adaptive_mode_i(adaptive_mode),
    .control_mode_i(control_mode),
    .signal_select_in_i(signal_select),
    .enable_i(enable),
    .select_tbs_delta_steps_i(select_tbs_delta_steps),
    .phi_comp_o(phi_comp),
    .phi_dac_upper_o(phi_dac_upper),
    .dac_upper_o(dac_upper),
    .phi_dac_lower_o(phi_dac_lower),
    .dac_lower_o(dac_lower),
    .phi_vcm_generator_1_o(phi_vcm_generator_1),
    .phi_vcm_generator_2_o(phi_vcm_generator_2),
    .phi_bias_1_o(phi_bias_1),
    .phi_bias_2_o(phi_bias_2),
    .phi_cmfb_1_o(phi_cmfb_1),
    .phi_cmfb_2_o(phi_cmfb_2),
    .phi_res_1_o(phi_res_1),
    .phi_res_2_o(phi_res_2),
    .bio_amp_en_o(bio_amp_en),
    .select_cap_o(select_cap),
    .select_spdt_o(select_spdt),
    .idle_led_o(idle_led),
    .overflow_led_o(overflow_led),
    .underflow_led_o(underflow_led),
    .spike_o(spike),
    .uart_rx_i(tx),
    .uart_tx_o(uart_tx)
  );
  
  // Generate clock
	/* verilator lint_off STMTDLY */
	always begin
    #((1e9 / (2 * CLK_FREQ))); // Calculate half-period in nanoseconds
    clock = ~clock;
  end
	/* verilator lint_on STMTDLY */

	initial begin
		$dumpfile("atbs_core_fixed_window_tb.vcd");
		$dumpvars;
    
    // RESET
    #((3 * 1e9 / (4 * CLK_FREQ)));
    reset_n = 0;
    #((5 * 1e9 / (2 * CLK_FREQ)));
    reset_n = 1;
    // =====================================================
    
    // TBS SIMULATION with delta_steps = 1
    // DEFINE SETTINGS
    trigger_start_mode = 0;           // SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode = 0;                // SW1: TBS(0), ATBS(1)
    control_mode = 0;                 // SW2: Switches(0), UART(1)
    signal_select = 0;                // SW3: ECG(0), BNC(1)
    enable = 1;                       // SW4: Disable(0), Enable(1)
    select_tbs_delta_steps = 0;       // SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    
    #((40 * 1e9 / (2 * CLK_FREQ)));   // Debouncing Time
    // =====================================================
    
    // Input signal within thresholds (do nothing)
    comp_upper = 0;
    comp_lower = 1;
    // =====================================================
    
    // TESTING ENABLE
    // Wait for Start-Up and Main-FSM to be in sampling mode.
    #((3 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    
    enable = 0;               // SW4: Disable(0), Enable(1)
    #((10 * 1e9 / (2 * CLK_FREQ)));
    enable = 1;               // SW4: Disable(0), Enable(1)

    // Wait for Start-Up and Main-FSM to be in sampling mode.
    #((3 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    
    enable = 0;               // SW4: Disable(0), Enable(1)
    #((10 * 1e9 / (2 * CLK_FREQ)));
    enable = 1;               // SW4: Disable(0), Enable(1)
    
    // Wait for Start-Up and Main-FSM to be in sampling mode.
    #((3 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    // =====================================================
    
    // SAMPLING
    // Decrease voltage
    comp_lower = 0;
    #((450 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    
    // Increase voltage
    comp_upper = 1;
    #((900 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    // =====================================================
    
    
    // TBS SIMULATION with delta_steps = "virtual" DAC resolution (N-3, default)
    // DEFINE SETTINGS
    trigger_start_mode = 0;           // SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode = 0;                // SW1: TBS(0), ATBS(1)
    control_mode = 0;                 // SW2: Switches(0), UART(1)
    signal_select = 0;                // SW3: ECG(0), BNC(1)
    enable = 1;                       // SW4: Disable(0), Enable(1)
    select_tbs_delta_steps = 1;       // SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    
    #((40 * 1e9 / (2 * CLK_FREQ)));   // Debouncing Time
    // =====================================================
    
    // RESET
    // #((3 * 1e9 / (4 * CLK_FREQ)));
    // reset_n = 0;
    // #((5 * 1e9 / (2 * CLK_FREQ)));
    // reset_n = 1;
    // =====================================================
    
    // Input signal within thresholds (do nothing)
    comp_upper = 0;
    comp_lower = 1;
    // =====================================================
    
    // TESTING ENABLE
    // Wait for Start-Up and Main-FSM to be in sampling mode.
    #((3 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    
    enable = 0;               // SW4: Disable(0), Enable(1)
    #((10 * 1e9 / (2 * CLK_FREQ)));
    enable = 1;               // SW4: Disable(0), Enable(1)

    // Wait for Start-Up and Main-FSM to be in sampling mode.
    #((3 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    
    enable = 0;               // SW4: Disable(0), Enable(1)
    #((10 * 1e9 / (2 * CLK_FREQ)));
    enable = 1;               // SW4: Disable(0), Enable(1)
    
    // Wait for Start-Up and Main-FSM to be in sampling mode.
    #((3 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    // =====================================================
    
    // SAMPLING
    // Decrease voltage
    comp_lower = 0;
    #((200 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    
    // Increase voltage
    comp_upper = 1;
    #((100 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    // =====================================================
    
    // Input signal within thresholds (do nothing)
    comp_upper = 0;
    comp_lower = 1;
    // =====================================================
    
    
    // ATBS SIMULATION
    // DEFINE SETTINGS
    trigger_start_mode = 0;           // SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode = 1;                // SW1: TBS(0), ATBS(1)
    control_mode = 0;                 // SW2: Switches(0), UART(1)
    signal_select = 0;                // SW3: ECG(0), BNC(1)
    enable = 1;                       // SW4: Disable(0), Enable(1)
    select_tbs_delta_steps = 0;       // SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    
    #((40 * 1e9 / (2 * CLK_FREQ)));   // Debouncing Time
    // =====================================================
    
    // RESET
    // #((3 * 1e9 / (4 * CLK_FREQ)));
    // reset_n = 0;
    // #((5 * 1e9 / (2 * CLK_FREQ)));
    // reset_n = 1;
    // =====================================================
    
    // Input signal within thresholds (do nothing)
    comp_upper = 0;
    comp_lower = 1;
    // =====================================================
    
    // TESTING ENABLE
    // Wait for Start-Up and Main-FSM to be in sampling mode.
    #((3 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    
    enable = 0;               // SW4: Disable(0), Enable(1)
    #((10 * 1e9 / (2 * CLK_FREQ)));
    enable = 1;               // SW4: Disable(0), Enable(1)

    // Wait for Start-Up and Main-FSM to be in sampling mode.
    #((3 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    
    enable = 0;               // SW4: Disable(0), Enable(1)
    #((10 * 1e9 / (2 * CLK_FREQ)));
    enable = 1;               // SW4: Disable(0), Enable(1)
    
    // Wait for Start-Up and Main-FSM to be in sampling mode.
    #((3 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    // =====================================================
    
    // SAMPLING
    // Decrease voltage
    comp_lower = 0;
    #((200 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    
    // Increase voltage
    comp_upper = 1;
    #((200 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    // =====================================================
    
    // Input signal within thresholds (do nothing)
    comp_upper = 0;
    comp_lower = 1;
    // =====================================================
    
    #((200 * DAC_SETTLING_CLKS * 1e9 / (2 * CLK_FREQ)));
    
		/* verilator lint_off STMTDLY */
    tb_end = 1;
    $display("End of simulation.");
		$finish; // finish
		/* verilator lint_on STMTDLY */
	end
endmodule // counter_tb