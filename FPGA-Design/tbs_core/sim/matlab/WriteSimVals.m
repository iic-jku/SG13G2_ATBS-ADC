% =====================================================
% TBS SimVals and Package Constants
% =====================================================
function WriteSimVals(f_clk, n_ff, n_channels, addr_bitwidth, data_bitwidth, ...
time_counter_bitwidth, main_counter_max, debounce_counter_max, uart_data_length, ...
uart_baud_counter_max, delta_steps_bitwidth, dac_bitwidth, pwm_counter_bitwidth, ...
max_clipping_value, min_clipping_value, dac_settling_clks, d_max_lim, d_min_lim, ...
ethernet_payload, trigger_counter_max, sc_noc_counter_max, ...
vhdl_src_path, package_prefix)

    filename = sprintf('%sSimVals_p.vhd', package_prefix);
    f = fopen([vhdl_src_path filename], 'w');
    
    % calculated constants
    main_counter_bitwidth = ceil(log2(main_counter_max));
    debounce_counter_bitwidth = ceil(log2(debounce_counter_max));
    time_counter_max = 2^time_counter_bitwidth;
    pwm_counter_max = 2^pwm_counter_bitwidth;
    trigger_counter_bitwidth = ceil(log2(trigger_counter_max));
    sc_noc_counter_bitwidth = ceil(log2(sc_noc_counter_max));
    uart_baud_counter_bitwidth = ceil(log2(uart_baud_counter_max));
    
    % package content
    fprintf(f, '-------------------------------------------------------------------------------------------- \n');
    fprintf(f, '-- Author: Simon Dorrer \n');
    fprintf(f, '-- Last Modified: 11.10.2024 \n');
    fprintf(f, '-- Description: TBS SimVals and Package Constants created by Matlab. \n');
    fprintf(f, '-------------------------------------------------------------------------------------------- \n\n');

    fprintf(f, 'library ieee; \n');
    fprintf(f, 'use ieee.std_logic_1164.all; \n');
    fprintf(f, 'use ieee.numeric_std.all; \n');
    fprintf(f, 'use ieee.math_real.all; \n\n');
    
    fprintf(f, 'package %sSimVals is \n', package_prefix);
    fprintf(f, '  -- MAIN CONSTANTS \n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant CLK_FREQ : natural := %u; \n', f_clk);
    fprintf(f, '  constant MAIN_COUNTER_BITWIDTH : natural := %u; \n', main_counter_bitwidth);
    fprintf(f, '  constant MAIN_COUNTER_MAX : natural := %u; \n', main_counter_max);
    fprintf(f, '  constant DEBOUNCER_BITWIDTH : natural := %u; \n', debounce_counter_bitwidth);
    fprintf(f, '  constant DEBOUNCER_MAX : natural := %u; \n', debounce_counter_max);
    fprintf(f, '  -- ===================================================== \n\n');
    
    fprintf(f, '  -- COMPARATOR INPUT CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant N_FF : natural := %u; \n', n_ff);
    fprintf(f, '  constant N_CHANNELS : natural := %u; \n', n_channels);
    fprintf(f, '  -- ===================================================== \n\n');
    
    fprintf(f, '  -- TBS CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant MAX_CLIPPING_VALUE : natural := %u; \n', max_clipping_value);
    fprintf(f, '  constant MIN_CLIPPING_VALUE : natural := %u; \n', min_clipping_value);
    fprintf(f, '  -- ===================================================== \n\n');

    fprintf(f, '  -- ATBS CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant D_MAX_LIM : natural := %u; \n', d_max_lim);
    fprintf(f, '  constant D_MIN_LIM : natural := %u; \n', d_min_lim);
    fprintf(f, '  constant WEYLSD_BITS : natural := natural(ceil(log2(real(2 * (D_MAX_LIM + 1))))); \n');
    fprintf(f, '  constant DELTA_STEPS_BITWIDTH : natural := %u; \n', delta_steps_bitwidth);
    fprintf(f, '  -- ===================================================== \n\n');

    fprintf(f, '  -- TIME MEASUREMENT CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant TIME_COUNTER_BITWIDTH : natural := %u; \n', time_counter_bitwidth);
    fprintf(f, '  constant TIME_COUNTER_MAX : natural := %u; \n', time_counter_max);
    fprintf(f, '  -- ===================================================== \n\n');

    fprintf(f, '  -- DAC CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant DAC_SETTLING_CLKS : natural := %u; \n', dac_settling_clks);
    fprintf(f, '  constant DAC_BITWIDTH : natural := %u; \n', dac_bitwidth);
    fprintf(f, '  -- ===================================================== \n\n');
    
    fprintf(f, '  -- PWM CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant PWM_COUNTER_BITWIDTH : natural := %u; \n', pwm_counter_bitwidth);
    fprintf(f, '  constant PWM_COUNTER_MAX : natural := %u; \n', pwm_counter_max);
    fprintf(f, '  -- ===================================================== \n\n');
    
    fprintf(f, '  -- ANALOG TRIGGER CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant TRIGGER_COUNTER_BITWIDTH : natural := %u;\n', trigger_counter_bitwidth);
    fprintf(f, '  constant TRIGGER_COUNTER_MAX : natural := %u;\n', trigger_counter_max);
    fprintf(f, '  -- ===================================================== \n\n');

    fprintf(f, '  -- SC NOC GENERATOR CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant SC_NOC_COUNTER_BITWIDTH : natural := %u;\n', sc_noc_counter_bitwidth);
    fprintf(f, '  constant SC_NOC_COUNTER_MAX : natural := %u;\n', sc_noc_counter_max);
    fprintf(f, '  -- ===================================================== \n\n');

    fprintf(f, '  -- MEMORY CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant ADDR_BITWIDTH : natural := %u;\n', addr_bitwidth);
    fprintf(f, '  constant DATA_BITWIDTH : natural := %u;\n', data_bitwidth);
    fprintf(f, '  -- ===================================================== \n\n');

    fprintf(f, '  -- UART CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant UART_DATA_LENGTH : natural := %u;\n', uart_data_length);
    fprintf(f, '  constant UART_BAUD_COUNTER_MAX : natural := %u;\n', uart_baud_counter_max);
    fprintf(f, '  constant UART_BAUD_COUNTER_BITWIDTH : natural := %u;\n', uart_baud_counter_bitwidth);
    fprintf(f, '  -- ===================================================== \n\n');
    
    fprintf(f, '  -- ETHERNET CONSTANTS\n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant N_PAYLOAD_BYTES : natural := %u; \n', ethernet_payload);
    fprintf(f, '  -- ===================================================== \n');

    fprintf(f, 'end package %sSimVals;', package_prefix);

    fclose(f);
end