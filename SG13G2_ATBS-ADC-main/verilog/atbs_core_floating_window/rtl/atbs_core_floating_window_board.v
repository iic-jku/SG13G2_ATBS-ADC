module priority_encoder_3_3
  (input  clock_i,
   input  reset_i,
   input  [2:0] code_i,
   output [2:0] bin_o);
  wire [2:0] bin;
  wire n2960_o;
  wire [2:0] n2963_o;
  wire n2965_o;
  wire [2:0] n2967_o;
  wire n2968_o;
  wire [2:0] n2970_o;
  assign bin_o = bin; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:33:8  */
  assign bin = n2970_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:16  */
  assign n2960_o = code_i[0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:7  */
  assign n2963_o = n2960_o ? 3'b001 : 3'b000;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:16  */
  assign n2965_o = code_i[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:7  */
  assign n2967_o = n2965_o ? 3'b010 : n2963_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:16  */
  assign n2968_o = code_i[2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:7  */
  assign n2970_o = n2968_o ? 3'b011 : n2967_o;
endmodule

module spike_2_thermocode_6
  (input  [1:0] spike_i,
   input  [5:0] thermo_i,
   output [5:0] thermo_o);
  wire plus;
  wire minus;
  wire [5:0] thermo;
  wire n2925_o;
  wire n2926_o;
  wire n2929_o;
  wire n2930_o;
  wire n2931_o;
  wire n2932_o;
  wire n2933_o;
  wire n2934_o;
  wire n2935_o;
  wire n2936_o;
  wire n2937_o;
  wire n2938_o;
  wire n2939_o;
  wire n2940_o;
  wire n2941_o;
  wire n2942_o;
  wire n2943_o;
  wire n2944_o;
  wire n2945_o;
  wire n2946_o;
  wire n2947_o;
  wire n2948_o;
  wire n2949_o;
  wire n2950_o;
  wire n2951_o;
  wire n2952_o;
  wire n2953_o;
  wire n2954_o;
  wire [5:0] n2955_o;
  wire [5:0] n2956_o;
  assign thermo_o = thermo; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:30:8  */
  assign plus = n2926_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:31:8  */
  assign minus = n2925_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:32:8  */
  assign thermo = n2956_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:37:19  */
  assign n2925_o = spike_i[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:38:18  */
  assign n2926_o = spike_i[0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:43:16  */
  assign n2929_o = spike_i == 2'b00;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:48:37  */
  assign n2930_o = thermo_i[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:48:41  */
  assign n2931_o = n2930_o & minus;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:48:25  */
  assign n2932_o = plus | n2931_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n2933_o = thermo_i[0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n2934_o = n2933_o & plus;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n2935_o = thermo_i[2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n2936_o = n2935_o & minus;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n2937_o = n2934_o | n2936_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n2938_o = thermo_i[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n2939_o = n2938_o & plus;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n2940_o = thermo_i[3]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n2941_o = n2940_o & minus;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n2942_o = n2939_o | n2941_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n2943_o = thermo_i[2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n2944_o = n2943_o & plus;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n2945_o = thermo_i[4]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n2946_o = n2945_o & minus;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n2947_o = n2944_o | n2946_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n2948_o = thermo_i[3]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n2949_o = n2948_o & plus;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n2950_o = thermo_i[5]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n2951_o = n2950_o & minus;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n2952_o = n2949_o | n2951_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:57:40  */
  assign n2953_o = thermo_i[4]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:57:56  */
  assign n2954_o = n2953_o & plus;
  assign n2955_o = {n2954_o, n2952_o, n2947_o, n2942_o, n2937_o, n2932_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:43:5  */
  assign n2956_o = n2929_o ? thermo_i : n2955_o;
endmodule

module uart_rx_9_8
  (input  clock_i,
   input  reset_i,
   input  [8:0] baudrate_adj_i,
   input  rx_i,
   output [7:0] data_o,
   output data_valid_strb_o);
  wire [2:0] receive_counter_value;
  wire [2:0] next_receive_counter_value;
  wire [8:0] baud_counter_value;
  wire [8:0] next_baud_counter_value;
  wire [7:0] received_data;
  wire [7:0] next_received_data;
  wire data_valid_strb;
  wire [1:0] rx_state;
  wire [1:0] next_rx_state;
  wire next_strobe;
  wire n2819_o;
  wire n2820_o;
  wire [2:0] n2822_o;
  wire [2:0] n2823_o;
  wire [2:0] n2825_o;
  wire n2828_o;
  wire [8:0] n2830_o;
  wire [8:0] n2832_o;
  wire n2834_o;
  wire [8:0] n2836_o;
  wire n2839_o;
  wire [1:0] n2841_o;
  wire n2843_o;
  wire n2844_o;
  wire [1:0] n2846_o;
  wire n2848_o;
  wire [8:0] n2850_o;
  wire n2851_o;
  wire [7:0] n2855_o;
  wire n2856_o;
  wire n2858_o;
  wire n2859_o;
  wire [1:0] n2861_o;
  wire n2863_o;
  wire [8:0] n2865_o;
  wire n2866_o;
  wire [1:0] n2868_o;
  wire n2871_o;
  wire n2873_o;
  wire [3:0] n2874_o;
  reg [7:0] n2876_o;
  reg [1:0] n2877_o;
  reg n2880_o;
  reg [2:0] n2883_q;
  reg [8:0] n2884_q;
  reg [7:0] n2885_q;
  reg n2886_q;
  reg [1:0] n2887_q;
  wire n2889_o;
  wire n2890_o;
  wire n2891_o;
  wire n2892_o;
  wire n2893_o;
  wire n2894_o;
  wire n2895_o;
  wire n2896_o;
  wire n2897_o;
  wire n2898_o;
  wire n2899_o;
  wire n2900_o;
  wire n2901_o;
  wire n2902_o;
  wire n2903_o;
  wire n2904_o;
  wire n2905_o;
  wire n2906_o;
  wire n2907_o;
  wire n2908_o;
  wire n2909_o;
  wire n2910_o;
  wire n2911_o;
  wire n2912_o;
  wire n2913_o;
  wire n2914_o;
  wire n2915_o;
  wire n2916_o;
  wire n2917_o;
  wire n2918_o;
  wire n2919_o;
  wire n2920_o;
  wire n2921_o;
  wire n2922_o;
  wire [7:0] n2923_o;
  assign data_o = received_data; //(module output)
  assign data_valid_strb_o = data_valid_strb; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:38:8  */
  assign receive_counter_value = n2883_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:39:8  */
  assign next_receive_counter_value = n2825_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:42:8  */
  assign baud_counter_value = n2884_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:43:8  */
  assign next_baud_counter_value = n2836_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:46:8  */
  assign received_data = n2885_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:47:8  */
  assign next_received_data = n2876_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:48:8  */
  assign data_valid_strb = n2886_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:51:8  */
  assign rx_state = n2887_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:52:8  */
  assign next_rx_state = n2877_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:54:8  */
  assign next_strobe = n2880_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:81:17  */
  assign n2819_o = rx_state == 2'b10;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:82:29  */
  assign n2820_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:83:61  */
  assign n2822_o = receive_counter_value + 3'b001;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:82:7  */
  assign n2823_o = n2820_o ? n2822_o : receive_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:81:5  */
  assign n2825_o = n2819_o ? n2823_o : 3'b000;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:96:27  */
  assign n2828_o = $unsigned(baud_counter_value) < $unsigned(baudrate_adj_i);
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:97:53  */
  assign n2830_o = baud_counter_value + 9'b000000001;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:96:5  */
  assign n2832_o = n2828_o ? n2830_o : 9'b000000000;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:102:17  */
  assign n2834_o = rx_state == 2'b00;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:102:5  */
  assign n2836_o = n2834_o ? 9'b000000000 : n2832_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:118:17  */
  assign n2839_o = ~rx_i;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:118:9  */
  assign n2841_o = n2839_o ? 2'b01 : rx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:116:7  */
  assign n2843_o = rx_state == 2'b00;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:123:31  */
  assign n2844_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:123:9  */
  assign n2846_o = n2844_o ? 2'b10 : rx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:122:7  */
  assign n2848_o = rx_state == 2'b01;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:128:33  */
  assign n2850_o = baudrate_adj_i >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:128:31  */
  assign n2851_o = baud_counter_value == n2850_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:128:9  */
  assign n2855_o = n2851_o ? n2923_o : received_data;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:131:31  */
  assign n2856_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:131:74  */
  assign n2858_o = receive_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:131:48  */
  assign n2859_o = n2858_o & n2856_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:131:9  */
  assign n2861_o = n2859_o ? 2'b11 : rx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:127:7  */
  assign n2863_o = rx_state == 2'b10;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:136:33  */
  assign n2865_o = baudrate_adj_i >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:136:31  */
  assign n2866_o = baud_counter_value == n2865_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:136:9  */
  assign n2868_o = n2866_o ? 2'b00 : rx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:136:9  */
  assign n2871_o = n2866_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:135:7  */
  assign n2873_o = rx_state == 2'b11;
  assign n2874_o = {n2873_o, n2863_o, n2848_o, n2843_o};
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:115:5  */
  always @*
    case (n2874_o)
      4'b1000: n2876_o = received_data;
      4'b0100: n2876_o = n2855_o;
      4'b0010: n2876_o = received_data;
      4'b0001: n2876_o = received_data;
      default: n2876_o = 8'b00000000;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:115:5  */
  always @*
    case (n2874_o)
      4'b1000: n2877_o = n2868_o;
      4'b0100: n2877_o = n2861_o;
      4'b0010: n2877_o = n2846_o;
      4'b0001: n2877_o = n2841_o;
      default: n2877_o = rx_state;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:115:5  */
  always @*
    case (n2874_o)
      4'b1000: n2880_o = n2871_o;
      4'b0100: n2880_o = 1'b0;
      4'b0010: n2880_o = 1'b0;
      4'b0001: n2880_o = 1'b0;
      default: n2880_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2883_q <= 3'b000;
    else
      n2883_q <= next_receive_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2884_q <= 9'b000000000;
    else
      n2884_q <= next_baud_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2885_q <= 8'b00000000;
    else
      n2885_q <= next_received_data;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2886_q <= 1'b0;
    else
      n2886_q <= next_strobe;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2887_q <= 2'b00;
    else
      n2887_q <= next_rx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2889_o = receive_counter_value[2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2890_o = ~n2889_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2891_o = receive_counter_value[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2892_o = ~n2891_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2893_o = n2890_o & n2892_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2894_o = n2890_o & n2891_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2895_o = n2889_o & n2892_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2896_o = n2889_o & n2891_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2897_o = receive_counter_value[0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2898_o = ~n2897_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2899_o = n2893_o & n2898_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2900_o = n2893_o & n2897_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2901_o = n2894_o & n2898_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2902_o = n2894_o & n2897_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2903_o = n2895_o & n2898_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2904_o = n2895_o & n2897_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2905_o = n2896_o & n2898_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2906_o = n2896_o & n2897_o;
  assign n2907_o = received_data[0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2908_o = n2899_o ? rx_i : n2907_o;
  assign n2909_o = received_data[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2910_o = n2900_o ? rx_i : n2909_o;
  assign n2911_o = received_data[2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2912_o = n2901_o ? rx_i : n2911_o;
  assign n2913_o = received_data[3]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2914_o = n2902_o ? rx_i : n2913_o;
  assign n2915_o = received_data[4]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2916_o = n2903_o ? rx_i : n2915_o;
  assign n2917_o = received_data[5]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2918_o = n2904_o ? rx_i : n2917_o;
  assign n2919_o = received_data[6]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2920_o = n2905_o ? rx_i : n2919_o;
  assign n2921_o = received_data[7]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n2922_o = n2906_o ? rx_i : n2921_o;
  assign n2923_o = {n2922_o, n2920_o, n2918_o, n2916_o, n2914_o, n2912_o, n2910_o, n2908_o};
endmodule

module uart_tx_9_8
  (input  clock_i,
   input  reset_i,
   input  [8:0] baudrate_adj_i,
   input  tx_start_strb_i,
   input  [7:0] data_i,
   output tx_strb_o,
   output tx_o);
  wire tx;
  wire tx_strb;
  wire next_tx_strb;
  wire [2:0] transmit_counter_value;
  wire [2:0] next_transmit_counter_value;
  wire [8:0] baud_counter_value;
  wire [8:0] next_baud_counter_value;
  wire [2:0] tx_state;
  wire [2:0] next_tx_state;
  wire n2699_o;
  wire n2700_o;
  wire [2:0] n2702_o;
  wire [2:0] n2703_o;
  wire [2:0] n2705_o;
  wire n2708_o;
  wire [8:0] n2710_o;
  wire [8:0] n2712_o;
  wire n2715_o;
  wire [2:0] n2718_o;
  wire [2:0] n2719_o;
  wire n2721_o;
  wire n2722_o;
  wire n2725_o;
  wire [2:0] n2728_o;
  wire n2730_o;
  wire n2731_o;
  wire [2:0] n2733_o;
  wire n2735_o;
  wire n2737_o;
  wire n2742_o;
  wire n2743_o;
  wire n2744_o;
  wire [2:0] n2746_o;
  wire n2748_o;
  wire n2749_o;
  wire n2751_o;
  wire n2752_o;
  wire [2:0] n2755_o;
  wire [2:0] n2756_o;
  wire n2758_o;
  wire [4:0] n2759_o;
  reg n2764_o;
  reg [2:0] n2766_o;
  wire n2770_o;
  wire n2772_o;
  wire n2774_o;
  wire n2775_o;
  wire n2776_o;
  wire n2777_o;
  reg n2779_q;
  reg [2:0] n2780_q;
  reg [8:0] n2781_q;
  reg [2:0] n2782_q;
  wire n2783_o;
  wire n2784_o;
  wire n2785_o;
  wire n2786_o;
  wire n2787_o;
  wire n2788_o;
  wire n2789_o;
  wire n2790_o;
  wire [1:0] n2791_o;
  reg n2792_o;
  wire [1:0] n2793_o;
  reg n2794_o;
  wire n2795_o;
  wire n2796_o;
  assign tx_strb_o = tx_strb; //(module output)
  assign tx_o = tx; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:38:8  */
  assign tx = n2764_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:39:8  */
  assign tx_strb = n2779_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:40:8  */
  assign next_tx_strb = n2777_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:43:8  */
  assign transmit_counter_value = n2780_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:44:8  */
  assign next_transmit_counter_value = n2705_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:47:8  */
  assign baud_counter_value = n2781_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:48:8  */
  assign next_baud_counter_value = n2712_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:51:8  */
  assign tx_state = n2782_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:52:8  */
  assign next_tx_state = n2766_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:78:29  */
  assign n2699_o = tx_state == 3'b011;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:79:47  */
  assign n2700_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:80:87  */
  assign n2702_o = transmit_counter_value + 3'b001;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:79:25  */
  assign n2703_o = n2700_o ? n2702_o : transmit_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:78:17  */
  assign n2705_o = n2699_o ? n2703_o : 3'b000;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:93:39  */
  assign n2708_o = $unsigned(baud_counter_value) < $unsigned(baudrate_adj_i);
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:94:71  */
  assign n2710_o = baud_counter_value + 9'b000000001;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:93:17  */
  assign n2712_o = n2708_o ? n2710_o : 9'b000000000;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:111:63  */
  assign n2715_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:111:41  */
  assign n2718_o = n2715_o ? 3'b010 : 3'b001;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:110:33  */
  assign n2719_o = tx_start_strb_i ? n2718_o : tx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:108:25  */
  assign n2721_o = tx_state == 3'b000;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:123:55  */
  assign n2722_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:123:33  */
  assign n2725_o = n2722_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:123:33  */
  assign n2728_o = n2722_o ? 3'b010 : tx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:121:25  */
  assign n2730_o = tx_state == 3'b001;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:130:55  */
  assign n2731_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:130:33  */
  assign n2733_o = n2731_o ? 3'b011 : tx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:128:25  */
  assign n2735_o = tx_state == 3'b010;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:135:59  */
  assign n2737_o = $unsigned(transmit_counter_value) <= $unsigned(3'b111);
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:137:67  */
  assign n2742_o = transmit_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:137:113  */
  assign n2743_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:137:90  */
  assign n2744_o = n2743_o & n2742_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:135:33  */
  assign n2746_o = n2749_o ? 3'b100 : tx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:135:33  */
  assign n2748_o = n2737_o ? n2796_o : 1'bX;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:135:33  */
  assign n2749_o = n2744_o & n2737_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:134:25  */
  assign n2751_o = tx_state == 3'b011;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:144:55  */
  assign n2752_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:146:41  */
  assign n2755_o = tx_start_strb_i ? 3'b010 : 3'b000;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:144:33  */
  assign n2756_o = n2752_o ? n2755_o : tx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:142:25  */
  assign n2758_o = tx_state == 3'b100;
  assign n2759_o = {n2758_o, n2751_o, n2735_o, n2730_o, n2721_o};
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:107:17  */
  always @*
    case (n2759_o)
      5'b10000: n2764_o = 1'b1;
      5'b01000: n2764_o = n2748_o;
      5'b00100: n2764_o = 1'b0;
      5'b00010: n2764_o = n2725_o;
      5'b00001: n2764_o = 1'b1;
      default: n2764_o = 1'bX;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:107:17  */
  always @*
    case (n2759_o)
      5'b10000: n2766_o = n2756_o;
      5'b01000: n2766_o = n2746_o;
      5'b00100: n2766_o = n2733_o;
      5'b00010: n2766_o = n2728_o;
      5'b00001: n2766_o = n2719_o;
      default: n2766_o = tx_state;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:158:37  */
  assign n2770_o = tx_state == 3'b100;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:158:66  */
  assign n2772_o = next_tx_state == 3'b010;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:158:94  */
  assign n2774_o = next_tx_state == 3'b000;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:158:77  */
  assign n2775_o = n2772_o | n2774_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:158:47  */
  assign n2776_o = n2775_o & n2770_o;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:158:23  */
  assign n2777_o = n2776_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2779_q <= 1'b0;
    else
      n2779_q <= next_tx_strb;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2780_q <= 3'b000;
    else
      n2780_q <= next_transmit_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2781_q <= 9'b000000000;
    else
      n2781_q <= next_baud_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2782_q <= 3'b000;
    else
      n2782_q <= next_tx_state;
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:25:17  */
  assign n2783_o = data_i[0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:24:5  */
  assign n2784_o = data_i[1]; // extract
  assign n2785_o = data_i[2]; // extract
  assign n2786_o = data_i[3]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:136:54  */
  assign n2787_o = data_i[4]; // extract
  assign n2788_o = data_i[5]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:101:9  */
  assign n2789_o = data_i[6]; // extract
  assign n2790_o = data_i[7]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n2791_o = transmit_counter_value[1:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  always @*
    case (n2791_o)
      2'b00: n2792_o = n2783_o;
      2'b01: n2792_o = n2784_o;
      2'b10: n2792_o = n2785_o;
      2'b11: n2792_o = n2786_o;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n2793_o = transmit_counter_value[1:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  always @*
    case (n2793_o)
      2'b00: n2794_o = n2787_o;
      2'b01: n2794_o = n2788_o;
      2'b10: n2794_o = n2789_o;
      2'b11: n2794_o = n2790_o;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n2795_o = transmit_counter_value[2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n2796_o = n2795_o ? n2794_o : n2792_o;
endmodule

module weyls_discrepancy_8_3_6
  (input  clock_i,
   input  reset_i,
   input  [29:0] spikes_i,
   input  spikes_strb_i,
   output [2:0] weylsd_o,
   output weylsd_strb_o);
  wire [5:0] buf_reg;
  wire [5:0] next_buf_reg;
  wire [1:0] sync_weylsd_strb;
  wire next_weylsd_strb;
  wire [95:0] thermocodes;
  wire [95:0] buf_thermocodes;
  wire [5:0] orresult;
  wire [2:0] neg_orresult;
  wire [95:0] temp_orresult;
  wire [2:0] weylsd;
  wire [2:0] next_weylsd;
  wire [2:0] weylsd_neg;
  wire [2:0] weylsd_pos;
  wire n2468_o;
  wire [1:0] n2470_o;
  wire [5:0] gen_spike_2_tc_n1_spike_2_tc_thermo_o;
  wire [1:0] n2481_o;
  wire [5:0] n2482_o;
  wire [5:0] gen_spike_2_tc_n2_spike_2_tc_thermo_o;
  wire [1:0] n2484_o;
  wire [5:0] n2485_o;
  wire [5:0] gen_spike_2_tc_n3_spike_2_tc_thermo_o;
  wire [1:0] n2487_o;
  wire [5:0] n2488_o;
  wire [5:0] gen_spike_2_tc_n4_spike_2_tc_thermo_o;
  wire [1:0] n2490_o;
  wire [5:0] n2491_o;
  wire [5:0] gen_spike_2_tc_n5_spike_2_tc_thermo_o;
  wire [1:0] n2493_o;
  wire [5:0] n2494_o;
  wire [5:0] gen_spike_2_tc_n6_spike_2_tc_thermo_o;
  wire [1:0] n2496_o;
  wire [5:0] n2497_o;
  wire [5:0] gen_spike_2_tc_n7_spike_2_tc_thermo_o;
  wire [1:0] n2499_o;
  wire [5:0] n2500_o;
  wire [5:0] gen_spike_2_tc_n8_spike_2_tc_thermo_o;
  wire [1:0] n2502_o;
  wire [5:0] n2503_o;
  wire [5:0] gen_spike_2_tc_n9_spike_2_tc_thermo_o;
  wire [1:0] n2505_o;
  wire [5:0] n2506_o;
  wire [5:0] gen_spike_2_tc_n10_spike_2_tc_thermo_o;
  wire [1:0] n2508_o;
  wire [5:0] n2509_o;
  wire [5:0] gen_spike_2_tc_n11_spike_2_tc_thermo_o;
  wire [1:0] n2511_o;
  wire [5:0] n2512_o;
  wire [5:0] gen_spike_2_tc_n12_spike_2_tc_thermo_o;
  wire [1:0] n2514_o;
  wire [5:0] n2515_o;
  wire [5:0] gen_spike_2_tc_n13_spike_2_tc_thermo_o;
  wire [1:0] n2517_o;
  wire [5:0] n2518_o;
  wire [5:0] gen_spike_2_tc_n14_spike_2_tc_thermo_o;
  wire [1:0] n2520_o;
  wire [5:0] n2521_o;
  wire [5:0] gen_spike_2_tc_n15_spike_2_tc_thermo_o;
  wire [1:0] n2523_o;
  wire [5:0] n2524_o;
  wire [5:0] n2527_o;
  wire [41:0] n2528_o;
  wire [47:0] n2529_o;
  reg [95:0] eval_orresult_offset_comp;
  wire [2:0] n2533_o;
  wire [2:0] n2534_o;
  wire [2:0] n2535_o;
  wire [89:0] n2536_o;
  wire [95:0] n2537_o;
  wire [5:0] n2538_o;
  wire [2:0] n2539_o;
  wire [2:0] n2540_o;
  wire [2:0] n2541_o;
  wire [5:0] n2542_o;
  wire [83:0] n2543_o;
  wire [95:0] n2544_o;
  wire [5:0] n2545_o;
  wire [5:0] n2546_o;
  wire [2:0] n2547_o;
  wire [2:0] n2548_o;
  wire [2:0] n2549_o;
  wire [5:0] n2550_o;
  wire [77:0] n2551_o;
  wire [95:0] n2552_o;
  wire [5:0] n2553_o;
  wire [5:0] n2554_o;
  wire [2:0] n2555_o;
  wire [2:0] n2556_o;
  wire [2:0] n2557_o;
  wire [5:0] n2558_o;
  wire [71:0] n2559_o;
  wire [95:0] n2560_o;
  wire [5:0] n2561_o;
  wire [5:0] n2562_o;
  wire [2:0] n2563_o;
  wire [2:0] n2564_o;
  wire [2:0] n2565_o;
  wire [5:0] n2566_o;
  wire [65:0] n2567_o;
  wire [95:0] n2568_o;
  wire [5:0] n2569_o;
  wire [5:0] n2570_o;
  wire [2:0] n2571_o;
  wire [2:0] n2572_o;
  wire [2:0] n2573_o;
  wire [5:0] n2574_o;
  wire [59:0] n2575_o;
  wire [95:0] n2576_o;
  wire [5:0] n2577_o;
  wire [5:0] n2578_o;
  wire [2:0] n2579_o;
  wire [2:0] n2580_o;
  wire [2:0] n2581_o;
  wire [5:0] n2582_o;
  wire [53:0] n2583_o;
  wire [95:0] n2584_o;
  wire [5:0] n2585_o;
  wire [5:0] n2586_o;
  wire [2:0] n2587_o;
  wire [2:0] n2588_o;
  wire [2:0] n2589_o;
  wire [5:0] n2590_o;
  wire [47:0] n2591_o;
  wire [95:0] n2592_o;
  wire [5:0] n2593_o;
  wire [5:0] n2594_o;
  wire [2:0] n2595_o;
  wire [2:0] n2596_o;
  wire [2:0] n2597_o;
  wire [5:0] n2598_o;
  wire [41:0] n2599_o;
  wire [95:0] n2600_o;
  wire [5:0] n2601_o;
  wire [5:0] n2602_o;
  wire [2:0] n2603_o;
  wire [2:0] n2604_o;
  wire [2:0] n2605_o;
  wire [5:0] n2606_o;
  wire [35:0] n2607_o;
  wire [95:0] n2608_o;
  wire [5:0] n2609_o;
  wire [5:0] n2610_o;
  wire [2:0] n2611_o;
  wire [2:0] n2612_o;
  wire [2:0] n2613_o;
  wire [5:0] n2614_o;
  wire [29:0] n2615_o;
  wire [95:0] n2616_o;
  wire [5:0] n2617_o;
  wire [5:0] n2618_o;
  wire [2:0] n2619_o;
  wire [2:0] n2620_o;
  wire [2:0] n2621_o;
  wire [5:0] n2622_o;
  wire [23:0] n2623_o;
  wire [95:0] n2624_o;
  wire [5:0] n2625_o;
  wire [5:0] n2626_o;
  wire [2:0] n2627_o;
  wire [2:0] n2628_o;
  wire [2:0] n2629_o;
  wire [5:0] n2630_o;
  wire [17:0] n2631_o;
  wire [95:0] n2632_o;
  wire [5:0] n2633_o;
  wire [5:0] n2634_o;
  wire [2:0] n2635_o;
  wire [2:0] n2636_o;
  wire [2:0] n2637_o;
  wire [5:0] n2638_o;
  wire [11:0] n2639_o;
  wire [95:0] n2640_o;
  wire [5:0] n2641_o;
  wire [5:0] n2642_o;
  wire [2:0] n2643_o;
  wire [2:0] n2644_o;
  wire [2:0] n2645_o;
  wire [5:0] n2646_o;
  wire [5:0] n2647_o;
  wire [95:0] n2648_o;
  wire [5:0] n2649_o;
  wire [5:0] n2650_o;
  wire [2:0] n2651_o;
  wire [2:0] n2652_o;
  wire [2:0] n2653_o;
  wire [5:0] n2654_o;
  wire [95:0] n2655_o;
  wire [5:0] n2656_o;
  wire [5:0] n2657_o;
  wire [5:0] n2658_o;
  wire [95:0] n2660_o;
  wire n2662_o;
  wire n2663_o;
  wire n2664_o;
  wire [2:0] priority_encoder_0_bin_o;
  wire [2:0] priority_encoder_1_bin_o;
  wire [2:0] n2667_o;
  wire [2:0] n2669_o;
  wire n2670_o;
  reg [5:0] n2671_q;
  reg [1:0] n2672_q;
  wire [95:0] n2673_o;
  wire [95:0] n2674_o;
  wire [2:0] n2675_o;
  wire [95:0] n2676_o;
  reg [2:0] n2677_q;
  assign weylsd_o = weylsd; //(module output)
  assign weylsd_strb_o = n2670_o; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:60:8  */
  assign buf_reg = n2671_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:61:8  */
  assign next_buf_reg = n2527_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:63:8  */
  assign sync_weylsd_strb = n2672_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:64:8  */
  assign next_weylsd_strb = spikes_strb_i; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:66:8  */
  assign thermocodes = n2673_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:67:8  */
  assign buf_thermocodes = n2674_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:69:8  */
  assign orresult = n2658_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:70:8  */
  assign neg_orresult = n2675_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:71:8  */
  assign temp_orresult = n2676_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:73:8  */
  assign weylsd = n2677_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:74:8  */
  assign next_weylsd = n2669_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:75:8  */
  assign weylsd_neg = priority_encoder_0_bin_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:76:8  */
  assign weylsd_pos = priority_encoder_1_bin_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:97:48  */
  assign n2468_o = sync_weylsd_strb[0]; // extract
  assign n2470_o = {n2468_o, next_weylsd_strb};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n1_spike_2_tc (
    .spike_i(n2481_o),
    .thermo_i(n2482_o),
    .thermo_o(gen_spike_2_tc_n1_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2481_o = spikes_i[29:28]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2482_o = thermocodes[5:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n2_spike_2_tc (
    .spike_i(n2484_o),
    .thermo_i(n2485_o),
    .thermo_o(gen_spike_2_tc_n2_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2484_o = spikes_i[27:26]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2485_o = thermocodes[11:6]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n3_spike_2_tc (
    .spike_i(n2487_o),
    .thermo_i(n2488_o),
    .thermo_o(gen_spike_2_tc_n3_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2487_o = spikes_i[25:24]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2488_o = thermocodes[17:12]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n4_spike_2_tc (
    .spike_i(n2490_o),
    .thermo_i(n2491_o),
    .thermo_o(gen_spike_2_tc_n4_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2490_o = spikes_i[23:22]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2491_o = thermocodes[23:18]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n5_spike_2_tc (
    .spike_i(n2493_o),
    .thermo_i(n2494_o),
    .thermo_o(gen_spike_2_tc_n5_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2493_o = spikes_i[21:20]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2494_o = thermocodes[29:24]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n6_spike_2_tc (
    .spike_i(n2496_o),
    .thermo_i(n2497_o),
    .thermo_o(gen_spike_2_tc_n6_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2496_o = spikes_i[19:18]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2497_o = thermocodes[35:30]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n7_spike_2_tc (
    .spike_i(n2499_o),
    .thermo_i(n2500_o),
    .thermo_o(gen_spike_2_tc_n7_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2499_o = spikes_i[17:16]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2500_o = thermocodes[41:36]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n8_spike_2_tc (
    .spike_i(n2502_o),
    .thermo_i(n2503_o),
    .thermo_o(gen_spike_2_tc_n8_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2502_o = spikes_i[15:14]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2503_o = thermocodes[47:42]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n9_spike_2_tc (
    .spike_i(n2505_o),
    .thermo_i(n2506_o),
    .thermo_o(gen_spike_2_tc_n9_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2505_o = spikes_i[13:12]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2506_o = thermocodes[53:48]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n10_spike_2_tc (
    .spike_i(n2508_o),
    .thermo_i(n2509_o),
    .thermo_o(gen_spike_2_tc_n10_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2508_o = spikes_i[11:10]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2509_o = thermocodes[59:54]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n11_spike_2_tc (
    .spike_i(n2511_o),
    .thermo_i(n2512_o),
    .thermo_o(gen_spike_2_tc_n11_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2511_o = spikes_i[9:8]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2512_o = thermocodes[65:60]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n12_spike_2_tc (
    .spike_i(n2514_o),
    .thermo_i(n2515_o),
    .thermo_o(gen_spike_2_tc_n12_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2514_o = spikes_i[7:6]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2515_o = thermocodes[71:66]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n13_spike_2_tc (
    .spike_i(n2517_o),
    .thermo_i(n2518_o),
    .thermo_o(gen_spike_2_tc_n13_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2517_o = spikes_i[5:4]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2518_o = thermocodes[77:72]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n14_spike_2_tc (
    .spike_i(n2520_o),
    .thermo_i(n2521_o),
    .thermo_o(gen_spike_2_tc_n14_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2520_o = spikes_i[3:2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2521_o = thermocodes[83:78]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n15_spike_2_tc (
    .spike_i(n2523_o),
    .thermo_i(n2524_o),
    .thermo_o(gen_spike_2_tc_n15_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n2523_o = spikes_i[1:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n2524_o = thermocodes[89:84]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:126:41  */
  assign n2527_o = buf_thermocodes[53:48]; // extract
  assign n2528_o = buf_thermocodes[95:54]; // extract
  assign n2529_o = buf_thermocodes[47:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:136:12  */
  always @*
    eval_orresult_offset_comp = n2660_o; // (isignal)
  initial
    eval_orresult_offset_comp = 96'bX;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:138:71  */
  assign n2533_o = thermocodes[2:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:138:53  */
  assign n2534_o = ~n2533_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:139:77  */
  assign n2535_o = thermocodes[5:3]; // extract
  assign n2536_o = eval_orresult_offset_comp[95:6]; // extract
  assign n2537_o = {n2536_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:140:36  */
  assign n2538_o = n2537_o[5:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2539_o = thermocodes[8:6]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2540_o = ~n2539_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2541_o = thermocodes[11:9]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2542_o = temp_orresult[5:0]; // extract
  assign n2543_o = eval_orresult_offset_comp[95:12]; // extract
  assign n2544_o = {n2543_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2545_o = n2544_o[11:6]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2546_o = n2542_o | n2545_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2547_o = thermocodes[14:12]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2548_o = ~n2547_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2549_o = thermocodes[17:15]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2550_o = temp_orresult[11:6]; // extract
  assign n2551_o = eval_orresult_offset_comp[95:18]; // extract
  assign n2552_o = {n2551_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2553_o = n2552_o[17:12]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2554_o = n2550_o | n2553_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2555_o = thermocodes[20:18]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2556_o = ~n2555_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2557_o = thermocodes[23:21]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2558_o = temp_orresult[17:12]; // extract
  assign n2559_o = eval_orresult_offset_comp[95:24]; // extract
  assign n2560_o = {n2559_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2561_o = n2560_o[23:18]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2562_o = n2558_o | n2561_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2563_o = thermocodes[26:24]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2564_o = ~n2563_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2565_o = thermocodes[29:27]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2566_o = temp_orresult[23:18]; // extract
  assign n2567_o = eval_orresult_offset_comp[95:30]; // extract
  assign n2568_o = {n2567_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2569_o = n2568_o[29:24]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2570_o = n2566_o | n2569_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2571_o = thermocodes[32:30]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2572_o = ~n2571_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2573_o = thermocodes[35:33]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2574_o = temp_orresult[29:24]; // extract
  assign n2575_o = eval_orresult_offset_comp[95:36]; // extract
  assign n2576_o = {n2575_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2577_o = n2576_o[35:30]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2578_o = n2574_o | n2577_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2579_o = thermocodes[38:36]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2580_o = ~n2579_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2581_o = thermocodes[41:39]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2582_o = temp_orresult[35:30]; // extract
  assign n2583_o = eval_orresult_offset_comp[95:42]; // extract
  assign n2584_o = {n2583_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2585_o = n2584_o[41:36]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2586_o = n2582_o | n2585_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2587_o = thermocodes[44:42]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2588_o = ~n2587_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2589_o = thermocodes[47:45]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2590_o = temp_orresult[41:36]; // extract
  assign n2591_o = eval_orresult_offset_comp[95:48]; // extract
  assign n2592_o = {n2591_o, n2589_o, n2588_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2593_o = n2592_o[47:42]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2594_o = n2590_o | n2593_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2595_o = thermocodes[50:48]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2596_o = ~n2595_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2597_o = thermocodes[53:51]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2598_o = temp_orresult[47:42]; // extract
  assign n2599_o = eval_orresult_offset_comp[95:54]; // extract
  assign n2600_o = {n2599_o, n2597_o, n2596_o, n2589_o, n2588_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2601_o = n2600_o[53:48]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2602_o = n2598_o | n2601_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2603_o = thermocodes[56:54]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2604_o = ~n2603_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2605_o = thermocodes[59:57]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2606_o = temp_orresult[53:48]; // extract
  assign n2607_o = eval_orresult_offset_comp[95:60]; // extract
  assign n2608_o = {n2607_o, n2605_o, n2604_o, n2597_o, n2596_o, n2589_o, n2588_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2609_o = n2608_o[59:54]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2610_o = n2606_o | n2609_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2611_o = thermocodes[62:60]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2612_o = ~n2611_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2613_o = thermocodes[65:63]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2614_o = temp_orresult[59:54]; // extract
  assign n2615_o = eval_orresult_offset_comp[95:66]; // extract
  assign n2616_o = {n2615_o, n2613_o, n2612_o, n2605_o, n2604_o, n2597_o, n2596_o, n2589_o, n2588_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2617_o = n2616_o[65:60]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2618_o = n2614_o | n2617_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2619_o = thermocodes[68:66]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2620_o = ~n2619_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2621_o = thermocodes[71:69]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2622_o = temp_orresult[65:60]; // extract
  assign n2623_o = eval_orresult_offset_comp[95:72]; // extract
  assign n2624_o = {n2623_o, n2621_o, n2620_o, n2613_o, n2612_o, n2605_o, n2604_o, n2597_o, n2596_o, n2589_o, n2588_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2625_o = n2624_o[71:66]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2626_o = n2622_o | n2625_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2627_o = thermocodes[74:72]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2628_o = ~n2627_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2629_o = thermocodes[77:75]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2630_o = temp_orresult[71:66]; // extract
  assign n2631_o = eval_orresult_offset_comp[95:78]; // extract
  assign n2632_o = {n2631_o, n2629_o, n2628_o, n2621_o, n2620_o, n2613_o, n2612_o, n2605_o, n2604_o, n2597_o, n2596_o, n2589_o, n2588_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2633_o = n2632_o[77:72]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2634_o = n2630_o | n2633_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2635_o = thermocodes[80:78]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2636_o = ~n2635_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2637_o = thermocodes[83:81]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2638_o = temp_orresult[77:72]; // extract
  assign n2639_o = eval_orresult_offset_comp[95:84]; // extract
  assign n2640_o = {n2639_o, n2637_o, n2636_o, n2629_o, n2628_o, n2621_o, n2620_o, n2613_o, n2612_o, n2605_o, n2604_o, n2597_o, n2596_o, n2589_o, n2588_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2641_o = n2640_o[83:78]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2642_o = n2638_o | n2641_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2643_o = thermocodes[86:84]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2644_o = ~n2643_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2645_o = thermocodes[89:87]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2646_o = temp_orresult[83:78]; // extract
  assign n2647_o = eval_orresult_offset_comp[95:90]; // extract
  assign n2648_o = {n2647_o, n2645_o, n2644_o, n2637_o, n2636_o, n2629_o, n2628_o, n2621_o, n2620_o, n2613_o, n2612_o, n2605_o, n2604_o, n2597_o, n2596_o, n2589_o, n2588_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2649_o = n2648_o[89:84]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2650_o = n2646_o | n2649_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n2651_o = thermocodes[92:90]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n2652_o = ~n2651_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n2653_o = thermocodes[95:93]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n2654_o = temp_orresult[89:84]; // extract
  assign n2655_o = {n2653_o, n2652_o, n2645_o, n2644_o, n2637_o, n2636_o, n2629_o, n2628_o, n2621_o, n2620_o, n2613_o, n2612_o, n2605_o, n2604_o, n2597_o, n2596_o, n2589_o, n2588_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n2656_o = n2655_o[95:90]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n2657_o = n2654_o | n2656_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:151:30  */
  assign n2658_o = temp_orresult[95:90]; // extract
  assign n2660_o = {n2653_o, n2652_o, n2645_o, n2644_o, n2637_o, n2636_o, n2629_o, n2628_o, n2621_o, n2620_o, n2613_o, n2612_o, n2605_o, n2604_o, n2597_o, n2596_o, n2589_o, n2588_o, n2581_o, n2580_o, n2573_o, n2572_o, n2565_o, n2564_o, n2557_o, n2556_o, n2549_o, n2548_o, n2541_o, n2540_o, n2535_o, n2534_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:160:54  */
  assign n2662_o = orresult[0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:160:54  */
  assign n2663_o = orresult[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:160:54  */
  assign n2664_o = orresult[2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:164:3  */
  priority_encoder_3_3 priority_encoder_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .code_i(neg_orresult),
    .bin_o(priority_encoder_0_bin_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:179:3  */
  priority_encoder_3_3 priority_encoder_1 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .code_i(n2667_o),
    .bin_o(priority_encoder_1_bin_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:187:24  */
  assign n2667_o = orresult[5:3]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:194:36  */
  assign n2669_o = weylsd_neg + weylsd_pos;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:199:36  */
  assign n2670_o = sync_weylsd_strb[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:91:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2671_q <= 6'b000000;
    else
      n2671_q <= next_buf_reg;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:91:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2672_q <= 2'b00;
    else
      n2672_q <= n2470_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:87:5  */
  assign n2673_o = {n2528_o, buf_reg, n2529_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:87:5  */
  assign n2674_o = {gen_spike_2_tc_n15_spike_2_tc_thermo_o, gen_spike_2_tc_n14_spike_2_tc_thermo_o, gen_spike_2_tc_n13_spike_2_tc_thermo_o, gen_spike_2_tc_n12_spike_2_tc_thermo_o, gen_spike_2_tc_n11_spike_2_tc_thermo_o, gen_spike_2_tc_n10_spike_2_tc_thermo_o, gen_spike_2_tc_n9_spike_2_tc_thermo_o, gen_spike_2_tc_n8_spike_2_tc_thermo_o, gen_spike_2_tc_n7_spike_2_tc_thermo_o, gen_spike_2_tc_n6_spike_2_tc_thermo_o, gen_spike_2_tc_n5_spike_2_tc_thermo_o, gen_spike_2_tc_n4_spike_2_tc_thermo_o, gen_spike_2_tc_n3_spike_2_tc_thermo_o, gen_spike_2_tc_n2_spike_2_tc_thermo_o, gen_spike_2_tc_n1_spike_2_tc_thermo_o, 6'b000111};
  assign n2675_o = {n2662_o, n2663_o, n2664_o};
  assign n2676_o = {n2657_o, n2650_o, n2642_o, n2634_o, n2626_o, n2618_o, n2610_o, n2602_o, n2594_o, n2586_o, n2578_o, n2570_o, n2562_o, n2554_o, n2546_o, n2538_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:91:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2677_q <= 3'b000;
    else
      n2677_q <= next_weylsd;
endmodule

module spike_shift_reg_19_18
  (input  clock_i,
   input  reset_i,
   input  overflow_strb_i,
   input  [17:0] curr_time_i,
   input  spike_i,
   input  spike_strb_i,
   input  [18:0] win_length_i,
   output [29:0] spikes_o,
   output spikes_strb_o);
  wire [269:0] timestamps;
  wire [269:0] next_timestamps;
  wire [29:0] spikes;
  wire [29:0] next_spikes;
  wire [284:0] win_end;
  wire [14:0] overflow_marker;
  wire [14:0] next_overflow_marker;
  wire spikes_strb;
  wire next_spikes_strb;
  wire [14:0] n2069_o;
  wire [1:0] n2070_o;
  wire [17:0] n2071_o;
  wire n2072_o;
  wire [1:0] n2073_o;
  wire [17:0] n2074_o;
  wire n2075_o;
  wire [1:0] n2076_o;
  wire [17:0] n2077_o;
  wire n2078_o;
  wire [1:0] n2079_o;
  wire [17:0] n2080_o;
  wire n2081_o;
  wire [1:0] n2082_o;
  wire [17:0] n2083_o;
  wire n2084_o;
  wire [1:0] n2085_o;
  wire [17:0] n2086_o;
  wire n2087_o;
  wire [1:0] n2088_o;
  wire [17:0] n2089_o;
  wire n2090_o;
  wire [1:0] n2091_o;
  wire [17:0] n2092_o;
  wire n2093_o;
  wire [1:0] n2094_o;
  wire [17:0] n2095_o;
  wire n2096_o;
  wire [1:0] n2097_o;
  wire [17:0] n2098_o;
  wire n2099_o;
  wire [1:0] n2100_o;
  wire [17:0] n2101_o;
  wire n2102_o;
  wire [1:0] n2103_o;
  wire [17:0] n2104_o;
  wire n2105_o;
  wire [1:0] n2106_o;
  wire [17:0] n2107_o;
  wire n2108_o;
  wire [1:0] n2109_o;
  wire [17:0] n2110_o;
  wire n2111_o;
  wire n2112_o;
  wire [18:0] n2114_o;
  wire [18:0] n2115_o;
  wire n2116_o;
  wire [1:0] n2118_o;
  wire [1:0] n2119_o;
  wire [18:0] n2120_o;
  wire [18:0] n2121_o;
  wire n2122_o;
  wire [1:0] n2124_o;
  wire [1:0] n2125_o;
  wire [18:0] n2126_o;
  wire [18:0] n2127_o;
  wire n2128_o;
  wire [1:0] n2130_o;
  wire [1:0] n2131_o;
  wire [18:0] n2132_o;
  wire [18:0] n2133_o;
  wire n2134_o;
  wire [1:0] n2136_o;
  wire [1:0] n2137_o;
  wire [18:0] n2138_o;
  wire [18:0] n2139_o;
  wire n2140_o;
  wire [1:0] n2142_o;
  wire [1:0] n2143_o;
  wire [18:0] n2144_o;
  wire [18:0] n2145_o;
  wire n2146_o;
  wire [1:0] n2148_o;
  wire [1:0] n2149_o;
  wire [18:0] n2150_o;
  wire [18:0] n2151_o;
  wire n2152_o;
  wire [1:0] n2154_o;
  wire [1:0] n2155_o;
  wire [18:0] n2156_o;
  wire [18:0] n2157_o;
  wire n2158_o;
  wire [1:0] n2160_o;
  wire [1:0] n2161_o;
  wire [18:0] n2162_o;
  wire [18:0] n2163_o;
  wire n2164_o;
  wire [1:0] n2166_o;
  wire [1:0] n2167_o;
  wire [18:0] n2168_o;
  wire [18:0] n2169_o;
  wire n2170_o;
  wire [1:0] n2172_o;
  wire [1:0] n2173_o;
  wire [18:0] n2174_o;
  wire [18:0] n2175_o;
  wire n2176_o;
  wire [1:0] n2178_o;
  wire [1:0] n2179_o;
  wire [18:0] n2180_o;
  wire [18:0] n2181_o;
  wire n2182_o;
  wire [1:0] n2184_o;
  wire [1:0] n2185_o;
  wire [18:0] n2186_o;
  wire [18:0] n2187_o;
  wire n2188_o;
  wire [1:0] n2190_o;
  wire [1:0] n2191_o;
  wire [18:0] n2192_o;
  wire [18:0] n2193_o;
  wire n2194_o;
  wire [1:0] n2196_o;
  wire [1:0] n2197_o;
  wire [18:0] n2198_o;
  wire [18:0] n2199_o;
  wire n2200_o;
  wire [1:0] n2202_o;
  wire [1:0] n2203_o;
  wire [269:0] n2204_o;
  wire [269:0] n2205_o;
  wire [29:0] n2206_o;
  wire [29:0] n2207_o;
  wire [29:0] n2208_o;
  wire [14:0] n2209_o;
  wire [14:0] n2210_o;
  wire n2213_o;
  reg [284:0] end_of_window_logic_virt_win_end;
  reg [14:0] end_of_window_logic_carry;
  wire [17:0] n2219_o;
  wire [18:0] n2220_o;
  wire [18:0] n2221_o;
  wire n2222_o;
  wire [265:0] n2224_o;
  wire [284:0] n2225_o;
  wire n2226_o;
  wire n2227_o;
  wire [13:0] n2228_o;
  wire [14:0] n2229_o;
  wire n2230_o;
  wire [265:0] n2231_o;
  wire [284:0] n2232_o;
  wire [17:0] n2233_o;
  wire [18:0] n2234_o;
  wire [17:0] n2235_o;
  wire [18:0] n2236_o;
  wire [18:0] n2237_o;
  wire n2238_o;
  wire [246:0] n2240_o;
  wire [284:0] n2241_o;
  wire n2242_o;
  wire n2243_o;
  wire [12:0] n2244_o;
  wire [14:0] n2245_o;
  wire n2246_o;
  wire [246:0] n2247_o;
  wire [284:0] n2248_o;
  wire [17:0] n2249_o;
  wire [18:0] n2250_o;
  wire [17:0] n2251_o;
  wire [18:0] n2252_o;
  wire [18:0] n2253_o;
  wire n2254_o;
  wire [227:0] n2256_o;
  wire [284:0] n2257_o;
  wire n2258_o;
  wire n2259_o;
  wire [11:0] n2260_o;
  wire [14:0] n2261_o;
  wire n2262_o;
  wire [227:0] n2263_o;
  wire [284:0] n2264_o;
  wire [17:0] n2265_o;
  wire [18:0] n2266_o;
  wire [17:0] n2267_o;
  wire [18:0] n2268_o;
  wire [18:0] n2269_o;
  wire n2270_o;
  wire [208:0] n2272_o;
  wire [284:0] n2273_o;
  wire n2274_o;
  wire n2275_o;
  wire [10:0] n2276_o;
  wire [14:0] n2277_o;
  wire n2278_o;
  wire [208:0] n2279_o;
  wire [284:0] n2280_o;
  wire [17:0] n2281_o;
  wire [18:0] n2282_o;
  wire [17:0] n2283_o;
  wire [18:0] n2284_o;
  wire [18:0] n2285_o;
  wire n2286_o;
  wire [189:0] n2288_o;
  wire [284:0] n2289_o;
  wire n2290_o;
  wire n2291_o;
  wire [9:0] n2292_o;
  wire [14:0] n2293_o;
  wire n2294_o;
  wire [189:0] n2295_o;
  wire [284:0] n2296_o;
  wire [17:0] n2297_o;
  wire [18:0] n2298_o;
  wire [17:0] n2299_o;
  wire [18:0] n2300_o;
  wire [18:0] n2301_o;
  wire n2302_o;
  wire [170:0] n2304_o;
  wire [284:0] n2305_o;
  wire n2306_o;
  wire n2307_o;
  wire [8:0] n2308_o;
  wire [14:0] n2309_o;
  wire n2310_o;
  wire [170:0] n2311_o;
  wire [284:0] n2312_o;
  wire [17:0] n2313_o;
  wire [18:0] n2314_o;
  wire [17:0] n2315_o;
  wire [18:0] n2316_o;
  wire [18:0] n2317_o;
  wire n2318_o;
  wire [151:0] n2320_o;
  wire [284:0] n2321_o;
  wire n2322_o;
  wire n2323_o;
  wire [7:0] n2324_o;
  wire [14:0] n2325_o;
  wire n2326_o;
  wire [151:0] n2327_o;
  wire [284:0] n2328_o;
  wire [17:0] n2329_o;
  wire [18:0] n2330_o;
  wire [17:0] n2331_o;
  wire [18:0] n2332_o;
  wire [18:0] n2333_o;
  wire n2334_o;
  wire [132:0] n2336_o;
  wire [284:0] n2337_o;
  wire n2338_o;
  wire n2339_o;
  wire [6:0] n2340_o;
  wire [14:0] n2341_o;
  wire n2342_o;
  wire [132:0] n2343_o;
  wire [284:0] n2344_o;
  wire [17:0] n2345_o;
  wire [18:0] n2346_o;
  wire [17:0] n2347_o;
  wire [18:0] n2348_o;
  wire [18:0] n2349_o;
  wire n2350_o;
  wire [113:0] n2352_o;
  wire [284:0] n2353_o;
  wire n2354_o;
  wire n2355_o;
  wire [5:0] n2356_o;
  wire [14:0] n2357_o;
  wire n2358_o;
  wire [113:0] n2359_o;
  wire [284:0] n2360_o;
  wire [17:0] n2361_o;
  wire [18:0] n2362_o;
  wire [17:0] n2363_o;
  wire [18:0] n2364_o;
  wire [18:0] n2365_o;
  wire n2366_o;
  wire [94:0] n2368_o;
  wire [284:0] n2369_o;
  wire n2370_o;
  wire n2371_o;
  wire [4:0] n2372_o;
  wire [14:0] n2373_o;
  wire n2374_o;
  wire [94:0] n2375_o;
  wire [284:0] n2376_o;
  wire [17:0] n2377_o;
  wire [18:0] n2378_o;
  wire [17:0] n2379_o;
  wire [18:0] n2380_o;
  wire [18:0] n2381_o;
  wire n2382_o;
  wire [75:0] n2384_o;
  wire [284:0] n2385_o;
  wire n2386_o;
  wire n2387_o;
  wire [3:0] n2388_o;
  wire [14:0] n2389_o;
  wire n2390_o;
  wire [75:0] n2391_o;
  wire [284:0] n2392_o;
  wire [17:0] n2393_o;
  wire [18:0] n2394_o;
  wire [17:0] n2395_o;
  wire [18:0] n2396_o;
  wire [18:0] n2397_o;
  wire n2398_o;
  wire [56:0] n2400_o;
  wire [284:0] n2401_o;
  wire n2402_o;
  wire n2403_o;
  wire [2:0] n2404_o;
  wire [14:0] n2405_o;
  wire n2406_o;
  wire [56:0] n2407_o;
  wire [284:0] n2408_o;
  wire [17:0] n2409_o;
  wire [18:0] n2410_o;
  wire [17:0] n2411_o;
  wire [18:0] n2412_o;
  wire [18:0] n2413_o;
  wire n2414_o;
  wire [37:0] n2416_o;
  wire [284:0] n2417_o;
  wire n2418_o;
  wire n2419_o;
  wire [1:0] n2420_o;
  wire [14:0] n2421_o;
  wire n2422_o;
  wire [37:0] n2423_o;
  wire [284:0] n2424_o;
  wire [17:0] n2425_o;
  wire [18:0] n2426_o;
  wire [17:0] n2427_o;
  wire [18:0] n2428_o;
  wire [18:0] n2429_o;
  wire n2430_o;
  wire [18:0] n2432_o;
  wire [284:0] n2433_o;
  wire n2434_o;
  wire n2435_o;
  wire n2436_o;
  wire [14:0] n2437_o;
  wire n2438_o;
  wire [18:0] n2439_o;
  wire [284:0] n2440_o;
  wire [17:0] n2441_o;
  wire [18:0] n2442_o;
  wire [17:0] n2443_o;
  wire [18:0] n2444_o;
  wire [18:0] n2445_o;
  wire n2446_o;
  wire [284:0] n2448_o;
  wire n2449_o;
  wire n2450_o;
  wire [14:0] n2451_o;
  wire n2452_o;
  wire [284:0] n2453_o;
  wire [17:0] n2454_o;
  wire [18:0] n2455_o;
  wire [284:0] n2457_o;
  wire [14:0] n2458_o;
  reg [269:0] n2459_q;
  reg [29:0] n2460_q;
  wire [284:0] n2461_o;
  reg [14:0] n2462_q;
  reg n2463_q;
  assign spikes_o = spikes; //(module output)
  assign spikes_strb_o = spikes_strb; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:46:8  */
  assign timestamps = n2459_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:47:8  */
  assign next_timestamps = n2205_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:48:8  */
  assign spikes = n2460_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:49:8  */
  assign next_spikes = n2208_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:50:8  */
  assign win_end = n2461_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:51:8  */
  assign overflow_marker = n2462_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:52:8  */
  assign next_overflow_marker = n2210_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:53:8  */
  assign spikes_strb = n2463_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:54:8  */
  assign next_spikes_strb = n2213_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:83:5  */
  assign n2069_o = overflow_strb_i ? 15'b111111111111111 : overflow_marker;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2070_o = spikes[1:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2071_o = timestamps[17:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2072_o = overflow_marker[0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2073_o = spikes[3:2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2074_o = timestamps[35:18]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2075_o = overflow_marker[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2076_o = spikes[5:4]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2077_o = timestamps[53:36]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2078_o = overflow_marker[2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2079_o = spikes[7:6]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2080_o = timestamps[71:54]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2081_o = overflow_marker[3]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2082_o = spikes[9:8]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2083_o = timestamps[89:72]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2084_o = overflow_marker[4]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2085_o = spikes[11:10]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2086_o = timestamps[107:90]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2087_o = overflow_marker[5]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2088_o = spikes[13:12]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2089_o = timestamps[125:108]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2090_o = overflow_marker[6]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2091_o = spikes[15:14]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2092_o = timestamps[143:126]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2093_o = overflow_marker[7]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2094_o = spikes[17:16]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2095_o = timestamps[161:144]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2096_o = overflow_marker[8]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2097_o = spikes[19:18]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2098_o = timestamps[179:162]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2099_o = overflow_marker[9]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2100_o = spikes[21:20]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2101_o = timestamps[197:180]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2102_o = overflow_marker[10]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2103_o = spikes[23:22]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2104_o = timestamps[215:198]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2105_o = overflow_marker[11]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2106_o = spikes[25:24]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2107_o = timestamps[233:216]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2108_o = overflow_marker[12]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2109_o = spikes[27:26]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2110_o = timestamps[251:234]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2111_o = overflow_marker[13]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:96:28  */
  assign n2112_o = ~spike_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2114_o = win_end[18:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2115_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2116_o = $unsigned(n2115_o) >= $unsigned(n2114_o);
  assign n2118_o = spikes[1:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2119_o = n2116_o ? 2'b00 : n2118_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2120_o = win_end[37:19]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2121_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2122_o = $unsigned(n2121_o) >= $unsigned(n2120_o);
  assign n2124_o = spikes[3:2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2125_o = n2122_o ? 2'b00 : n2124_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2126_o = win_end[56:38]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2127_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2128_o = $unsigned(n2127_o) >= $unsigned(n2126_o);
  assign n2130_o = spikes[5:4]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2131_o = n2128_o ? 2'b00 : n2130_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2132_o = win_end[75:57]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2133_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2134_o = $unsigned(n2133_o) >= $unsigned(n2132_o);
  assign n2136_o = spikes[7:6]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2137_o = n2134_o ? 2'b00 : n2136_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2138_o = win_end[94:76]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2139_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2140_o = $unsigned(n2139_o) >= $unsigned(n2138_o);
  assign n2142_o = spikes[9:8]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2143_o = n2140_o ? 2'b00 : n2142_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2144_o = win_end[113:95]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2145_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2146_o = $unsigned(n2145_o) >= $unsigned(n2144_o);
  assign n2148_o = spikes[11:10]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2149_o = n2146_o ? 2'b00 : n2148_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2150_o = win_end[132:114]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2151_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2152_o = $unsigned(n2151_o) >= $unsigned(n2150_o);
  assign n2154_o = spikes[13:12]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2155_o = n2152_o ? 2'b00 : n2154_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2156_o = win_end[151:133]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2157_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2158_o = $unsigned(n2157_o) >= $unsigned(n2156_o);
  assign n2160_o = spikes[15:14]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2161_o = n2158_o ? 2'b00 : n2160_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2162_o = win_end[170:152]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2163_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2164_o = $unsigned(n2163_o) >= $unsigned(n2162_o);
  assign n2166_o = spikes[17:16]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2167_o = n2164_o ? 2'b00 : n2166_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2168_o = win_end[189:171]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2169_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2170_o = $unsigned(n2169_o) >= $unsigned(n2168_o);
  assign n2172_o = spikes[19:18]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2173_o = n2170_o ? 2'b00 : n2172_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2174_o = win_end[208:190]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2175_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2176_o = $unsigned(n2175_o) >= $unsigned(n2174_o);
  assign n2178_o = spikes[21:20]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2179_o = n2176_o ? 2'b00 : n2178_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2180_o = win_end[227:209]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2181_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2182_o = $unsigned(n2181_o) >= $unsigned(n2180_o);
  assign n2184_o = spikes[23:22]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2185_o = n2182_o ? 2'b00 : n2184_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2186_o = win_end[246:228]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2187_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2188_o = $unsigned(n2187_o) >= $unsigned(n2186_o);
  assign n2190_o = spikes[25:24]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2191_o = n2188_o ? 2'b00 : n2190_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2192_o = win_end[265:247]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2193_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2194_o = $unsigned(n2193_o) >= $unsigned(n2192_o);
  assign n2196_o = spikes[27:26]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2197_o = n2194_o ? 2'b00 : n2196_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2198_o = win_end[284:266]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2199_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2200_o = $unsigned(n2199_o) >= $unsigned(n2198_o);
  assign n2202_o = spikes[29:28]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2203_o = n2200_o ? 2'b00 : n2202_o;
  assign n2204_o = {n2110_o, n2107_o, n2104_o, n2101_o, n2098_o, n2095_o, n2092_o, n2089_o, n2086_o, n2083_o, n2080_o, n2077_o, n2074_o, n2071_o, curr_time_i};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2205_o = spike_strb_i ? n2204_o : timestamps;
  assign n2206_o = {n2203_o, n2197_o, n2191_o, n2185_o, n2179_o, n2173_o, n2167_o, n2161_o, n2155_o, n2149_o, n2143_o, n2137_o, n2131_o, n2125_o, n2119_o};
  assign n2207_o = {n2109_o, n2106_o, n2103_o, n2100_o, n2097_o, n2094_o, n2091_o, n2088_o, n2085_o, n2082_o, n2079_o, n2076_o, n2073_o, n2070_o, n2112_o, spike_i};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2208_o = spike_strb_i ? n2207_o : n2206_o;
  assign n2209_o = {n2111_o, n2108_o, n2105_o, n2102_o, n2099_o, n2096_o, n2093_o, n2090_o, n2087_o, n2084_o, n2081_o, n2078_o, n2075_o, n2072_o, 1'b0};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2210_o = spike_strb_i ? n2209_o : n2069_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2213_o = spike_strb_i ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:113:12  */
  always @*
    end_of_window_logic_virt_win_end = n2457_o; // (isignal)
  initial
    end_of_window_logic_virt_win_end = 285'bX;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:114:12  */
  always @*
    end_of_window_logic_carry = n2458_o; // (isignal)
  initial
    end_of_window_logic_carry = 15'bX;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2219_o = timestamps[17:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2220_o = {1'b0, n2219_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2221_o = n2220_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2222_o = overflow_marker[0]; // extract
  assign n2224_o = end_of_window_logic_virt_win_end[284:19]; // extract
  assign n2225_o = {n2224_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2226_o = n2225_o[18]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2227_o = n2222_o ? 1'b0 : n2226_o;
  assign n2228_o = end_of_window_logic_carry[13:0]; // extract
  assign n2229_o = {n2227_o, n2228_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2230_o = n2229_o[14]; // extract
  assign n2231_o = end_of_window_logic_virt_win_end[284:19]; // extract
  assign n2232_o = {n2231_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2233_o = n2232_o[17:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2234_o = {n2230_o, n2233_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2235_o = timestamps[35:18]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2236_o = {1'b0, n2235_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2237_o = n2236_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2238_o = overflow_marker[1]; // extract
  assign n2240_o = end_of_window_logic_virt_win_end[284:38]; // extract
  assign n2241_o = {n2240_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2242_o = n2241_o[37]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2243_o = n2238_o ? 1'b0 : n2242_o;
  assign n2244_o = end_of_window_logic_carry[12:0]; // extract
  assign n2245_o = {n2227_o, n2243_o, n2244_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2246_o = n2245_o[13]; // extract
  assign n2247_o = end_of_window_logic_virt_win_end[284:38]; // extract
  assign n2248_o = {n2247_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2249_o = n2248_o[36:19]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2250_o = {n2246_o, n2249_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2251_o = timestamps[53:36]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2252_o = {1'b0, n2251_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2253_o = n2252_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2254_o = overflow_marker[2]; // extract
  assign n2256_o = end_of_window_logic_virt_win_end[284:57]; // extract
  assign n2257_o = {n2256_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2258_o = n2257_o[56]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2259_o = n2254_o ? 1'b0 : n2258_o;
  assign n2260_o = end_of_window_logic_carry[11:0]; // extract
  assign n2261_o = {n2227_o, n2243_o, n2259_o, n2260_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2262_o = n2261_o[12]; // extract
  assign n2263_o = end_of_window_logic_virt_win_end[284:57]; // extract
  assign n2264_o = {n2263_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2265_o = n2264_o[55:38]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2266_o = {n2262_o, n2265_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2267_o = timestamps[71:54]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2268_o = {1'b0, n2267_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2269_o = n2268_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2270_o = overflow_marker[3]; // extract
  assign n2272_o = end_of_window_logic_virt_win_end[284:76]; // extract
  assign n2273_o = {n2272_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2274_o = n2273_o[75]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2275_o = n2270_o ? 1'b0 : n2274_o;
  assign n2276_o = end_of_window_logic_carry[10:0]; // extract
  assign n2277_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2276_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2278_o = n2277_o[11]; // extract
  assign n2279_o = end_of_window_logic_virt_win_end[284:76]; // extract
  assign n2280_o = {n2279_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2281_o = n2280_o[74:57]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2282_o = {n2278_o, n2281_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2283_o = timestamps[89:72]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2284_o = {1'b0, n2283_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2285_o = n2284_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2286_o = overflow_marker[4]; // extract
  assign n2288_o = end_of_window_logic_virt_win_end[284:95]; // extract
  assign n2289_o = {n2288_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2290_o = n2289_o[94]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2291_o = n2286_o ? 1'b0 : n2290_o;
  assign n2292_o = end_of_window_logic_carry[9:0]; // extract
  assign n2293_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2292_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2294_o = n2293_o[10]; // extract
  assign n2295_o = end_of_window_logic_virt_win_end[284:95]; // extract
  assign n2296_o = {n2295_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2297_o = n2296_o[93:76]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2298_o = {n2294_o, n2297_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2299_o = timestamps[107:90]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2300_o = {1'b0, n2299_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2301_o = n2300_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2302_o = overflow_marker[5]; // extract
  assign n2304_o = end_of_window_logic_virt_win_end[284:114]; // extract
  assign n2305_o = {n2304_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2306_o = n2305_o[113]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2307_o = n2302_o ? 1'b0 : n2306_o;
  assign n2308_o = end_of_window_logic_carry[8:0]; // extract
  assign n2309_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2308_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2310_o = n2309_o[9]; // extract
  assign n2311_o = end_of_window_logic_virt_win_end[284:114]; // extract
  assign n2312_o = {n2311_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2313_o = n2312_o[112:95]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2314_o = {n2310_o, n2313_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2315_o = timestamps[125:108]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2316_o = {1'b0, n2315_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2317_o = n2316_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2318_o = overflow_marker[6]; // extract
  assign n2320_o = end_of_window_logic_virt_win_end[284:133]; // extract
  assign n2321_o = {n2320_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2322_o = n2321_o[132]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2323_o = n2318_o ? 1'b0 : n2322_o;
  assign n2324_o = end_of_window_logic_carry[7:0]; // extract
  assign n2325_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2323_o, n2324_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2326_o = n2325_o[8]; // extract
  assign n2327_o = end_of_window_logic_virt_win_end[284:133]; // extract
  assign n2328_o = {n2327_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2329_o = n2328_o[131:114]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2330_o = {n2326_o, n2329_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2331_o = timestamps[143:126]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2332_o = {1'b0, n2331_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2333_o = n2332_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2334_o = overflow_marker[7]; // extract
  assign n2336_o = end_of_window_logic_virt_win_end[284:152]; // extract
  assign n2337_o = {n2336_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2338_o = n2337_o[151]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2339_o = n2334_o ? 1'b0 : n2338_o;
  assign n2340_o = end_of_window_logic_carry[6:0]; // extract
  assign n2341_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2323_o, n2339_o, n2340_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2342_o = n2341_o[7]; // extract
  assign n2343_o = end_of_window_logic_virt_win_end[284:152]; // extract
  assign n2344_o = {n2343_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2345_o = n2344_o[150:133]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2346_o = {n2342_o, n2345_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2347_o = timestamps[161:144]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2348_o = {1'b0, n2347_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2349_o = n2348_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2350_o = overflow_marker[8]; // extract
  assign n2352_o = end_of_window_logic_virt_win_end[284:171]; // extract
  assign n2353_o = {n2352_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2354_o = n2353_o[170]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2355_o = n2350_o ? 1'b0 : n2354_o;
  assign n2356_o = end_of_window_logic_carry[5:0]; // extract
  assign n2357_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2323_o, n2339_o, n2355_o, n2356_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2358_o = n2357_o[6]; // extract
  assign n2359_o = end_of_window_logic_virt_win_end[284:171]; // extract
  assign n2360_o = {n2359_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2361_o = n2360_o[169:152]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2362_o = {n2358_o, n2361_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2363_o = timestamps[179:162]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2364_o = {1'b0, n2363_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2365_o = n2364_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2366_o = overflow_marker[9]; // extract
  assign n2368_o = end_of_window_logic_virt_win_end[284:190]; // extract
  assign n2369_o = {n2368_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2370_o = n2369_o[189]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2371_o = n2366_o ? 1'b0 : n2370_o;
  assign n2372_o = end_of_window_logic_carry[4:0]; // extract
  assign n2373_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2323_o, n2339_o, n2355_o, n2371_o, n2372_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2374_o = n2373_o[5]; // extract
  assign n2375_o = end_of_window_logic_virt_win_end[284:190]; // extract
  assign n2376_o = {n2375_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2377_o = n2376_o[188:171]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2378_o = {n2374_o, n2377_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2379_o = timestamps[197:180]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2380_o = {1'b0, n2379_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2381_o = n2380_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2382_o = overflow_marker[10]; // extract
  assign n2384_o = end_of_window_logic_virt_win_end[284:209]; // extract
  assign n2385_o = {n2384_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2386_o = n2385_o[208]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2387_o = n2382_o ? 1'b0 : n2386_o;
  assign n2388_o = end_of_window_logic_carry[3:0]; // extract
  assign n2389_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2323_o, n2339_o, n2355_o, n2371_o, n2387_o, n2388_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2390_o = n2389_o[4]; // extract
  assign n2391_o = end_of_window_logic_virt_win_end[284:209]; // extract
  assign n2392_o = {n2391_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2393_o = n2392_o[207:190]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2394_o = {n2390_o, n2393_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2395_o = timestamps[215:198]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2396_o = {1'b0, n2395_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2397_o = n2396_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2398_o = overflow_marker[11]; // extract
  assign n2400_o = end_of_window_logic_virt_win_end[284:228]; // extract
  assign n2401_o = {n2400_o, n2397_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2402_o = n2401_o[227]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2403_o = n2398_o ? 1'b0 : n2402_o;
  assign n2404_o = end_of_window_logic_carry[2:0]; // extract
  assign n2405_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2323_o, n2339_o, n2355_o, n2371_o, n2387_o, n2403_o, n2404_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2406_o = n2405_o[3]; // extract
  assign n2407_o = end_of_window_logic_virt_win_end[284:228]; // extract
  assign n2408_o = {n2407_o, n2397_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2409_o = n2408_o[226:209]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2410_o = {n2406_o, n2409_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2411_o = timestamps[233:216]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2412_o = {1'b0, n2411_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2413_o = n2412_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2414_o = overflow_marker[12]; // extract
  assign n2416_o = end_of_window_logic_virt_win_end[284:247]; // extract
  assign n2417_o = {n2416_o, n2413_o, n2397_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2418_o = n2417_o[246]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2419_o = n2414_o ? 1'b0 : n2418_o;
  assign n2420_o = end_of_window_logic_carry[1:0]; // extract
  assign n2421_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2323_o, n2339_o, n2355_o, n2371_o, n2387_o, n2403_o, n2419_o, n2420_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2422_o = n2421_o[2]; // extract
  assign n2423_o = end_of_window_logic_virt_win_end[284:247]; // extract
  assign n2424_o = {n2423_o, n2413_o, n2397_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2425_o = n2424_o[245:228]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2426_o = {n2422_o, n2425_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2427_o = timestamps[251:234]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2428_o = {1'b0, n2427_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2429_o = n2428_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2430_o = overflow_marker[13]; // extract
  assign n2432_o = end_of_window_logic_virt_win_end[284:266]; // extract
  assign n2433_o = {n2432_o, n2429_o, n2413_o, n2397_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2434_o = n2433_o[265]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2435_o = n2430_o ? 1'b0 : n2434_o;
  assign n2436_o = end_of_window_logic_carry[0]; // extract
  assign n2437_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2323_o, n2339_o, n2355_o, n2371_o, n2387_o, n2403_o, n2419_o, n2435_o, n2436_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2438_o = n2437_o[1]; // extract
  assign n2439_o = end_of_window_logic_virt_win_end[284:266]; // extract
  assign n2440_o = {n2439_o, n2429_o, n2413_o, n2397_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2441_o = n2440_o[264:247]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2442_o = {n2438_o, n2441_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2443_o = timestamps[269:252]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2444_o = {1'b0, n2443_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2445_o = n2444_o + win_length_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2446_o = overflow_marker[14]; // extract
  assign n2448_o = {n2445_o, n2429_o, n2413_o, n2397_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2449_o = n2448_o[284]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2450_o = n2446_o ? 1'b0 : n2449_o;
  assign n2451_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2323_o, n2339_o, n2355_o, n2371_o, n2387_o, n2403_o, n2419_o, n2435_o, n2450_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2452_o = n2451_o[0]; // extract
  assign n2453_o = {n2445_o, n2429_o, n2413_o, n2397_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2454_o = n2453_o[283:266]; // extract
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2455_o = {n2452_o, n2454_o};
  assign n2457_o = {n2445_o, n2429_o, n2413_o, n2397_o, n2381_o, n2365_o, n2349_o, n2333_o, n2317_o, n2301_o, n2285_o, n2269_o, n2253_o, n2237_o, n2221_o};
  assign n2458_o = {n2227_o, n2243_o, n2259_o, n2275_o, n2291_o, n2307_o, n2323_o, n2339_o, n2355_o, n2371_o, n2387_o, n2403_o, n2419_o, n2435_o, n2450_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2459_q <= 270'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    else
      n2459_q <= next_timestamps;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2460_q <= 30'b000000000000000000000000000000;
    else
      n2460_q <= next_spikes;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:60:5  */
  assign n2461_o = {n2455_o, n2442_o, n2426_o, n2410_o, n2394_o, n2378_o, n2362_o, n2346_o, n2330_o, n2314_o, n2298_o, n2282_o, n2266_o, n2250_o, n2234_o};
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2462_q <= 15'b000000000000000;
    else
      n2462_q <= next_overflow_marker;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2463_q <= 1'b0;
    else
      n2463_q <= next_spikes_strb;
endmodule

module uart_9_8
  (input  clock_i,
   input  reset_i,
   input  [8:0] baudrate_adj_i,
   input  tx_start_strb_i,
   input  [7:0] tx_data_i,
   input  rx_i,
   output tx_strb_o,
   output tx_o,
   output rx_data_strb_o,
   output [7:0] rx_data_o);
  wire uart_tx_0_tx_strb_o;
  wire uart_tx_0_tx_o;
  wire [7:0] uart_rx_0_data_o;
  wire uart_rx_0_data_valid_strb_o;
  assign tx_strb_o = uart_tx_0_tx_strb_o; //(module output)
  assign tx_o = uart_tx_0_tx_o; //(module output)
  assign rx_data_strb_o = uart_rx_0_data_valid_strb_o; //(module output)
  assign rx_data_o = uart_rx_0_data_o; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_ea.vhd:45:9  */
  uart_tx_9_8 uart_tx_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .baudrate_adj_i(baudrate_adj_i),
    .tx_start_strb_i(tx_start_strb_i),
    .data_i(tx_data_i),
    .tx_strb_o(uart_tx_0_tx_strb_o),
    .tx_o(uart_tx_0_tx_o));
  /* ../../../vhdl/atbs_core_floating_window/uart/rtl/uart_ea.vhd:63:3  */
  uart_rx_9_8 uart_rx_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .baudrate_adj_i(baudrate_adj_i),
    .rx_i(rx_i),
    .data_o(uart_rx_0_data_o),
    .data_valid_strb_o(uart_rx_0_data_valid_strb_o));
endmodule

module memory2uart_19_8
  (input  clock_i,
   input  reset_i,
   input  read_strb_i,
   input  tx_strb_i,
   input  [18:0] memory_data_i,
   output [7:0] uart_data_o,
   output tx_start_strb_o);
  wire [23:0] shift_reg_out;
  wire [23:0] next_shift_reg_out;
  wire tx_start_strb;
  wire next_tx_start_strb;
  wire [1:0] counter;
  wire [1:0] next_counter;
  wire [23:0] data;
  wire [23:0] n1988_o;
  wire [7:0] n2003_o;
  wire [7:0] n2004_o;
  wire [7:0] n2005_o;
  wire n2007_o;
  wire n2008_o;
  wire [15:0] n2009_o;
  wire [15:0] n2010_o;
  wire [15:0] n2011_o;
  wire n2014_o;
  wire [23:0] n2015_o;
  wire [15:0] n2016_o;
  wire [15:0] n2017_o;
  wire [7:0] n2018_o;
  wire [7:0] n2019_o;
  wire [7:0] n2020_o;
  wire n2023_o;
  wire n2030_o;
  wire [1:0] n2032_o;
  wire [1:0] n2034_o;
  wire [1:0] n2035_o;
  wire [7:0] n2037_o;
  reg [23:0] n2038_q;
  wire [23:0] n2039_o;
  reg n2040_q;
  reg [1:0] n2041_q;
  assign uart_data_o = n2037_o; //(module output)
  assign tx_start_strb_o = tx_start_strb; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:46:8  */
  assign shift_reg_out = n2038_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:47:8  */
  assign next_shift_reg_out = n2039_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:48:8  */
  assign tx_start_strb = n2040_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:49:8  */
  assign next_tx_start_strb = n2023_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:50:8  */
  assign counter = n2041_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:51:8  */
  assign next_counter = n2035_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:52:8  */
  assign data = n1988_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:57:29  */
  assign n1988_o = {{5{memory_data_i[18]}}, memory_data_i}; // sext
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:87:38  */
  assign n2003_o = data[7:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:87:38  */
  assign n2004_o = data[15:8]; // extract
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:87:38  */
  assign n2005_o = data[23:16]; // extract
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:90:51  */
  assign n2007_o = $unsigned(counter) < $unsigned(2'b10);
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:90:39  */
  assign n2008_o = n2007_o & tx_strb_i;
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:91:76  */
  assign n2009_o = shift_reg_out[23:8]; // extract
  assign n2010_o = shift_reg_out[15:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:90:17  */
  assign n2011_o = n2008_o ? n2009_o : n2010_o;
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:90:17  */
  assign n2014_o = n2008_o ? 1'b1 : 1'b0;
  assign n2015_o = {n2003_o, n2004_o, n2005_o};
  assign n2016_o = n2015_o[15:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:82:5  */
  assign n2017_o = read_strb_i ? n2016_o : n2011_o;
  assign n2018_o = n2015_o[23:16]; // extract
  assign n2019_o = shift_reg_out[23:16]; // extract
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:82:5  */
  assign n2020_o = read_strb_i ? n2018_o : n2019_o;
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:82:5  */
  assign n2023_o = read_strb_i ? 1'b1 : n2014_o;
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:103:18  */
  assign n2030_o = counter == 2'b10;
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:106:33  */
  assign n2032_o = counter + 2'b01;
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:103:7  */
  assign n2034_o = n2030_o ? 2'b00 : n2032_o;
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:102:5  */
  assign n2035_o = tx_strb_i ? n2034_o : counter;
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:114:37  */
  assign n2037_o = shift_reg_out[7:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:66:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2038_q <= 24'b000000000000000000000000;
    else
      n2038_q <= next_shift_reg_out;
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:62:17  */
  assign n2039_o = {n2020_o, n2017_o};
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:66:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2040_q <= 1'b0;
    else
      n2040_q <= next_tx_start_strb;
  /* ../../../vhdl/atbs_core_floating_window/memory2uart/rtl/memory2uart_ea.vhd:66:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2041_q <= 2'b00;
    else
      n2041_q <= next_counter;
endmodule

module spike_memory_19_2
  (input  clock_i,
   input  reset_i,
   input  enable_write_i,
   input  [18:0] a_data_i,
   input  enable_read_i,
   input  tx_strb_i,
   output read_strb_o,
   output [18:0] b_data_o,
   output fifo_full_o,
   output fifo_empty_o);
  wire [75:0] srg;
  wire [75:0] next_srg;
  wire [1:0] head;
  wire [1:0] next_head;
  wire [1:0] tail;
  wire [1:0] next_tail;
  wire [1:0] fifo_fill_count;
  wire write_strb;
  wire write_delayed_strb;
  wire read_strb;
  wire [18:0] a_data;
  wire [18:0] next_a_data;
  wire [18:0] b_data;
  wire [18:0] next_b_data;
  wire fifo_empty;
  wire fifo_full;
  wire [3:0] sync_read_strb;
  wire [3:0] next_sync_read_strb;
  wire [2:0] tx_active;
  wire [2:0] next_tx_active;
  wire n1898_o;
  wire n1899_o;
  wire [1:0] n1901_o;
  wire [1:0] n1902_o;
  wire n1905_o;
  wire [18:0] n1907_o;
  wire n1910_o;
  wire n1911_o;
  wire n1912_o;
  wire n1913_o;
  wire n1914_o;
  wire [1:0] n1916_o;
  wire [1:0] n1917_o;
  wire n1920_o;
  wire [2:0] n1923_o;
  wire n1925_o;
  wire n1926_o;
  wire [2:0] n1927_o;
  wire [2:0] n1928_o;
  wire [1:0] n1930_o;
  wire [1:0] n1932_o;
  wire n1933_o;
  wire [1:0] n1934_o;
  wire [1:0] n1935_o;
  wire n1938_o;
  wire n1939_o;
  wire n1943_o;
  wire n1944_o;
  wire [18:0] n1953_o;
  wire [18:0] n1954_o;
  wire [18:0] n1955_o;
  wire [75:0] n1956_o;
  wire [75:0] n1957_o;
  wire n1964_o;
  wire n1966_o;
  wire n1968_o;
  wire n1970_o;
  reg [75:0] n1971_q;
  reg [1:0] n1972_q;
  reg [1:0] n1973_q;
  reg n1974_q;
  reg [18:0] n1975_q;
  reg [18:0] n1976_q;
  reg [3:0] n1977_q;
  wire [3:0] n1978_o;
  reg [2:0] n1979_q;
  wire [18:0] n1980_o;
  wire [18:0] n1981_o;
  wire [18:0] n1982_o;
  wire [18:0] n1983_o;
  wire [1:0] n1984_o;
  reg [18:0] n1985_o;
  assign read_strb_o = n1970_o; //(module output)
  assign b_data_o = b_data; //(module output)
  assign fifo_full_o = fifo_full; //(module output)
  assign fifo_empty_o = fifo_empty; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:53:8  */
  assign srg = n1971_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:54:8  */
  assign next_srg = n1957_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:57:8  */
  assign head = n1972_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:58:8  */
  assign next_head = n1902_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:61:8  */
  assign tail = n1973_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:62:8  */
  assign next_tail = n1917_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:65:8  */
  assign fifo_fill_count = n1934_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:67:8  */
  assign write_strb = n1905_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:68:8  */
  assign write_delayed_strb = n1974_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:70:8  */
  assign read_strb = n1920_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:73:8  */
  assign a_data = n1975_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:74:8  */
  assign next_a_data = n1907_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:76:8  */
  assign b_data = n1976_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:77:8  */
  assign next_b_data = n1985_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:80:8  */
  assign fifo_empty = n1939_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:81:8  */
  assign fifo_full = n1944_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:83:8  */
  assign sync_read_strb = n1977_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:84:8  */
  assign next_sync_read_strb = n1978_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:86:8  */
  assign tx_active = n1979_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:87:8  */
  assign next_tx_active = n1928_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:153:55  */
  assign n1898_o = ~fifo_full;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:153:41  */
  assign n1899_o = n1898_o & enable_write_i;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:154:43  */
  assign n1901_o = head + 2'b01;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:153:17  */
  assign n1902_o = n1899_o ? n1901_o : head;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:153:17  */
  assign n1905_o = n1899_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:153:17  */
  assign n1907_o = n1899_o ? a_data_i : a_data;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:170:55  */
  assign n1910_o = ~fifo_empty;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:170:40  */
  assign n1911_o = n1910_o & enable_read_i;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:170:74  */
  assign n1912_o = tx_active[2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:170:85  */
  assign n1913_o = ~n1912_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:170:61  */
  assign n1914_o = n1913_o & n1911_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:171:43  */
  assign n1916_o = tail + 2'b01;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:170:17  */
  assign n1917_o = n1914_o ? n1916_o : tail;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:170:17  */
  assign n1920_o = n1914_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:170:17  */
  assign n1923_o = n1914_o ? 3'b111 : tx_active;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:180:39  */
  assign n1925_o = tx_active[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:180:39  */
  assign n1926_o = tx_active[0]; // extract
  assign n1927_o = {n1925_o, n1926_o, 1'b0};
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:177:5  */
  assign n1928_o = tx_strb_i ? n1927_o : n1923_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:188:33  */
  assign n1930_o = head - tail;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:188:40  */
  assign n1932_o = n1930_o + 2'b00;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:188:62  */
  assign n1933_o = $unsigned(head) < $unsigned(tail);
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:188:52  */
  assign n1934_o = n1933_o ? n1932_o : n1935_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:188:79  */
  assign n1935_o = head - tail;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:190:48  */
  assign n1938_o = fifo_fill_count == 2'b00;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:190:27  */
  assign n1939_o = n1938_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:191:47  */
  assign n1943_o = $unsigned(fifo_fill_count) >= $unsigned(2'b11);
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:191:26  */
  assign n1944_o = n1943_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n1953_o = srg[18:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n1954_o = srg[37:19]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n1955_o = srg[56:38]; // extract
  assign n1956_o = {n1955_o, n1954_o, n1953_o, a_data};
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:213:7  */
  assign n1957_o = write_delayed_strb ? n1956_o : srg;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:262:49  */
  assign n1964_o = sync_read_strb[2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:262:49  */
  assign n1966_o = sync_read_strb[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:262:49  */
  assign n1968_o = sync_read_strb[0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:268:38  */
  assign n1970_o = sync_read_strb[3]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:203:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1971_q <= 76'b0000000000000000000000000000000000000000000000000000000000000000000000000000;
    else
      n1971_q <= next_srg;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1972_q <= 2'b00;
    else
      n1972_q <= next_head;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1973_q <= 2'b00;
    else
      n1973_q <= next_tail;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1974_q <= 1'b0;
    else
      n1974_q <= write_strb;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1975_q <= 19'b0000000000000000000;
    else
      n1975_q <= next_a_data;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1976_q <= 19'b0000000000000000000;
    else
      n1976_q <= next_b_data;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1977_q <= 4'b0000;
    else
      n1977_q <= next_sync_read_strb;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:96:7  */
  assign n1978_o = {n1964_o, n1966_o, n1968_o, read_strb};
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1979_q <= 3'b000;
    else
      n1979_q <= next_tx_active;
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:34:17  */
  assign n1980_o = srg[18:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:33:17  */
  assign n1981_o = srg[37:19]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:31:17  */
  assign n1982_o = srg[56:38]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:30:17  */
  assign n1983_o = srg[75:57]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n1984_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n1984_o)
      2'b00: n1985_o = n1980_o;
      2'b01: n1985_o = n1981_o;
      2'b10: n1985_o = n1982_o;
      2'b11: n1985_o = n1983_o;
    endcase
endmodule

module spike_encoder_18_19
  (input  clock_i,
   input  reset_i,
   input  spike_i,
   input  spike_strb_i,
   input  overflow_strb_i,
   input  [17:0] curr_time_i,
   output [18:0] encoded_spike_o,
   output encoded_spike_strb_o);
  wire [18:0] encoded_spike;
  wire [18:0] next_encoded_spike;
  wire encoded_spike_strb;
  wire next_encoded_spike_strb;
  wire delayed_spike_strb;
  wire next_delayed_spike_strb;
  wire delayed_spike;
  wire next_delayed_spike;
  wire n1839_o;
  wire n1842_o;
  wire n1845_o;
  wire n1847_o;
  wire [18:0] n1848_o;
  wire n1849_o;
  wire [18:0] n1850_o;
  wire [18:0] n1851_o;
  wire [18:0] n1852_o;
  wire n1855_o;
  wire [18:0] n1858_o;
  wire n1860_o;
  reg [18:0] n1865_q;
  reg n1866_q;
  reg n1867_q;
  reg n1868_q;
  assign encoded_spike_o = encoded_spike; //(module output)
  assign encoded_spike_strb_o = encoded_spike_strb; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:40:8  */
  assign encoded_spike = n1865_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:41:8  */
  assign next_encoded_spike = n1858_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:42:8  */
  assign encoded_spike_strb = n1866_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:43:8  */
  assign next_encoded_spike_strb = n1860_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:44:8  */
  assign delayed_spike_strb = n1867_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:45:8  */
  assign next_delayed_spike_strb = n1842_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:46:8  */
  assign delayed_spike = n1868_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:47:8  */
  assign next_delayed_spike = n1845_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:78:30  */
  assign n1839_o = spike_strb_i & overflow_strb_i;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:78:5  */
  assign n1842_o = n1839_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:78:5  */
  assign n1845_o = n1839_o ? spike_i : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:86:42  */
  assign n1847_o = spike_strb_i | delayed_spike_strb;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:88:45  */
  assign n1848_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:89:24  */
  assign n1849_o = spike_i | delayed_spike;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:92:38  */
  assign n1850_o = -n1848_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:89:7  */
  assign n1851_o = n1849_o ? n1848_o : n1850_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:86:17  */
  assign n1852_o = n1847_o ? n1851_o : encoded_spike;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:86:17  */
  assign n1855_o = n1847_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:83:5  */
  assign n1858_o = overflow_strb_i ? 19'b0000000000000000000 : n1852_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:83:5  */
  assign n1860_o = overflow_strb_i ? 1'b1 : n1855_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1865_q <= 19'b0000000000000000000;
    else
      n1865_q <= next_encoded_spike;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1866_q <= 1'b0;
    else
      n1866_q <= next_encoded_spike_strb;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1867_q <= 1'b0;
    else
      n1867_q <= next_delayed_spike_strb;
  /* ../../../vhdl/atbs_core_floating_window/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1868_q <= 1'b0;
    else
      n1868_q <= next_delayed_spike;
endmodule

module time_measurement_18_262144
  (input  clock_i,
   input  reset_i,
   output overflow_strb_o,
   output [17:0] curr_time_o);
  wire [17:0] counter_value;
  wire [17:0] next_counter_value;
  wire overflow_strb;
  wire next_overflow_strb;
  wire n1809_o;
  wire [17:0] n1811_o;
  wire [17:0] n1813_o;
  wire n1816_o;
  reg [17:0] n1818_q;
  reg n1819_q;
  assign overflow_strb_o = overflow_strb; //(module output)
  assign curr_time_o = counter_value; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/time_measurement/rtl/time_measurement_ea.vhd:39:8  */
  assign counter_value = n1818_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/time_measurement/rtl/time_measurement_ea.vhd:40:8  */
  assign next_counter_value = n1813_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/time_measurement/rtl/time_measurement_ea.vhd:42:8  */
  assign overflow_strb = n1819_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/time_measurement/rtl/time_measurement_ea.vhd:43:8  */
  assign next_overflow_strb = n1816_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/time_measurement/rtl/time_measurement_ea.vhd:65:34  */
  assign n1809_o = counter_value == 18'b111111111111111111;
  /* ../../../vhdl/atbs_core_floating_window/time_measurement/rtl/time_measurement_ea.vhd:69:61  */
  assign n1811_o = counter_value + 18'b000000000000000001;
  /* ../../../vhdl/atbs_core_floating_window/time_measurement/rtl/time_measurement_ea.vhd:65:17  */
  assign n1813_o = n1809_o ? 18'b000000000000000000 : n1811_o;
  /* ../../../vhdl/atbs_core_floating_window/time_measurement/rtl/time_measurement_ea.vhd:65:17  */
  assign n1816_o = n1809_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/time_measurement/rtl/time_measurement_ea.vhd:52:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1818_q <= 18'b000000000000000000;
    else
      n1818_q <= next_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/time_measurement/rtl/time_measurement_ea.vhd:52:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1819_q <= 1'b0;
    else
      n1819_q <= next_overflow_strb;
endmodule

module sc_noc_generator_11
  (input  clock_i,
   input  reset_i,
   input  enable_i,
   input  [10:0] period_adj_i,
   input  [10:0] duty_cycle_adj_i,
   input  [10:0] overlap_adj_i,
   output sc_noc_1_o,
   output sc_noc_2_o);
  wire [10:0] counter_value;
  wire [10:0] next_counter_value;
  wire n1766_o;
  wire [10:0] n1768_o;
  wire [10:0] n1770_o;
  wire n1773_o;
  wire n1775_o;
  wire n1776_o;
  wire n1777_o;
  wire n1778_o;
  wire n1779_o;
  wire n1780_o;
  wire n1781_o;
  wire n1784_o;
  wire [10:0] n1785_o;
  wire [10:0] n1787_o;
  wire n1788_o;
  wire n1789_o;
  wire n1790_o;
  wire n1791_o;
  wire n1792_o;
  wire [10:0] n1794_o;
  reg [10:0] n1795_q;
  assign sc_noc_1_o = n1781_o; //(module output)
  assign sc_noc_2_o = n1792_o; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:34:8  */
  assign counter_value = n1795_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:35:8  */
  assign next_counter_value = n1770_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:56:34  */
  assign n1766_o = counter_value == period_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:59:61  */
  assign n1768_o = counter_value + 11'b00000000001;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:56:17  */
  assign n1770_o = n1766_o ? 11'b00000000000 : n1768_o;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:41  */
  assign n1773_o = $unsigned(counter_value) < $unsigned(duty_cycle_adj_i);
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:81  */
  assign n1775_o = duty_cycle_adj_i != 11'b00000000000;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:104  */
  assign n1776_o = counter_value == period_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:86  */
  assign n1777_o = n1776_o & n1775_o;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:140  */
  assign n1778_o = duty_cycle_adj_i == period_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:119  */
  assign n1779_o = n1778_o & n1777_o;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:60  */
  assign n1780_o = n1773_o | n1779_o;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:21  */
  assign n1781_o = n1780_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:42  */
  assign n1784_o = $unsigned(counter_value) > $unsigned(overlap_adj_i);
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:94  */
  assign n1785_o = overlap_adj_i + duty_cycle_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:113  */
  assign n1787_o = n1785_o - 11'b00000000001;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:76  */
  assign n1788_o = $unsigned(counter_value) <= $unsigned(n1787_o);
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:58  */
  assign n1789_o = n1788_o & n1784_o;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:137  */
  assign n1790_o = counter_value == overlap_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:119  */
  assign n1791_o = n1789_o | n1790_o;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:21  */
  assign n1792_o = n1791_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:43:17  */
  assign n1794_o = enable_i ? next_counter_value : counter_value;
  /* ../../../vhdl/atbs_core_floating_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:43:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1795_q <= 11'b00000000000;
    else
      n1795_q <= n1794_o;
endmodule

module analog_trig_4
  (input  clock_i,
   input  reset_i,
   input  enable_i,
   input  [3:0] period_adj_i,
   input  [3:0] duty_cycle_adj_i,
   output analog_trigger_o);
  wire [3:0] counter_value;
  wire [3:0] next_counter_value;
  wire n1737_o;
  wire [3:0] n1739_o;
  wire [3:0] n1741_o;
  wire n1744_o;
  wire n1746_o;
  wire n1747_o;
  wire n1748_o;
  wire n1749_o;
  wire n1750_o;
  wire n1751_o;
  wire n1752_o;
  wire [3:0] n1754_o;
  reg [3:0] n1755_q;
  assign analog_trigger_o = n1752_o; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:31:8  */
  assign counter_value = n1755_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:32:8  */
  assign next_counter_value = n1741_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:56:34  */
  assign n1737_o = counter_value == period_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:59:61  */
  assign n1739_o = counter_value + 4'b0001;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:56:17  */
  assign n1741_o = n1737_o ? 4'b0000 : n1739_o;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:47  */
  assign n1744_o = $unsigned(counter_value) < $unsigned(duty_cycle_adj_i);
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:87  */
  assign n1746_o = duty_cycle_adj_i != 4'b0000;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:110  */
  assign n1747_o = counter_value == period_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:92  */
  assign n1748_o = n1747_o & n1746_o;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:146  */
  assign n1749_o = duty_cycle_adj_i == period_adj_i;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:125  */
  assign n1750_o = n1749_o & n1748_o;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:66  */
  assign n1751_o = n1744_o | n1750_o;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:27  */
  assign n1752_o = n1751_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:43:17  */
  assign n1754_o = enable_i ? next_counter_value : counter_value;
  /* ../../../vhdl/atbs_core_floating_window/analog_trigger/rtl/analog_trigger_ea.vhd:43:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1755_q <= 4'b0000;
    else
      n1755_q <= n1754_o;
endmodule

module dac_control_8_8_0_8
  (input  clock_i,
   input  reset_i,
   input  enable_dac_i,
   input  clear_dac_i,
   input  adaptive_mode_i,
   input  select_tbs_delta_steps_i,
   input  direction_i,
   input  update_dac_strb_i,
   input  [7:0] delta_steps_i,
   output [7:0] dac_counter_value_o,
   output dac_finished_strb_o,
   output dac_pd_o,
   output dac_wr_o,
   output dac_clr_o,
   output [7:0] dac_o);
  wire state;
  wire next_state;
  wire select_dac_value;
  wire next_select_dac_value;
  wire [8:0] dac_init_value;
  wire [8:0] next_dac_init_value;
  wire [8:0] dac_counter_value;
  wire [8:0] next_dac_counter_value;
  wire [8:0] dac_counter_value_out;
  wire dac_counter_strb;
  wire delayed_dac_counter_strb;
  wire dac_change_in_progress;
  wire next_dac_change_in_progress;
  wire [2:0] settling_counter_value;
  wire [2:0] next_settling_counter_value;
  wire dac_finished_strb;
  wire n1622_o;
  wire n1624_o;
  wire n1625_o;
  wire n1627_o;
  wire n1629_o;
  wire [1:0] n1630_o;
  reg n1632_o;
  reg n1635_o;
  reg [8:0] n1637_o;
  wire n1640_o;
  wire [8:0] n1641_o;
  wire [8:0] n1642_o;
  wire n1644_o;
  wire [8:0] n1645_o;
  wire [8:0] n1646_o;
  wire n1648_o;
  wire [8:0] n1649_o;
  wire [8:0] n1650_o;
  wire [8:0] n1651_o;
  wire [8:0] n1653_o;
  wire n1654_o;
  wire n1655_o;
  wire [8:0] n1656_o;
  wire n1657_o;
  wire [8:0] n1658_o;
  wire n1659_o;
  wire [8:0] n1660_o;
  wire [8:0] n1661_o;
  wire [8:0] n1662_o;
  wire [8:0] n1664_o;
  wire [8:0] n1665_o;
  wire n1668_o;
  wire [8:0] n1669_o;
  wire n1671_o;
  wire n1673_o;
  wire n1675_o;
  wire n1676_o;
  wire n1679_o;
  wire [8:0] n1680_o;
  wire n1681_o;
  wire n1686_o;
  wire n1687_o;
  wire n1688_o;
  wire n1690_o;
  wire n1692_o;
  wire n1696_o;
  wire n1697_o;
  wire [2:0] n1699_o;
  wire [2:0] n1701_o;
  wire n1705_o;
  wire n1706_o;
  wire n1707_o;
  wire sync_chain_0_sync_o;
  wire n1710_o;
  wire [7:0] n1718_o;
  wire [7:0] n1719_o;
  reg n1720_q;
  reg n1721_q;
  reg [8:0] n1722_q;
  reg [8:0] n1723_q;
  wire [8:0] n1724_o;
  reg [8:0] n1725_q;
  reg n1726_q;
  reg [2:0] n1727_q;
  assign dac_counter_value_o = n1718_o; //(module output)
  assign dac_finished_strb_o = dac_finished_strb; //(module output)
  assign dac_pd_o = enable_dac_i; //(module output)
  assign dac_wr_o = delayed_dac_counter_strb; //(module output)
  assign dac_clr_o = clear_dac_i; //(module output)
  assign dac_o = n1719_o; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:58:8  */
  assign state = n1720_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:59:8  */
  assign next_state = n1632_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:62:8  */
  assign select_dac_value = n1721_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:63:8  */
  assign next_select_dac_value = n1635_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:66:8  */
  assign dac_init_value = n1722_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:67:8  */
  assign next_dac_init_value = n1637_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:70:8  */
  assign dac_counter_value = n1723_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:71:8  */
  assign next_dac_counter_value = n1680_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:72:8  */
  assign dac_counter_value_out = n1725_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:74:8  */
  assign dac_counter_strb = n1681_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:75:8  */
  assign delayed_dac_counter_strb = n1710_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:77:8  */
  assign dac_change_in_progress = n1726_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:78:8  */
  assign next_dac_change_in_progress = n1692_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:81:8  */
  assign settling_counter_value = n1727_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:82:8  */
  assign next_settling_counter_value = n1701_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:84:8  */
  assign dac_finished_strb = n1707_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:140:9  */
  assign n1622_o = update_dac_strb_i ? 1'b1 : state;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:117:7  */
  assign n1624_o = state == 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:149:25  */
  assign n1625_o = ~enable_dac_i;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:149:9  */
  assign n1627_o = n1625_o ? 1'b0 : state;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:144:7  */
  assign n1629_o = state == 1'b1;
  assign n1630_o = {n1629_o, n1624_o};
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:116:5  */
  always @*
    case (n1630_o)
      2'b10: n1632_o = n1627_o;
      2'b01: n1632_o = n1622_o;
      default: n1632_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:116:5  */
  always @*
    case (n1630_o)
      2'b10: n1635_o = 1'b1;
      2'b01: n1635_o = 1'b0;
      default: n1635_o = select_dac_value;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:116:5  */
  always @*
    case (n1630_o)
      2'b10: n1637_o = dac_init_value;
      2'b01: n1637_o = 9'b010000000;
      default: n1637_o = dac_init_value;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:168:28  */
  assign n1640_o = update_dac_strb_i & direction_i;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:169:31  */
  assign n1641_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:169:31  */
  assign n1642_o = dac_counter_value + n1641_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:169:48  */
  assign n1644_o = n1642_o == 9'b011111111;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:171:34  */
  assign n1645_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:171:34  */
  assign n1646_o = dac_counter_value + n1645_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:171:51  */
  assign n1648_o = $unsigned(n1646_o) < $unsigned(9'b011111111);
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:172:55  */
  assign n1649_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:172:55  */
  assign n1650_o = dac_counter_value + n1649_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:171:9  */
  assign n1651_o = n1648_o ? n1650_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:169:9  */
  assign n1653_o = n1644_o ? 9'b011111111 : n1651_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:175:25  */
  assign n1654_o = ~direction_i;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:175:31  */
  assign n1655_o = update_dac_strb_i & n1654_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:176:30  */
  assign n1656_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:176:30  */
  assign n1657_o = $unsigned(dac_counter_value) <= $unsigned(n1656_o);
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:178:33  */
  assign n1658_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:178:33  */
  assign n1659_o = $unsigned(dac_counter_value) > $unsigned(n1658_o);
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:179:55  */
  assign n1660_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:179:55  */
  assign n1661_o = dac_counter_value - n1660_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:178:9  */
  assign n1662_o = n1659_o ? n1661_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:176:9  */
  assign n1664_o = n1657_o ? 9'b000000000 : n1662_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:175:7  */
  assign n1665_o = n1655_o ? n1664_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:175:7  */
  assign n1668_o = n1655_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:168:7  */
  assign n1669_o = n1640_o ? n1653_o : n1665_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:168:7  */
  assign n1671_o = n1640_o ? 1'b1 : n1668_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:187:16  */
  assign n1673_o = state == 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:187:42  */
  assign n1675_o = next_state == 1'b1;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:187:27  */
  assign n1676_o = n1675_o & n1673_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:187:7  */
  assign n1679_o = n1676_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:167:5  */
  assign n1680_o = select_dac_value ? n1669_o : dac_init_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:167:5  */
  assign n1681_o = select_dac_value ? n1671_o : n1679_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:201:34  */
  assign n1686_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:201:79  */
  assign n1687_o = ~dac_counter_strb;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:201:58  */
  assign n1688_o = n1687_o & n1686_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:201:5  */
  assign n1690_o = n1688_o ? 1'b0 : dac_change_in_progress;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:199:5  */
  assign n1692_o = dac_counter_strb ? 1'b1 : n1690_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:214:43  */
  assign n1696_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:214:67  */
  assign n1697_o = n1696_o | dac_counter_strb;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:217:79  */
  assign n1699_o = settling_counter_value + 3'b001;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:214:17  */
  assign n1701_o = n1697_o ? 3'b000 : n1699_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:221:57  */
  assign n1705_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:221:81  */
  assign n1706_o = dac_change_in_progress & n1705_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:221:28  */
  assign n1707_o = n1706_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:228:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(dac_counter_strb),
    .sync_o(sync_chain_0_sync_o));
  assign n1710_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:256:26  */
  assign n1718_o = dac_counter_value_out[7:0];  // trunc
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:261:30  */
  assign n1719_o = dac_counter_value_out[7:0];  // trunc
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1720_q <= 1'b0;
    else
      n1720_q <= next_state;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1721_q <= 1'b0;
    else
      n1721_q <= next_select_dac_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1722_q <= 9'b000000000;
    else
      n1722_q <= next_dac_init_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1723_q <= 9'b000000000;
    else
      n1723_q <= next_dac_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:247:5  */
  assign n1724_o = delayed_dac_counter_strb ? dac_counter_value : dac_counter_value_out;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:247:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1725_q <= 9'b000000000;
    else
      n1725_q <= n1724_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1726_q <= 1'b0;
    else
      n1726_q <= next_dac_change_in_progress;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1727_q <= 3'b000;
    else
      n1727_q <= next_settling_counter_value;
endmodule

module dac_control_8_8_1_8
  (input  clock_i,
   input  reset_i,
   input  enable_dac_i,
   input  clear_dac_i,
   input  adaptive_mode_i,
   input  select_tbs_delta_steps_i,
   input  direction_i,
   input  update_dac_strb_i,
   input  [7:0] delta_steps_i,
   output [7:0] dac_counter_value_o,
   output dac_finished_strb_o,
   output dac_pd_o,
   output dac_wr_o,
   output dac_clr_o,
   output [7:0] dac_o);
  wire state;
  wire next_state;
  wire select_dac_value;
  wire next_select_dac_value;
  wire [8:0] dac_init_value;
  wire [8:0] next_dac_init_value;
  wire [8:0] dac_counter_value;
  wire [8:0] next_dac_counter_value;
  wire [8:0] dac_counter_value_out;
  wire dac_counter_strb;
  wire delayed_dac_counter_strb;
  wire dac_change_in_progress;
  wire next_dac_change_in_progress;
  wire [2:0] settling_counter_value;
  wire [2:0] next_settling_counter_value;
  wire dac_finished_strb;
  wire [7:0] n1479_o;
  wire [8:0] n1481_o;
  wire [8:0] n1482_o;
  wire [8:0] n1484_o;
  wire [8:0] n1486_o;
  wire n1488_o;
  wire n1490_o;
  wire n1491_o;
  wire n1493_o;
  wire n1495_o;
  wire [1:0] n1496_o;
  reg n1498_o;
  reg n1501_o;
  reg [8:0] n1502_o;
  wire n1505_o;
  wire [8:0] n1506_o;
  wire [8:0] n1507_o;
  wire n1509_o;
  wire [8:0] n1510_o;
  wire [8:0] n1511_o;
  wire n1513_o;
  wire [8:0] n1514_o;
  wire [8:0] n1515_o;
  wire [8:0] n1516_o;
  wire [8:0] n1518_o;
  wire n1519_o;
  wire n1520_o;
  wire [8:0] n1521_o;
  wire n1522_o;
  wire [8:0] n1523_o;
  wire n1524_o;
  wire [8:0] n1525_o;
  wire [8:0] n1526_o;
  wire [8:0] n1527_o;
  wire [8:0] n1529_o;
  wire [8:0] n1530_o;
  wire n1533_o;
  wire [8:0] n1534_o;
  wire n1536_o;
  wire n1538_o;
  wire n1540_o;
  wire n1541_o;
  wire n1544_o;
  wire [8:0] n1545_o;
  wire n1546_o;
  wire n1551_o;
  wire n1552_o;
  wire n1553_o;
  wire n1555_o;
  wire n1557_o;
  wire n1561_o;
  wire n1562_o;
  wire [2:0] n1564_o;
  wire [2:0] n1566_o;
  wire n1570_o;
  wire n1571_o;
  wire n1572_o;
  wire sync_chain_0_sync_o;
  wire n1575_o;
  wire [7:0] n1583_o;
  wire [7:0] n1584_o;
  reg n1585_q;
  reg n1586_q;
  reg [8:0] n1587_q;
  reg [8:0] n1588_q;
  wire [8:0] n1589_o;
  reg [8:0] n1590_q;
  reg n1591_q;
  reg [2:0] n1592_q;
  assign dac_counter_value_o = n1583_o; //(module output)
  assign dac_finished_strb_o = dac_finished_strb; //(module output)
  assign dac_pd_o = enable_dac_i; //(module output)
  assign dac_wr_o = delayed_dac_counter_strb; //(module output)
  assign dac_clr_o = clear_dac_i; //(module output)
  assign dac_o = n1584_o; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:58:8  */
  assign state = n1585_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:59:8  */
  assign next_state = n1498_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:62:8  */
  assign select_dac_value = n1586_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:63:8  */
  assign next_select_dac_value = n1501_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:66:8  */
  assign dac_init_value = n1587_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:67:8  */
  assign next_dac_init_value = n1502_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:70:8  */
  assign dac_counter_value = n1588_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:71:8  */
  assign next_dac_counter_value = n1545_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:72:8  */
  assign dac_counter_value_out = n1590_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:74:8  */
  assign dac_counter_strb = n1546_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:75:8  */
  assign delayed_dac_counter_strb = n1575_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:77:8  */
  assign dac_change_in_progress = n1591_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:78:8  */
  assign next_dac_change_in_progress = n1557_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:81:8  */
  assign settling_counter_value = n1592_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:82:8  */
  assign next_settling_counter_value = n1566_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:84:8  */
  assign dac_finished_strb = n1572_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:127:92  */
  assign n1479_o = delta_steps_i << 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:127:90  */
  assign n1481_o = {1'b0, n1479_o};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:127:90  */
  assign n1482_o = 9'b010000000 + n1481_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:126:13  */
  assign n1484_o = select_tbs_delta_steps_i ? n1482_o : 9'b010000010;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:123:11  */
  assign n1486_o = adaptive_mode_i ? 9'b010000010 : n1484_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:140:9  */
  assign n1488_o = update_dac_strb_i ? 1'b1 : state;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:117:7  */
  assign n1490_o = state == 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:149:25  */
  assign n1491_o = ~enable_dac_i;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:149:9  */
  assign n1493_o = n1491_o ? 1'b0 : state;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:144:7  */
  assign n1495_o = state == 1'b1;
  assign n1496_o = {n1495_o, n1490_o};
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:116:5  */
  always @*
    case (n1496_o)
      2'b10: n1498_o = n1493_o;
      2'b01: n1498_o = n1488_o;
      default: n1498_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:116:5  */
  always @*
    case (n1496_o)
      2'b10: n1501_o = 1'b1;
      2'b01: n1501_o = 1'b0;
      default: n1501_o = select_dac_value;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:116:5  */
  always @*
    case (n1496_o)
      2'b10: n1502_o = dac_init_value;
      2'b01: n1502_o = n1486_o;
      default: n1502_o = dac_init_value;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:168:28  */
  assign n1505_o = update_dac_strb_i & direction_i;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:169:31  */
  assign n1506_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:169:31  */
  assign n1507_o = dac_counter_value + n1506_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:169:48  */
  assign n1509_o = n1507_o == 9'b011111111;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:171:34  */
  assign n1510_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:171:34  */
  assign n1511_o = dac_counter_value + n1510_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:171:51  */
  assign n1513_o = $unsigned(n1511_o) < $unsigned(9'b011111111);
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:172:55  */
  assign n1514_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:172:55  */
  assign n1515_o = dac_counter_value + n1514_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:171:9  */
  assign n1516_o = n1513_o ? n1515_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:169:9  */
  assign n1518_o = n1509_o ? 9'b011111111 : n1516_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:175:25  */
  assign n1519_o = ~direction_i;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:175:31  */
  assign n1520_o = update_dac_strb_i & n1519_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:176:30  */
  assign n1521_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:176:30  */
  assign n1522_o = $unsigned(dac_counter_value) <= $unsigned(n1521_o);
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:178:33  */
  assign n1523_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:178:33  */
  assign n1524_o = $unsigned(dac_counter_value) > $unsigned(n1523_o);
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:179:55  */
  assign n1525_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:179:55  */
  assign n1526_o = dac_counter_value - n1525_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:178:9  */
  assign n1527_o = n1524_o ? n1526_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:176:9  */
  assign n1529_o = n1522_o ? 9'b000000000 : n1527_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:175:7  */
  assign n1530_o = n1520_o ? n1529_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:175:7  */
  assign n1533_o = n1520_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:168:7  */
  assign n1534_o = n1505_o ? n1518_o : n1530_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:168:7  */
  assign n1536_o = n1505_o ? 1'b1 : n1533_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:187:16  */
  assign n1538_o = state == 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:187:42  */
  assign n1540_o = next_state == 1'b1;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:187:27  */
  assign n1541_o = n1540_o & n1538_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:187:7  */
  assign n1544_o = n1541_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:167:5  */
  assign n1545_o = select_dac_value ? n1534_o : dac_init_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:167:5  */
  assign n1546_o = select_dac_value ? n1536_o : n1544_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:201:34  */
  assign n1551_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:201:79  */
  assign n1552_o = ~dac_counter_strb;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:201:58  */
  assign n1553_o = n1552_o & n1551_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:201:5  */
  assign n1555_o = n1553_o ? 1'b0 : dac_change_in_progress;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:199:5  */
  assign n1557_o = dac_counter_strb ? 1'b1 : n1555_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:214:43  */
  assign n1561_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:214:67  */
  assign n1562_o = n1561_o | dac_counter_strb;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:217:79  */
  assign n1564_o = settling_counter_value + 3'b001;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:214:17  */
  assign n1566_o = n1562_o ? 3'b000 : n1564_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:221:57  */
  assign n1570_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:221:81  */
  assign n1571_o = dac_change_in_progress & n1570_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:221:28  */
  assign n1572_o = n1571_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:228:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(dac_counter_strb),
    .sync_o(sync_chain_0_sync_o));
  assign n1575_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:256:26  */
  assign n1583_o = dac_counter_value_out[7:0];  // trunc
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:261:30  */
  assign n1584_o = dac_counter_value_out[7:0];  // trunc
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1585_q <= 1'b0;
    else
      n1585_q <= next_state;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1586_q <= 1'b0;
    else
      n1586_q <= next_select_dac_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1587_q <= 9'b000000000;
    else
      n1587_q <= next_dac_init_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1588_q <= 9'b000000000;
    else
      n1588_q <= next_dac_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:247:5  */
  assign n1589_o = delayed_dac_counter_strb ? dac_counter_value : dac_counter_value_out;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:247:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1590_q <= 9'b000000000;
    else
      n1590_q <= n1589_o;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1591_q <= 1'b0;
    else
      n1591_q <= next_dac_change_in_progress;
  /* ../../../vhdl/atbs_core_floating_window/dac_control/rtl/dac_control_ea.vhd:97:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1592_q <= 3'b000;
    else
      n1592_q <= next_settling_counter_value;
endmodule

module adaptive_threshold_control_19_18_8_8_255_0_3_2
  (input  clock_i,
   input  reset_i,
   input  sync_reset_i,
   input  overflow_strb_i,
   input  [17:0] curr_time_i,
   input  spike_i,
   input  spike_strb_i,
   input  [2:0] d_max_i,
   input  [2:0] d_min_i,
   input  [18:0] win_length_i,
   input  [7:0] max_delta_steps_i,
   output increasing_en_o,
   output decreasing_en_o,
   output direction_upper_o,
   output direction_lower_o,
   output delta_steps_upper_strb_o,
   output delta_steps_lower_strb_o,
   output [7:0] delta_steps_upper_o,
   output [7:0] delta_steps_lower_o,
   output adapt_on_overflow_strb_o);
  wire [29:0] spikes;
  wire spikes_strb;
  wire weylsd_strb;
  wire reset_delta;
  wire adapt_on_overflow_strb;
  wire adapt_on_overflow;
  wire next_adapt_on_overflow;
  wire is_empty_interval;
  wire start_weylsd_calc;
  wire adaptive_strb;
  wire adaptive_limited_strb;
  wire widen_threshold_strb;
  wire delta_steps_strb;
  wire direction_upper;
  wire direction_lower;
  wire delta_steps_upper_strb;
  wire delta_steps_lower_strb;
  wire [7:0] delta_steps;
  wire [7:0] prev_delta_steps;
  wire [7:0] delta_steps_limited;
  wire [7:0] delta_steps_sum;
  wire [7:0] delta_steps_upper;
  wire [7:0] delta_steps_lower;
  wire [8:0] steps_to_upper_v;
  wire [8:0] steps_to_lower_v;
  wire [2:0] weylsd;
  wire next_adaptive_strb;
  wire next_widen_threshold_strb;
  wire next_delta_steps_strb;
  wire [8:0] next_steps_to_upper_v;
  wire [8:0] next_steps_to_lower_v;
  wire [7:0] next_delta_steps;
  wire [7:0] next_prev_delta_steps;
  wire next_is_empty_interval;
  wire [29:0] spike_shift_reg_0_spikes_o;
  wire spike_shift_reg_0_spikes_strb_o;
  wire [2:0] weyls_discrepancy_0_weylsd_o;
  wire weyls_discrepancy_0_weylsd_strb_o;
  wire n1306_o;
  wire n1308_o;
  wire n1312_o;
  wire n1314_o;
  wire n1318_o;
  wire n1319_o;
  wire n1320_o;
  wire n1321_o;
  wire n1323_o;
  wire n1324_o;
  wire n1325_o;
  wire [7:0] n1327_o;
  wire n1328_o;
  wire n1330_o;
  wire n1331_o;
  wire [7:0] n1333_o;
  wire n1336_o;
  wire [7:0] n1337_o;
  wire n1339_o;
  wire n1342_o;
  wire [7:0] n1343_o;
  wire n1345_o;
  wire n1348_o;
  wire n1352_o;
  wire [7:0] n1354_o;
  wire [7:0] n1355_o;
  wire [7:0] n1357_o;
  wire [7:0] n1359_o;
  wire [7:0] n1360_o;
  wire [7:0] n1362_o;
  wire n1364_o;
  wire [8:0] n1365_o;
  wire n1366_o;
  wire n1367_o;
  wire [7:0] n1368_o;
  wire [8:0] n1369_o;
  wire n1370_o;
  wire n1371_o;
  wire n1372_o;
  wire [7:0] n1373_o;
  wire n1375_o;
  wire n1377_o;
  wire [7:0] n1378_o;
  wire n1379_o;
  wire n1381_o;
  wire [7:0] n1382_o;
  wire n1384_o;
  wire n1386_o;
  wire [7:0] n1387_o;
  wire n1390_o;
  wire n1392_o;
  wire n1394_o;
  wire [7:0] n1395_o;
  wire [7:0] n1396_o;
  wire n1397_o;
  wire n1398_o;
  wire [7:0] n1399_o;
  wire [7:0] n1400_o;
  wire n1401_o;
  wire n1402_o;
  wire [7:0] n1403_o;
  wire [7:0] n1404_o;
  wire n1405_o;
  wire n1406_o;
  wire n1407_o;
  wire n1408_o;
  wire n1410_o;
  wire n1411_o;
  wire n1412_o;
  wire [8:0] n1414_o;
  wire [8:0] n1415_o;
  wire [8:0] n1416_o;
  wire [8:0] n1417_o;
  wire [8:0] n1418_o;
  wire [8:0] n1419_o;
  wire [8:0] n1420_o;
  wire [8:0] n1421_o;
  wire [8:0] n1422_o;
  wire [8:0] n1423_o;
  wire [8:0] n1424_o;
  wire [8:0] n1425_o;
  wire [8:0] n1427_o;
  wire [8:0] n1429_o;
  wire n1433_o;
  wire n1434_o;
  wire n1438_o;
  wire n1439_o;
  reg n1441_q;
  reg n1442_q;
  reg n1443_q;
  reg n1444_q;
  reg n1445_q;
  reg [7:0] n1446_q;
  reg [7:0] n1447_q;
  reg [8:0] n1448_q;
  reg [8:0] n1449_q;
  assign increasing_en_o = n1434_o; //(module output)
  assign decreasing_en_o = n1439_o; //(module output)
  assign direction_upper_o = direction_upper; //(module output)
  assign direction_lower_o = direction_lower; //(module output)
  assign delta_steps_upper_strb_o = delta_steps_upper_strb; //(module output)
  assign delta_steps_lower_strb_o = delta_steps_lower_strb; //(module output)
  assign delta_steps_upper_o = delta_steps_upper; //(module output)
  assign delta_steps_lower_o = delta_steps_lower; //(module output)
  assign adapt_on_overflow_strb_o = adapt_on_overflow_strb; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:65:8  */
  assign spikes = spike_shift_reg_0_spikes_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:66:8  */
  assign spikes_strb = spike_shift_reg_0_spikes_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:67:8  */
  assign weylsd_strb = weyls_discrepancy_0_weylsd_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:68:8  */
  assign reset_delta = n1384_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:69:8  */
  assign adapt_on_overflow_strb = n1319_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:70:8  */
  assign adapt_on_overflow = n1441_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:71:8  */
  assign next_adapt_on_overflow = n1314_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:72:8  */
  assign is_empty_interval = n1442_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:73:8  */
  assign start_weylsd_calc = n1321_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:74:8  */
  assign adaptive_strb = n1443_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:75:8  */
  assign adaptive_limited_strb = n1386_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:76:8  */
  assign widen_threshold_strb = n1444_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:77:8  */
  assign delta_steps_strb = n1445_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:78:8  */
  assign direction_upper = n1411_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:79:8  */
  assign direction_lower = n1412_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:81:8  */
  assign delta_steps_upper_strb = n1397_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:82:8  */
  assign delta_steps_lower_strb = n1394_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:84:8  */
  assign delta_steps = n1446_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:85:8  */
  assign prev_delta_steps = n1447_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:86:8  */
  assign delta_steps_limited = n1387_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:87:8  */
  assign delta_steps_sum = n1362_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:88:8  */
  assign delta_steps_upper = n1403_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:89:8  */
  assign delta_steps_lower = n1404_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:91:8  */
  assign steps_to_upper_v = n1448_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:92:8  */
  assign steps_to_lower_v = n1449_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:93:8  */
  assign weylsd = weyls_discrepancy_0_weylsd_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:95:8  */
  assign next_adaptive_strb = n1345_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:96:8  */
  assign next_widen_threshold_strb = n1348_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:97:8  */
  assign next_delta_steps_strb = n1352_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:98:8  */
  assign next_steps_to_upper_v = n1427_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:99:8  */
  assign next_steps_to_lower_v = n1429_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:100:8  */
  assign next_delta_steps = n1360_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:101:8  */
  assign next_prev_delta_steps = n1359_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:102:8  */
  assign next_is_empty_interval = n1308_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:133:3  */
  spike_shift_reg_19_18 spike_shift_reg_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .overflow_strb_i(overflow_strb_i),
    .curr_time_i(curr_time_i),
    .spike_i(spike_i),
    .spike_strb_i(spike_strb_i),
    .win_length_i(win_length_i),
    .spikes_o(spike_shift_reg_0_spikes_o),
    .spikes_strb_o(spike_shift_reg_0_spikes_strb_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:153:3  */
  weyls_discrepancy_8_3_6 weyls_discrepancy_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .spikes_i(spikes),
    .spikes_strb_i(start_weylsd_calc),
    .weylsd_o(weyls_discrepancy_0_weylsd_o),
    .weylsd_strb_o(weyls_discrepancy_0_weylsd_strb_o));
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:177:5  */
  assign n1306_o = spike_strb_i ? 1'b0 : is_empty_interval;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:175:5  */
  assign n1308_o = overflow_strb_i ? 1'b1 : n1306_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:191:5  */
  assign n1312_o = delta_steps_strb ? 1'b0 : adapt_on_overflow;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:189:5  */
  assign n1314_o = adapt_on_overflow_strb ? 1'b1 : n1312_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:198:50  */
  assign n1318_o = delta_steps == 8'b00000001;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:198:33  */
  assign n1319_o = n1318_o ? 1'b0 : n1320_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:198:76  */
  assign n1320_o = overflow_strb_i & is_empty_interval;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:199:36  */
  assign n1321_o = spikes_strb | adapt_on_overflow_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:18  */
  assign n1323_o = $unsigned(weylsd) > $unsigned(d_max_i);
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:46  */
  assign n1324_o = $unsigned(delta_steps) < $unsigned(max_delta_steps_i);
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:29  */
  assign n1325_o = n1324_o & n1323_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:220:36  */
  assign n1327_o = delta_steps << 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:221:21  */
  assign n1328_o = $unsigned(weylsd) < $unsigned(d_min_i);
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:221:49  */
  assign n1330_o = $unsigned(delta_steps) > $unsigned(8'b00000001);
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:221:32  */
  assign n1331_o = n1330_o & n1328_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:223:36  */
  assign n1333_o = delta_steps >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:221:7  */
  assign n1336_o = n1331_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:221:7  */
  assign n1337_o = n1331_o ? n1333_o : delta_steps;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:7  */
  assign n1339_o = n1325_o ? 1'b1 : n1336_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:7  */
  assign n1342_o = n1325_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:7  */
  assign n1343_o = n1325_o ? n1327_o : n1337_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:213:5  */
  assign n1345_o = weylsd_strb ? n1339_o : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:213:5  */
  assign n1348_o = weylsd_strb ? n1342_o : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:213:5  */
  assign n1352_o = weylsd_strb ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:213:5  */
  assign n1354_o = weylsd_strb ? n1343_o : delta_steps;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:213:5  */
  assign n1355_o = weylsd_strb ? delta_steps : prev_delta_steps;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:227:5  */
  assign n1357_o = sync_reset_i ? 8'b00000001 : n1354_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:227:5  */
  assign n1359_o = sync_reset_i ? 8'b00000000 : n1355_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:234:5  */
  assign n1360_o = reset_delta ? prev_delta_steps : n1357_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:240:41  */
  assign n1362_o = delta_steps + prev_delta_steps;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:249:26  */
  assign n1364_o = ~adapt_on_overflow;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:30  */
  assign n1365_o = {1'b0, delta_steps};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:28  */
  assign n1366_o = $unsigned(steps_to_upper_v) < $unsigned(n1365_o);
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:72  */
  assign n1367_o = spike_i & n1366_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:252:32  */
  assign n1368_o = steps_to_upper_v[7:0];  // trunc
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:33  */
  assign n1369_o = {1'b0, delta_steps};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:31  */
  assign n1370_o = $unsigned(steps_to_lower_v) < $unsigned(n1369_o);
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:88  */
  assign n1371_o = ~spike_i;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:75  */
  assign n1372_o = n1371_o & n1370_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:257:32  */
  assign n1373_o = steps_to_lower_v[7:0];  // trunc
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:7  */
  assign n1375_o = n1372_o ? adaptive_strb : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:7  */
  assign n1377_o = n1372_o ? 1'b0 : adaptive_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:7  */
  assign n1378_o = n1372_o ? n1373_o : delta_steps;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:7  */
  assign n1379_o = n1367_o ? adaptive_strb : n1375_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:7  */
  assign n1381_o = n1367_o ? 1'b0 : n1377_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:7  */
  assign n1382_o = n1367_o ? n1368_o : n1378_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:249:5  */
  assign n1384_o = n1364_o ? n1379_o : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:249:5  */
  assign n1386_o = n1364_o ? n1381_o : adaptive_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:249:5  */
  assign n1387_o = n1364_o ? n1382_o : delta_steps;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:26  */
  assign n1390_o = ~adapt_on_overflow;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:280:11  */
  assign n1392_o = spike_i ? delta_steps_strb : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1394_o = n1406_o ? 1'b0 : delta_steps_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:287:11  */
  assign n1395_o = spike_i ? delta_steps_limited : delta_steps_sum;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:287:11  */
  assign n1396_o = spike_i ? delta_steps_sum : delta_steps_limited;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1397_o = n1405_o ? n1392_o : delta_steps_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:278:9  */
  assign n1398_o = spike_i & widen_threshold_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:278:9  */
  assign n1399_o = widen_threshold_strb ? delta_steps_limited : n1395_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:278:9  */
  assign n1400_o = widen_threshold_strb ? delta_steps_limited : n1396_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:276:7  */
  assign n1401_o = widen_threshold_strb & adaptive_limited_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:276:7  */
  assign n1402_o = n1398_o & adaptive_limited_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1403_o = n1407_o ? n1399_o : delta_steps_limited;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1404_o = n1408_o ? n1400_o : delta_steps_limited;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1405_o = n1401_o & n1390_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1406_o = n1402_o & n1390_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1407_o = adaptive_limited_strb & n1390_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1408_o = adaptive_limited_strb & n1390_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:299:36  */
  assign n1410_o = ~adapt_on_overflow;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:299:31  */
  assign n1411_o = spike_i & n1410_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:300:31  */
  assign n1412_o = spike_i | adapt_on_overflow;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:314:53  */
  assign n1414_o = {1'b0, delta_steps_lower};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:314:51  */
  assign n1415_o = steps_to_lower_v + n1414_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:317:53  */
  assign n1416_o = {1'b0, delta_steps_lower};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:317:51  */
  assign n1417_o = steps_to_lower_v - n1416_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:313:7  */
  assign n1418_o = direction_lower ? n1415_o : n1417_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:312:5  */
  assign n1419_o = delta_steps_lower_strb ? n1418_o : steps_to_lower_v;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:323:53  */
  assign n1420_o = {1'b0, delta_steps_upper};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:323:51  */
  assign n1421_o = steps_to_upper_v - n1420_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:326:53  */
  assign n1422_o = {1'b0, delta_steps_upper};  //  uext
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:326:51  */
  assign n1423_o = steps_to_upper_v + n1422_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:322:7  */
  assign n1424_o = direction_upper ? n1421_o : n1423_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:321:5  */
  assign n1425_o = delta_steps_upper_strb ? n1424_o : steps_to_upper_v;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:330:5  */
  assign n1427_o = sync_reset_i ? 9'b001111101 : n1425_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:330:5  */
  assign n1429_o = sync_reset_i ? 9'b001111111 : n1419_o;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:339:48  */
  assign n1433_o = steps_to_upper_v == 9'b000000000;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:339:26  */
  assign n1434_o = n1433_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:340:48  */
  assign n1438_o = steps_to_lower_v == 9'b000000000;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:340:26  */
  assign n1439_o = n1438_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1441_q <= 1'b0;
    else
      n1441_q <= next_adapt_on_overflow;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1442_q <= 1'b0;
    else
      n1442_q <= next_is_empty_interval;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1443_q <= 1'b0;
    else
      n1443_q <= next_adaptive_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1444_q <= 1'b0;
    else
      n1444_q <= next_widen_threshold_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1445_q <= 1'b0;
    else
      n1445_q <= next_delta_steps_strb;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1446_q <= 8'b00000001;
    else
      n1446_q <= next_delta_steps;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1447_q <= 8'b00000001;
    else
      n1447_q <= next_prev_delta_steps;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1448_q <= 9'b001111101;
    else
      n1448_q <= next_steps_to_upper_v;
  /* ../../../vhdl/atbs_core_floating_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1449_q <= 9'b001111111;
    else
      n1449_q <= next_steps_to_lower_v;
endmodule

module spike_detector
  (input  clock_i,
   input  reset_i,
   input  detection_en_i,
   input  comp_upper_i,
   input  comp_lower_i,
   input  change_upper_strb_i,
   input  change_lower_strb_i,
   input  stopped_changing_upper_strb_i,
   input  stopped_changing_lower_strb_i,
   input  increasing_en_i,
   input  decreasing_en_i,
   input  pause_detection_strb_i,
   output spike_o,
   output spike_strb_o);
  wire spike;
  wire hold_spike;
  wire spike_strb;
  wire lock_detection;
  wire next_lock_detection;
  wire upper_is_changing;
  wire next_upper_is_changing;
  wire lower_is_changing;
  wire next_lower_is_changing;
  wire is_changing;
  wire next_is_changing;
  wire is_changing_f_edge;
  wire n1198_o;
  wire n1199_o;
  wire n1200_o;
  wire n1201_o;
  wire n1202_o;
  wire n1204_o;
  wire n1207_o;
  wire n1209_o;
  wire n1211_o;
  wire n1212_o;
  wire n1214_o;
  wire n1220_o;
  wire n1236_o;
  wire n1238_o;
  wire n1242_o;
  wire n1244_o;
  wire n1246_o;
  wire n1247_o;
  wire n1248_o;
  wire n1250_o;
  wire n1252_o;
  wire n1254_o;
  wire n1255_o;
  reg n1256_q;
  reg n1257_q;
  reg n1258_q;
  reg n1259_q;
  reg n1260_q;
  assign spike_o = n1254_o; //(module output)
  assign spike_strb_o = spike_strb; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:45:8  */
  assign spike = n1212_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:46:8  */
  assign hold_spike = n1256_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:47:8  */
  assign spike_strb = n1214_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:48:8  */
  assign lock_detection = n1257_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:49:8  */
  assign next_lock_detection = n1252_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:51:8  */
  assign upper_is_changing = n1258_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:52:8  */
  assign next_upper_is_changing = n1238_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:53:8  */
  assign lower_is_changing = n1259_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:54:8  */
  assign next_lower_is_changing = n1244_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:56:8  */
  assign is_changing = n1260_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:57:8  */
  assign next_is_changing = n1246_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:59:8  */
  assign is_changing_f_edge = n1248_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:84:23  */
  assign n1198_o = ~lock_detection;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:84:29  */
  assign n1199_o = detection_en_i & n1198_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:85:29  */
  assign n1200_o = increasing_en_i & comp_upper_i;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:88:26  */
  assign n1201_o = ~comp_lower_i;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:88:32  */
  assign n1202_o = decreasing_en_i & n1201_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:88:7  */
  assign n1204_o = n1202_o ? 1'b0 : hold_spike;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:88:7  */
  assign n1207_o = n1202_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:85:7  */
  assign n1209_o = n1200_o ? 1'b1 : n1204_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:85:7  */
  assign n1211_o = n1200_o ? 1'b1 : n1207_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:84:5  */
  assign n1212_o = n1199_o ? n1209_o : hold_spike;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:84:5  */
  assign n1214_o = n1199_o ? n1211_o : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:111:9  */
  assign n1220_o = is_changing_f_edge ? 1'b0 : next_lock_detection;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:127:5  */
  assign n1236_o = stopped_changing_upper_strb_i ? 1'b0 : upper_is_changing;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:125:5  */
  assign n1238_o = change_upper_strb_i ? 1'b1 : n1236_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:140:5  */
  assign n1242_o = stopped_changing_lower_strb_i ? 1'b0 : lower_is_changing;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:138:5  */
  assign n1244_o = change_lower_strb_i ? 1'b1 : n1242_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:147:41  */
  assign n1246_o = upper_is_changing | lower_is_changing;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:148:26  */
  assign n1247_o = ~next_is_changing;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:148:48  */
  assign n1248_o = n1247_o & is_changing;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:158:25  */
  assign n1250_o = spike_strb | pause_detection_strb_i;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:158:5  */
  assign n1252_o = n1250_o ? 1'b1 : lock_detection;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:166:26  */
  assign n1254_o = spike_strb ? spike : hold_spike;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:69:17  */
  assign n1255_o = spike_strb ? spike : hold_spike;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:69:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1256_q <= 1'b0;
    else
      n1256_q <= n1255_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1257_q <= 1'b0;
    else
      n1257_q <= n1220_o;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1258_q <= 1'b0;
    else
      n1258_q <= next_upper_is_changing;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1259_q <= 1'b0;
    else
      n1259_q <= next_lower_is_changing;
  /* ../../../vhdl/atbs_core_floating_window/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1260_q <= 1'b0;
    else
      n1260_q <= next_is_changing;
endmodule

module sync_chain_2_2
  (input  clock_i,
   input  reset_i,
   input  [1:0] async_i,
   output [1:0] sync_o);
  wire [3:0] \buf ;
  wire [1:0] n1180_o;
  wire [3:0] n1181_o;
  wire [3:0] n1183_o;
  wire [1:0] n1186_o;
  reg [3:0] n1187_q;
  assign sync_o = n1186_o; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/sync_chain/rtl/sync_chain_ea.vhd:36:8  */
  assign \buf  = n1187_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/sync_chain/rtl/sync_chain_ea.vhd:49:46  */
  assign n1180_o = \buf [1:0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:81:9  */
  assign n1181_o = {n1180_o, async_i};
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:68:9  */
  assign n1183_o = {2'b00, 2'b00};
  /* ../../../vhdl/atbs_core_floating_window/sync_chain/rtl/sync_chain_ea.vhd:56:22  */
  assign n1186_o = \buf [3:2]; // extract
  /* ../../../vhdl/atbs_core_floating_window/sync_chain/rtl/sync_chain_ea.vhd:47:25  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1187_q <= n1183_o;
    else
      n1187_q <= n1181_o;
endmodule

module debouncer_4_10
  (input  clock_i,
   input  reset_i,
   input  bouncing_i,
   output debounced_o);
  wire bouncing_sync;
  wire bouncing_sync_d;
  wire bouncing_edge_r;
  wire bouncing_edge_f;
  wire reset_counter_strb;
  wire [3:0] counter_value;
  wire [3:0] next_counter_value;
  wire [1:0] state;
  wire [1:0] next_state;
  wire debounced;
  wire next_debounced;
  wire sync_chain_0_sync_o;
  wire n1098_o;
  wire n1105_o;
  wire n1106_o;
  wire n1107_o;
  wire n1108_o;
  wire n1123_o;
  wire n1124_o;
  wire [3:0] n1126_o;
  wire [3:0] n1128_o;
  wire n1133_o;
  wire [1:0] n1135_o;
  wire n1137_o;
  wire [1:0] n1139_o;
  wire n1141_o;
  wire n1143_o;
  wire n1146_o;
  wire [1:0] n1148_o;
  wire n1149_o;
  wire n1151_o;
  wire n1153_o;
  wire n1154_o;
  wire n1157_o;
  wire [1:0] n1159_o;
  wire n1160_o;
  wire n1162_o;
  wire [2:0] n1163_o;
  reg n1165_o;
  reg [1:0] n1168_o;
  reg n1169_o;
  reg n1171_q;
  reg [3:0] n1172_q;
  reg [1:0] n1173_q;
  reg n1174_q;
  assign debounced_o = debounced; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:30:8  */
  assign bouncing_sync = n1098_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:33:8  */
  assign bouncing_sync_d = n1171_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:34:8  */
  assign bouncing_edge_r = n1106_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:35:8  */
  assign bouncing_edge_f = n1108_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:38:8  */
  assign reset_counter_strb = n1165_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:39:8  */
  assign counter_value = n1172_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:40:8  */
  assign next_counter_value = n1128_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:44:8  */
  assign state = n1173_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:45:8  */
  assign next_state = n1168_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:47:8  */
  assign debounced = n1174_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:48:8  */
  assign next_debounced = n1169_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:53:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(bouncing_i),
    .sync_o(sync_chain_0_sync_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:673:34  */
  assign n1098_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:77:29  */
  assign n1105_o = ~bouncing_sync_d;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:77:50  */
  assign n1106_o = n1105_o & bouncing_sync;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:78:49  */
  assign n1107_o = ~bouncing_sync;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:78:44  */
  assign n1108_o = bouncing_sync_d & n1107_o;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:101:22  */
  assign n1123_o = counter_value == 4'b1001;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:101:42  */
  assign n1124_o = n1123_o | reset_counter_strb;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:104:61  */
  assign n1126_o = counter_value + 4'b0001;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:101:5  */
  assign n1128_o = n1124_o ? 4'b0000 : n1126_o;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:124:33  */
  assign n1133_o = bouncing_edge_f ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:124:33  */
  assign n1135_o = bouncing_edge_f ? 2'b01 : state;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:121:9  */
  assign n1137_o = bouncing_edge_r ? 1'b1 : n1133_o;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:121:9  */
  assign n1139_o = bouncing_edge_r ? 2'b10 : n1135_o;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:120:25  */
  assign n1141_o = state == 2'b00;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:132:50  */
  assign n1143_o = counter_value == 4'b1001;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:133:41  */
  assign n1146_o = bouncing_sync_d ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:132:33  */
  assign n1148_o = n1143_o ? 2'b00 : state;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:132:33  */
  assign n1149_o = n1143_o ? n1146_o : debounced;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:131:25  */
  assign n1151_o = state == 2'b10;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:144:50  */
  assign n1153_o = counter_value == 4'b1001;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:145:60  */
  assign n1154_o = ~bouncing_sync_d;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:145:41  */
  assign n1157_o = n1154_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:144:33  */
  assign n1159_o = n1153_o ? 2'b00 : state;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:144:33  */
  assign n1160_o = n1153_o ? n1157_o : debounced;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:143:7  */
  assign n1162_o = state == 2'b01;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:723:3  */
  assign n1163_o = {n1162_o, n1151_o, n1141_o};
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1163_o)
      3'b100: n1165_o = 1'b0;
      3'b010: n1165_o = 1'b0;
      3'b001: n1165_o = n1137_o;
      default: n1165_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1163_o)
      3'b100: n1168_o = n1159_o;
      3'b010: n1168_o = n1148_o;
      3'b001: n1168_o = n1139_o;
      default: n1168_o = 2'b00;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1163_o)
      3'b100: n1169_o = n1160_o;
      3'b010: n1169_o = n1149_o;
      3'b001: n1169_o = debounced;
      default: n1169_o = debounced;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:72:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1171_q <= 1'b0;
    else
      n1171_q <= bouncing_sync;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1172_q <= 4'b0000;
    else
      n1172_q <= next_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1173_q <= 2'b00;
    else
      n1173_q <= next_state;
  /* ../../../vhdl/atbs_core_floating_window/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1174_q <= 1'b0;
    else
      n1174_q <= next_debounced;
endmodule

module sync_chain_2_1
  (input  clock_i,
   input  reset_i,
   input  async_i,
   output sync_o);
  wire [1:0] \buf ;
  wire n1088_o;
  wire [1:0] n1089_o;
  wire [1:0] n1091_o;
  wire n1094_o;
  reg [1:0] n1095_q;
  assign sync_o = n1094_o; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/sync_chain/rtl/sync_chain_ea.vhd:36:8  */
  assign \buf  = n1095_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/sync_chain/rtl/sync_chain_ea.vhd:49:46  */
  assign n1088_o = \buf [0]; // extract
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:895:54  */
  assign n1089_o = {n1088_o, async_i};
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:871:42  */
  assign n1091_o = {1'b0, 1'b0};
  /* ../../../vhdl/atbs_core_floating_window/sync_chain/rtl/sync_chain_ea.vhd:56:22  */
  assign n1094_o = \buf [1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/sync_chain/rtl/sync_chain_ea.vhd:47:25  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1095_q <= n1091_o;
    else
      n1095_q <= n1089_o;
endmodule

module atbs_core_floating_window_8000000_20_800000_4_10_2_2_255_0_2_2_3_8_18_262144_8_8_4_16_11_2048_2_19_9_417_8
  (input  clock_i,
   input  reset_btn_i,
   input  comp_upper_i,
   input  comp_lower_i,
   input  trigger_start_sampling_i,
   input  trigger_start_mode_i,
   input  adaptive_mode_i,
   input  control_mode_i,
   input  signal_select_in_i,
   input  enable_i,
   input  select_tbs_delta_steps_i,
   input  uart_rx_i,
   output signal_select_en_o,
   output signal_select_in_o,
   output amp_sdn_o,
   output dac_pd_o,
   output dac_clr_o,
   output dac_wr_upper_o,
   output dac_wr_lower_o,
   output [7:0] dac_upper_o,
   output [7:0] dac_lower_o,
   output idle_led_o,
   output overflow_led_o,
   output underflow_led_o,
   output analog_trigger_o,
   output sc_noc_1_o,
   output sc_noc_2_o,
   output uart_tx_o);
  wire reset_i;
  wire reset_sync;
  wire reset_entity;
  wire trigger_start_sampling_sync;
  wire trigger_start_mode_debounced;
  wire adaptive_mode_debounced;
  wire control_mode_debounced;
  wire signal_select_in_debounced;
  wire enable_debounced;
  wire select_tbs_delta_steps_debounced;
  wire adaptive_mode_d;
  wire control_mode_d;
  wire signal_select_in_d;
  wire select_tbs_delta_steps_d;
  wire trigger_start_mode_d;
  wire trigger_start_sampling_d;
  wire adaptive_mode_edge_f;
  wire adaptive_mode_edge_r;
  wire control_mode_edge_f;
  wire control_mode_edge_r;
  wire select_tbs_delta_steps_edge_f;
  wire select_tbs_delta_steps_edge_r;
  wire signal_select_in_edge_f;
  wire signal_select_in_edge_r;
  wire trigger_start_mode_edge_f;
  wire trigger_start_mode_edge_r;
  wire trigger_start_sampling_edge_r;
  wire input_changed_strb;
  wire input_changed_reset_strb;
  wire uart_changed_strb;
  wire uart_changed_reset_strb;
  wire comp_upper_sync;
  wire comp_lower_sync;
  wire spike;
  wire spike_strb;
  wire detection_en;
  wire pause_detection_strb;
  wire increasing_en;
  wire decreasing_en;
  wire next_tbs_increasing_en;
  wire next_tbs_decreasing_en;
  wire tbs_increasing_en;
  wire tbs_decreasing_en;
  wire atbs_increasing_en;
  wire atbs_decreasing_en;
  wire [7:0] tbs_delta_steps_upper;
  wire [7:0] tbs_delta_steps_lower;
  wire reset_delta_steps_strb;
  wire atbs_direction_upper;
  wire atbs_direction_lower;
  wire atbs_delta_steps_upper_strb;
  wire atbs_delta_steps_lower_strb;
  wire [7:0] atbs_delta_steps_upper;
  wire [7:0] atbs_delta_steps_lower;
  wire adapt_on_overflow_strb;
  wire clear_dac;
  wire dac_init_strb;
  wire direction_upper;
  wire update_dac_upper_strb;
  wire [7:0] dac_counter_value_upper;
  wire dac_finished_upper_strb;
  wire dac_pd_upper;
  wire dac_wr_upper;
  wire dac_clr_upper;
  wire [7:0] dac_upper;
  wire direction_lower;
  wire update_dac_lower_strb;
  wire [7:0] dac_counter_value_lower;
  wire dac_finished_lower_strb;
  wire dac_pd_lower;
  wire dac_wr_lower;
  wire dac_clr_lower;
  wire [7:0] dac_lower;
  wire delta_steps_upper_strb;
  wire delta_steps_lower_strb;
  wire [7:0] delta_steps_upper;
  wire [7:0] delta_steps_lower;
  wire reset_time_measurement;
  wire reset_time_measurement_strb;
  wire overflow_strb;
  wire [17:0] curr_time;
  wire [18:0] encoded_spike;
  wire encoded_spike_strb;
  wire select_enable_write;
  wire enable_write_mux;
  wire enable_read;
  wire read_strb;
  wire [18:0] b_data;
  wire fifo_full;
  wire fifo_empty;
  wire uart_reset;
  wire tx_start_strb;
  wire uart_tx_strb;
  wire uart_tx;
  wire [7:0] tx_data;
  wire uart_rx_data_strb;
  wire [7:0] uart_rx_data;
  wire analog_trigger_uart;
  wire next_analog_trigger_uart;
  wire [3:0] analog_trigger_period_adj_uart;
  wire [3:0] next_analog_trigger_period_adj_uart;
  wire [3:0] analog_trigger_duty_cycle_adj_uart;
  wire [3:0] next_analog_trigger_duty_cycle_adj_uart;
  wire sc_noc_generator_uart;
  wire next_sc_noc_generator_uart;
  wire [10:0] sc_noc_generator_period_adj_uart;
  wire [10:0] next_sc_noc_generator_period_adj_uart;
  wire [10:0] sc_noc_generator_duty_cycle_adj_uart;
  wire [10:0] next_sc_noc_generator_duty_cycle_adj_uart;
  wire [10:0] sc_noc_generator_overlap_adj_uart;
  wire [10:0] next_sc_noc_generator_overlap_adj_uart;
  wire baudrate_uart;
  wire next_baudrate_uart;
  wire [8:0] baudrate_adj_uart;
  wire [8:0] next_baudrate_adj_uart;
  wire tbs_virtual_delta_steps_uart;
  wire next_tbs_virtual_delta_steps_uart;
  wire [7:0] next_tbs_virtual_delta_steps_adj_uart;
  wire [7:0] tbs_virtual_delta_steps_adj_uart;
  wire atbs_win_length_uart;
  wire next_atbs_win_length_uart;
  wire [18:0] atbs_win_length_adj_uart;
  wire [18:0] next_atbs_win_length_adj_uart;
  wire atbs_max_delta_steps_uart;
  wire next_atbs_max_delta_steps_uart;
  wire [7:0] atbs_max_delta_steps_adj_uart;
  wire [7:0] next_atbs_max_delta_steps_adj_uart;
  wire [19:0] main_counter_value;
  wire [19:0] next_main_counter_value;
  wire reset_main_counter_strb;
  wire [2:0] state;
  wire [2:0] next_state;
  wire next_idle_led;
  wire next_overflow_led;
  wire next_underflow_led;
  wire next_select_enable_write;
  wire next_enable_read;
  wire next_detection_en;
  wire next_clear_dac;
  wire idle_led;
  wire overflow_led;
  wire underflow_led;
  wire analog_trigger;
  wire sc_noc_1;
  wire sc_noc_2;
  wire trigger_start_mode;
  wire trigger_start_mode_uart;
  wire next_trigger_start_mode_uart;
  wire adaptive_mode;
  wire adaptive_mode_uart;
  wire next_adaptive_mode_uart;
  wire signal_select_in;
  wire signal_select_in_uart;
  wire next_signal_select_in_uart;
  wire enable_analog;
  wire enable_analog_uart;
  wire next_enable_analog_uart;
  wire select_tbs_delta_steps;
  wire select_tbs_delta_steps_uart;
  wire next_select_tbs_delta_steps_uart;
  wire uart_start_sampling_strb;
  wire sync_chain_0_sync_o;
  localparam n29_o = 1'b1;
  wire n31_o;
  wire n32_o;
  wire n33_o;
  wire n34_o;
  wire n35_o;
  wire sync_chain_2_sync_o;
  wire n37_o;
  wire debouncer_0_debounced_o;
  wire debouncer_1_debounced_o;
  wire debouncer_2_debounced_o;
  wire debouncer_3_debounced_o;
  wire debouncer_4_debounced_o;
  wire debouncer_5_debounced_o;
  wire n65_o;
  wire n66_o;
  wire n67_o;
  wire n68_o;
  wire n69_o;
  wire n70_o;
  wire n71_o;
  wire n72_o;
  wire n73_o;
  wire n74_o;
  wire n75_o;
  wire n76_o;
  wire n77_o;
  wire n78_o;
  wire n79_o;
  wire n80_o;
  wire n81_o;
  wire n82_o;
  wire n83_o;
  wire n84_o;
  wire n85_o;
  wire n86_o;
  wire n88_o;
  wire n89_o;
  wire n90_o;
  wire n91_o;
  wire n92_o;
  wire n93_o;
  wire n94_o;
  wire n95_o;
  wire n96_o;
  wire n97_o;
  wire [1:0] sync_chain_1_sync_o;
  wire [1:0] n99_o;
  wire n101_o;
  wire n102_o;
  wire spike_detector_0_spike_o;
  wire spike_detector_0_spike_strb_o;
  wire adaptive_ctrl_0_increasing_en_o;
  wire adaptive_ctrl_0_decreasing_en_o;
  wire adaptive_ctrl_0_direction_upper_o;
  wire adaptive_ctrl_0_direction_lower_o;
  wire adaptive_ctrl_0_delta_steps_upper_strb_o;
  wire adaptive_ctrl_0_delta_steps_lower_strb_o;
  wire [7:0] adaptive_ctrl_0_delta_steps_upper_o;
  wire [7:0] adaptive_ctrl_0_delta_steps_lower_o;
  wire adaptive_ctrl_0_adapt_on_overflow_strb_o;
  localparam [2:0] n105_o = 3'b010;
  localparam [2:0] n106_o = 3'b010;
  wire [7:0] dac_control_0_dac_counter_value_o;
  wire dac_control_0_dac_finished_strb_o;
  wire dac_control_0_dac_pd_o;
  wire dac_control_0_dac_wr_o;
  wire dac_control_0_dac_clr_o;
  wire [7:0] dac_control_0_dac_o;
  wire n122_o;
  wire [7:0] dac_control_1_dac_counter_value_o;
  wire dac_control_1_dac_finished_strb_o;
  wire dac_control_1_dac_pd_o;
  wire dac_control_1_dac_wr_o;
  wire dac_control_1_dac_clr_o;
  wire [7:0] dac_control_1_dac_o;
  wire n129_o;
  wire [7:0] n141_o;
  wire n142_o;
  wire n144_o;
  wire n145_o;
  wire n148_o;
  wire n151_o;
  wire n153_o;
  wire n156_o;
  wire [7:0] n158_o;
  wire [7:0] n160_o;
  wire [7:0] n162_o;
  wire [7:0] n163_o;
  wire n164_o;
  wire n165_o;
  wire n166_o;
  wire n167_o;
  wire n168_o;
  wire n170_o;
  wire n171_o;
  wire analog_trigger_0_analog_trigger_o;
  wire sc_noc_generator_0_sc_noc_1_o;
  wire sc_noc_generator_0_sc_noc_2_o;
  wire n175_o;
  wire n176_o;
  wire time_measurement_0_overflow_strb_o;
  wire [17:0] time_measurement_0_curr_time_o;
  wire [18:0] spike_encoder_0_encoded_spike_o;
  wire spike_encoder_0_encoded_spike_strb_o;
  wire n181_o;
  wire spike_memory_0_read_strb_o;
  wire [18:0] spike_memory_0_b_data_o;
  wire spike_memory_0_fifo_full_o;
  wire spike_memory_0_fifo_empty_o;
  wire [7:0] memory2uart_0_uart_data_o;
  wire memory2uart_0_tx_start_strb_o;
  wire uart_0_tx_strb_o;
  wire uart_0_tx_o;
  wire uart_0_rx_data_strb_o;
  wire [7:0] uart_0_rx_data_o;
  wire n201_o;
  wire n202_o;
  wire [19:0] n204_o;
  wire [19:0] n206_o;
  wire n237_o;
  wire [2:0] n240_o;
  wire n242_o;
  wire n244_o;
  wire n246_o;
  wire n248_o;
  wire n250_o;
  wire n253_o;
  wire n256_o;
  wire [2:0] n259_o;
  wire n261_o;
  wire n263_o;
  wire n265_o;
  wire n267_o;
  wire [2:0] n270_o;
  wire n272_o;
  wire n274_o;
  wire n275_o;
  wire n276_o;
  wire n277_o;
  wire n278_o;
  wire n279_o;
  wire n282_o;
  wire [2:0] n285_o;
  wire n287_o;
  wire [2:0] n289_o;
  wire n291_o;
  wire n294_o;
  wire n297_o;
  wire n299_o;
  wire [2:0] n301_o;
  wire n302_o;
  wire n304_o;
  wire n306_o;
  wire n308_o;
  wire [2:0] n311_o;
  wire n313_o;
  wire n315_o;
  wire n316_o;
  wire n317_o;
  wire n318_o;
  wire n321_o;
  wire n324_o;
  wire n327_o;
  wire [2:0] n330_o;
  wire n332_o;
  wire n334_o;
  wire n336_o;
  wire n339_o;
  wire n342_o;
  wire n344_o;
  wire n345_o;
  wire n348_o;
  wire n350_o;
  wire n351_o;
  wire n352_o;
  wire [2:0] n355_o;
  wire n357_o;
  wire n360_o;
  wire n363_o;
  wire [2:0] n365_o;
  wire n366_o;
  wire n368_o;
  wire [7:0] n369_o;
  reg n371_o;
  reg n374_o;
  reg n377_o;
  reg n380_o;
  reg n383_o;
  reg n387_o;
  reg [2:0] n391_o;
  reg n392_o;
  reg n394_o;
  reg n396_o;
  reg n399_o;
  reg n400_o;
  reg n403_o;
  reg n405_o;
  wire n472_o;
  wire n474_o;
  wire n476_o;
  wire n478_o;
  wire n480_o;
  wire n482_o;
  wire [3:0] n484_o;
  wire [3:0] n486_o;
  wire [3:0] n488_o;
  wire [3:0] n490_o;
  wire [3:0] n492_o;
  wire [3:0] n494_o;
  wire [3:0] n496_o;
  wire [3:0] n498_o;
  wire [3:0] n500_o;
  wire [3:0] n502_o;
  wire [3:0] n504_o;
  wire [3:0] n506_o;
  wire n508_o;
  wire n510_o;
  wire n512_o;
  wire [10:0] n514_o;
  wire [10:0] n516_o;
  wire [10:0] n518_o;
  wire [10:0] n520_o;
  wire [10:0] n522_o;
  wire [10:0] n524_o;
  wire [10:0] n526_o;
  wire [10:0] n528_o;
  wire [10:0] n530_o;
  wire n532_o;
  wire n534_o;
  wire n536_o;
  wire n538_o;
  wire [8:0] n540_o;
  wire [8:0] n542_o;
  wire [8:0] n544_o;
  wire [8:0] n546_o;
  wire n548_o;
  wire n550_o;
  wire n552_o;
  wire n554_o;
  wire n556_o;
  wire [7:0] n558_o;
  wire [7:0] n560_o;
  wire [7:0] n562_o;
  wire [7:0] n564_o;
  wire [7:0] n566_o;
  wire n568_o;
  wire n570_o;
  wire n572_o;
  wire n574_o;
  wire n576_o;
  wire n578_o;
  wire [18:0] n580_o;
  wire [18:0] n582_o;
  wire [18:0] n584_o;
  wire [18:0] n586_o;
  wire [18:0] n588_o;
  wire [18:0] n590_o;
  wire n592_o;
  wire n594_o;
  wire n596_o;
  wire n598_o;
  wire n600_o;
  wire [7:0] n602_o;
  wire [7:0] n604_o;
  wire [7:0] n606_o;
  wire [7:0] n608_o;
  wire [7:0] n610_o;
  wire n612_o;
  wire n614_o;
  wire n616_o;
  wire n618_o;
  wire n620_o;
  wire n622_o;
  wire n624_o;
  wire n626_o;
  wire n628_o;
  wire n630_o;
  wire n632_o;
  wire n634_o;
  wire n636_o;
  wire n638_o;
  wire n640_o;
  wire n642_o;
  wire n644_o;
  wire n646_o;
  wire n648_o;
  wire n650_o;
  wire n652_o;
  wire n653_o;
  wire n655_o;
  wire n656_o;
  wire n657_o;
  wire n659_o;
  wire n660_o;
  wire n661_o;
  wire n662_o;
  wire n664_o;
  wire n665_o;
  wire n666_o;
  wire n667_o;
  wire n668_o;
  wire n670_o;
  wire n671_o;
  wire n672_o;
  wire n673_o;
  wire n674_o;
  wire n675_o;
  wire n678_o;
  wire n679_o;
  wire n680_o;
  wire n681_o;
  wire n682_o;
  wire n683_o;
  wire n684_o;
  wire n686_o;
  wire n687_o;
  wire n688_o;
  wire n689_o;
  wire n690_o;
  wire n691_o;
  wire n692_o;
  wire n695_o;
  wire n698_o;
  wire n700_o;
  wire n701_o;
  wire n702_o;
  wire n703_o;
  wire n704_o;
  wire n705_o;
  wire n706_o;
  wire n708_o;
  wire n710_o;
  wire n712_o;
  wire n713_o;
  wire n714_o;
  wire n715_o;
  wire n716_o;
  wire n717_o;
  wire n718_o;
  wire n720_o;
  wire n722_o;
  wire n724_o;
  wire n726_o;
  wire n727_o;
  wire n728_o;
  wire n729_o;
  wire n730_o;
  wire n731_o;
  wire n732_o;
  wire n734_o;
  wire n736_o;
  wire n738_o;
  wire n740_o;
  wire n741_o;
  wire n742_o;
  wire n743_o;
  wire n744_o;
  wire n745_o;
  wire n746_o;
  wire n748_o;
  wire n749_o;
  wire n751_o;
  wire n753_o;
  wire n755_o;
  wire n756_o;
  wire n757_o;
  wire n758_o;
  wire n759_o;
  wire n760_o;
  wire n761_o;
  wire n763_o;
  wire n764_o;
  wire n766_o;
  wire n768_o;
  wire n770_o;
  wire n771_o;
  wire n772_o;
  wire n773_o;
  wire n774_o;
  wire n775_o;
  wire n776_o;
  wire n778_o;
  wire n779_o;
  wire n780_o;
  wire n782_o;
  wire n784_o;
  wire n786_o;
  wire n787_o;
  wire n788_o;
  wire n789_o;
  wire n790_o;
  wire n791_o;
  wire n792_o;
  wire n794_o;
  wire n795_o;
  wire n796_o;
  wire n798_o;
  wire n800_o;
  wire n802_o;
  wire n803_o;
  wire n804_o;
  wire n805_o;
  wire n806_o;
  wire n807_o;
  wire n808_o;
  wire n810_o;
  wire n811_o;
  wire n812_o;
  wire n813_o;
  wire n815_o;
  wire n817_o;
  wire n819_o;
  wire n820_o;
  wire n821_o;
  wire n822_o;
  wire n823_o;
  wire n824_o;
  wire n825_o;
  wire n827_o;
  wire n828_o;
  wire n829_o;
  wire n830_o;
  wire n832_o;
  wire n834_o;
  wire n836_o;
  wire n837_o;
  wire n838_o;
  wire n839_o;
  wire n840_o;
  wire n841_o;
  wire n842_o;
  wire n844_o;
  wire n845_o;
  wire n846_o;
  wire n847_o;
  wire n848_o;
  wire n850_o;
  wire n852_o;
  wire n854_o;
  wire n855_o;
  wire n856_o;
  wire n857_o;
  wire n858_o;
  wire n859_o;
  wire n860_o;
  wire n862_o;
  wire n863_o;
  wire n864_o;
  wire n865_o;
  wire n866_o;
  wire n868_o;
  wire n870_o;
  wire n872_o;
  wire n873_o;
  wire n874_o;
  wire n875_o;
  wire n876_o;
  wire n877_o;
  wire n879_o;
  wire [7:0] n880_o;
  wire n881_o;
  wire n882_o;
  wire n883_o;
  wire n884_o;
  wire n885_o;
  wire n887_o;
  wire n889_o;
  wire n891_o;
  wire n892_o;
  wire n893_o;
  wire n894_o;
  wire n895_o;
  wire n897_o;
  wire [18:0] n898_o;
  wire n899_o;
  wire [7:0] n900_o;
  wire n901_o;
  wire n902_o;
  wire n903_o;
  wire n904_o;
  wire n905_o;
  wire n907_o;
  wire n909_o;
  wire n911_o;
  wire n912_o;
  wire n913_o;
  wire n914_o;
  wire n916_o;
  wire [7:0] n917_o;
  wire n918_o;
  wire [18:0] n919_o;
  wire n920_o;
  wire [7:0] n921_o;
  wire n922_o;
  wire n923_o;
  wire n924_o;
  wire n925_o;
  wire n926_o;
  wire n928_o;
  wire n930_o;
  wire n932_o;
  wire n933_o;
  wire n934_o;
  wire n936_o;
  wire [8:0] n937_o;
  wire n938_o;
  wire [7:0] n939_o;
  wire n940_o;
  wire [18:0] n941_o;
  wire n942_o;
  wire [7:0] n943_o;
  wire n944_o;
  wire n945_o;
  wire n946_o;
  wire n947_o;
  wire n948_o;
  wire n950_o;
  wire n952_o;
  wire n954_o;
  wire n955_o;
  wire n957_o;
  wire [10:0] n958_o;
  wire [10:0] n959_o;
  wire [10:0] n960_o;
  wire n961_o;
  wire [8:0] n962_o;
  wire n963_o;
  wire [7:0] n964_o;
  wire n965_o;
  wire [18:0] n966_o;
  wire n967_o;
  wire [7:0] n968_o;
  wire n969_o;
  wire n970_o;
  wire n971_o;
  wire n972_o;
  wire n973_o;
  wire n975_o;
  wire n977_o;
  wire n979_o;
  wire n981_o;
  wire [3:0] n982_o;
  wire [3:0] n983_o;
  wire n984_o;
  wire [10:0] n985_o;
  wire [10:0] n986_o;
  wire [10:0] n987_o;
  wire n988_o;
  wire [8:0] n989_o;
  wire n990_o;
  wire [7:0] n991_o;
  wire n992_o;
  wire [18:0] n993_o;
  wire n994_o;
  wire [7:0] n995_o;
  wire n996_o;
  wire n997_o;
  wire n998_o;
  wire n999_o;
  wire n1000_o;
  wire n1002_o;
  wire n1004_o;
  wire n1007_o;
  wire n1009_o;
  wire n1010_o;
  wire n1011_o;
  wire n1012_o;
  wire [10:0] n1013_o;
  wire [10:0] n1014_o;
  wire [10:0] n1015_o;
  wire n1016_o;
  wire [8:0] n1017_o;
  wire n1018_o;
  wire [7:0] n1019_o;
  wire n1020_o;
  wire [18:0] n1021_o;
  wire n1022_o;
  wire [7:0] n1023_o;
  wire n1024_o;
  wire n1025_o;
  wire n1026_o;
  wire n1027_o;
  wire n1028_o;
  wire n1030_o;
  wire n1033_o;
  wire n1034_o;
  wire n1035_o;
  wire n1036_o;
  wire n1037_o;
  wire n1038_o;
  wire n1039_o;
  wire n1040_o;
  wire n1041_o;
  wire n1042_o;
  wire n1043_o;
  wire n1044_o;
  wire n1045_o;
  reg n1046_q;
  reg n1047_q;
  reg n1048_q;
  reg n1049_q;
  reg n1050_q;
  reg n1051_q;
  reg n1052_q;
  reg n1053_q;
  reg n1054_q;
  reg n1055_q;
  reg n1056_q;
  reg n1057_q;
  reg n1058_q;
  reg [3:0] n1059_q;
  reg [3:0] n1060_q;
  reg n1061_q;
  reg [10:0] n1062_q;
  reg [10:0] n1063_q;
  reg [10:0] n1064_q;
  reg n1065_q;
  reg [8:0] n1066_q;
  reg n1067_q;
  reg [7:0] n1068_q;
  reg n1069_q;
  reg [18:0] n1070_q;
  reg n1071_q;
  reg [7:0] n1072_q;
  reg [19:0] n1073_q;
  reg [2:0] n1074_q;
  reg n1075_q;
  reg n1076_q;
  reg n1077_q;
  reg n1078_q;
  reg n1079_q;
  reg n1080_q;
  reg n1081_q;
  reg n1082_q;
  assign signal_select_en_o = n1043_o; //(module output)
  assign signal_select_in_o = signal_select_in; //(module output)
  assign amp_sdn_o = enable_analog; //(module output)
  assign dac_pd_o = n1044_o; //(module output)
  assign dac_clr_o = n1045_o; //(module output)
  assign dac_wr_upper_o = dac_wr_upper; //(module output)
  assign dac_wr_lower_o = dac_wr_lower; //(module output)
  assign dac_upper_o = dac_upper; //(module output)
  assign dac_lower_o = dac_lower; //(module output)
  assign idle_led_o = idle_led; //(module output)
  assign overflow_led_o = overflow_led; //(module output)
  assign underflow_led_o = underflow_led; //(module output)
  assign analog_trigger_o = analog_trigger; //(module output)
  assign sc_noc_1_o = sc_noc_1; //(module output)
  assign sc_noc_2_o = sc_noc_2; //(module output)
  assign uart_tx_o = uart_tx; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:169:8  */
  assign reset_i = n33_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:170:8  */
  assign reset_sync = n31_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:171:8  */
  assign reset_entity = n35_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:174:8  */
  assign trigger_start_sampling_sync = n37_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:177:8  */
  assign trigger_start_mode_debounced = debouncer_0_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:178:8  */
  assign adaptive_mode_debounced = debouncer_1_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:179:8  */
  assign control_mode_debounced = debouncer_2_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:180:8  */
  assign signal_select_in_debounced = debouncer_3_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:181:8  */
  assign enable_debounced = debouncer_4_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:182:8  */
  assign select_tbs_delta_steps_debounced = debouncer_5_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:185:8  */
  assign adaptive_mode_d = n1046_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:186:8  */
  assign control_mode_d = n1047_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:187:8  */
  assign signal_select_in_d = n1048_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:188:8  */
  assign select_tbs_delta_steps_d = n1049_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:189:8  */
  assign trigger_start_mode_d = n1050_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:190:8  */
  assign trigger_start_sampling_d = n1051_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:192:8  */
  assign adaptive_mode_edge_f = n72_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:193:8  */
  assign adaptive_mode_edge_r = n74_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:194:8  */
  assign control_mode_edge_f = n76_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:195:8  */
  assign control_mode_edge_r = n78_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:196:8  */
  assign select_tbs_delta_steps_edge_f = n84_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:197:8  */
  assign select_tbs_delta_steps_edge_r = n86_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:198:8  */
  assign signal_select_in_edge_f = n80_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:199:8  */
  assign signal_select_in_edge_r = n82_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:200:8  */
  assign trigger_start_mode_edge_f = n68_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:201:8  */
  assign trigger_start_mode_edge_r = n70_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:202:8  */
  assign trigger_start_sampling_edge_r = n66_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:205:8  */
  assign input_changed_strb = n97_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:206:8  */
  assign input_changed_reset_strb = n371_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:208:8  */
  assign uart_changed_strb = n1004_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:209:8  */
  assign uart_changed_reset_strb = n374_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:214:8  */
  assign comp_upper_sync = n101_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:215:8  */
  assign comp_lower_sync = n102_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:218:8  */
  assign spike = spike_detector_0_spike_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:219:8  */
  assign spike_strb = spike_detector_0_spike_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:220:8  */
  assign detection_en = n1052_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:221:8  */
  assign pause_detection_strb = n168_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:224:8  */
  assign increasing_en = n170_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:225:8  */
  assign decreasing_en = n171_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:226:8  */
  assign next_tbs_increasing_en = n148_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:227:8  */
  assign next_tbs_decreasing_en = n156_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:228:8  */
  assign tbs_increasing_en = n1053_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:229:8  */
  assign tbs_decreasing_en = n1054_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:230:8  */
  assign atbs_increasing_en = adaptive_ctrl_0_increasing_en_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:231:8  */
  assign atbs_decreasing_en = adaptive_ctrl_0_decreasing_en_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:234:8  */
  assign tbs_delta_steps_upper = n158_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:235:8  */
  assign tbs_delta_steps_lower = n160_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:238:8  */
  assign reset_delta_steps_strb = n377_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:239:8  */
  assign atbs_direction_upper = adaptive_ctrl_0_direction_upper_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:240:8  */
  assign atbs_direction_lower = adaptive_ctrl_0_direction_lower_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:241:8  */
  assign atbs_delta_steps_upper_strb = adaptive_ctrl_0_delta_steps_upper_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:242:8  */
  assign atbs_delta_steps_lower_strb = adaptive_ctrl_0_delta_steps_lower_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:243:8  */
  assign atbs_delta_steps_upper = adaptive_ctrl_0_delta_steps_upper_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:244:8  */
  assign atbs_delta_steps_lower = adaptive_ctrl_0_delta_steps_lower_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:245:8  */
  assign adapt_on_overflow_strb = adaptive_ctrl_0_adapt_on_overflow_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:248:8  */
  assign clear_dac = n1055_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:249:8  */
  assign dac_init_strb = n380_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:251:8  */
  assign direction_upper = n166_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:252:8  */
  assign update_dac_upper_strb = n122_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:253:8  */
  assign dac_counter_value_upper = dac_control_0_dac_counter_value_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:254:8  */
  assign dac_finished_upper_strb = dac_control_0_dac_finished_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:255:8  */
  assign dac_pd_upper = dac_control_0_dac_pd_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:256:8  */
  assign dac_wr_upper = dac_control_0_dac_wr_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:257:8  */
  assign dac_clr_upper = dac_control_0_dac_clr_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:258:8  */
  assign dac_upper = dac_control_0_dac_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:260:8  */
  assign direction_lower = n167_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:261:8  */
  assign update_dac_lower_strb = n129_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:262:8  */
  assign dac_counter_value_lower = dac_control_1_dac_counter_value_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:263:8  */
  assign dac_finished_lower_strb = dac_control_1_dac_finished_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:264:8  */
  assign dac_pd_lower = dac_control_1_dac_pd_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:265:8  */
  assign dac_wr_lower = dac_control_1_dac_wr_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:266:8  */
  assign dac_clr_lower = dac_control_1_dac_clr_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:267:8  */
  assign dac_lower = dac_control_1_dac_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:271:8  */
  assign delta_steps_upper_strb = n164_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:272:8  */
  assign delta_steps_lower_strb = n165_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:273:8  */
  assign delta_steps_upper = n162_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:274:8  */
  assign delta_steps_lower = n163_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:279:8  */
  assign reset_time_measurement = n176_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:280:8  */
  assign reset_time_measurement_strb = n383_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:281:8  */
  assign overflow_strb = time_measurement_0_overflow_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:282:8  */
  assign curr_time = time_measurement_0_curr_time_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:285:8  */
  assign encoded_spike = spike_encoder_0_encoded_spike_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:286:8  */
  assign encoded_spike_strb = spike_encoder_0_encoded_spike_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:289:8  */
  assign select_enable_write = n1056_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:290:8  */
  assign enable_write_mux = n181_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:293:8  */
  assign enable_read = n1057_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:294:8  */
  assign read_strb = spike_memory_0_read_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:295:8  */
  assign b_data = spike_memory_0_b_data_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:296:8  */
  assign fifo_full = spike_memory_0_fifo_full_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:297:8  */
  assign fifo_empty = spike_memory_0_fifo_empty_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:300:8  */
  assign uart_reset = n1007_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:301:8  */
  assign tx_start_strb = memory2uart_0_tx_start_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:302:8  */
  assign uart_tx_strb = uart_0_tx_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:303:8  */
  assign uart_tx = uart_0_tx_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:304:8  */
  assign tx_data = memory2uart_0_uart_data_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:305:8  */
  assign uart_rx_data_strb = uart_0_rx_data_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:306:8  */
  assign uart_rx_data = uart_0_rx_data_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:310:8  */
  assign analog_trigger_uart = n1058_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:311:8  */
  assign next_analog_trigger_uart = n1009_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:312:8  */
  assign analog_trigger_period_adj_uart = n1059_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:313:8  */
  assign next_analog_trigger_period_adj_uart = n982_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:314:8  */
  assign analog_trigger_duty_cycle_adj_uart = n1060_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:315:8  */
  assign next_analog_trigger_duty_cycle_adj_uart = n983_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:317:8  */
  assign sc_noc_generator_uart = n1061_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:318:8  */
  assign next_sc_noc_generator_uart = n1012_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:319:8  */
  assign sc_noc_generator_period_adj_uart = n1062_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:320:8  */
  assign next_sc_noc_generator_period_adj_uart = n1013_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:321:8  */
  assign sc_noc_generator_duty_cycle_adj_uart = n1063_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:322:8  */
  assign next_sc_noc_generator_duty_cycle_adj_uart = n1014_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:323:8  */
  assign sc_noc_generator_overlap_adj_uart = n1064_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:324:8  */
  assign next_sc_noc_generator_overlap_adj_uart = n1015_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:326:8  */
  assign baudrate_uart = n1065_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:327:8  */
  assign next_baudrate_uart = n1016_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:328:8  */
  assign baudrate_adj_uart = n1066_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:329:8  */
  assign next_baudrate_adj_uart = n1017_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:331:8  */
  assign tbs_virtual_delta_steps_uart = n1067_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:332:8  */
  assign next_tbs_virtual_delta_steps_uart = n1018_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:333:8  */
  assign next_tbs_virtual_delta_steps_adj_uart = n1019_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:334:8  */
  assign tbs_virtual_delta_steps_adj_uart = n1068_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:336:8  */
  assign atbs_win_length_uart = n1069_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:337:8  */
  assign next_atbs_win_length_uart = n1020_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:338:8  */
  assign atbs_win_length_adj_uart = n1070_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:339:8  */
  assign next_atbs_win_length_adj_uart = n1021_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:341:8  */
  assign atbs_max_delta_steps_uart = n1071_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:342:8  */
  assign next_atbs_max_delta_steps_uart = n1022_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:343:8  */
  assign atbs_max_delta_steps_adj_uart = n1072_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:344:8  */
  assign next_atbs_max_delta_steps_adj_uart = n1023_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:349:8  */
  assign main_counter_value = n1073_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:350:8  */
  assign next_main_counter_value = n206_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:352:8  */
  assign reset_main_counter_strb = n387_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:356:8  */
  assign state = n1074_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:357:8  */
  assign next_state = n391_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:359:8  */
  assign next_idle_led = n392_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:360:8  */
  assign next_overflow_led = n394_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:361:8  */
  assign next_underflow_led = n396_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:362:8  */
  assign next_select_enable_write = n399_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:363:8  */
  assign next_enable_read = n400_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:364:8  */
  assign next_detection_en = n403_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:365:8  */
  assign next_clear_dac = n405_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:368:8  */
  assign idle_led = n1075_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:369:8  */
  assign overflow_led = n1076_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:370:8  */
  assign underflow_led = n1077_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:373:8  */
  assign analog_trigger = analog_trigger_0_analog_trigger_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:376:8  */
  assign sc_noc_1 = sc_noc_generator_0_sc_noc_1_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:377:8  */
  assign sc_noc_2 = sc_noc_generator_0_sc_noc_2_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:381:8  */
  assign trigger_start_mode = n1034_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:382:8  */
  assign trigger_start_mode_uart = n1078_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:383:8  */
  assign next_trigger_start_mode_uart = n1024_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:385:8  */
  assign adaptive_mode = n1036_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:386:8  */
  assign adaptive_mode_uart = n1079_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:387:8  */
  assign next_adaptive_mode_uart = n1025_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:389:8  */
  assign signal_select_in = n1038_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:390:8  */
  assign signal_select_in_uart = n1080_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:391:8  */
  assign next_signal_select_in_uart = n1026_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:393:8  */
  assign enable_analog = n1040_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:394:8  */
  assign enable_analog_uart = n1081_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:395:8  */
  assign next_enable_analog_uart = n1027_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:397:8  */
  assign select_tbs_delta_steps = n1042_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:398:8  */
  assign select_tbs_delta_steps_uart = n1082_q; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:399:8  */
  assign next_select_tbs_delta_steps_uart = n1028_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:401:8  */
  assign uart_start_sampling_strb = n1030_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:410:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_btn_i),
    .async_i(n29_o),
    .sync_o(sync_chain_0_sync_o));
  assign n31_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:425:14  */
  assign n32_o = ~reset_sync;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:425:29  */
  assign n33_o = n32_o | uart_reset;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:426:27  */
  assign n34_o = reset_i | input_changed_reset_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:426:55  */
  assign n35_o = n34_o | uart_changed_reset_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:430:3  */
  sync_chain_2_1 sync_chain_2 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(trigger_start_sampling_i),
    .sync_o(sync_chain_2_sync_o));
  assign n37_o = sync_chain_2_sync_o; // extract
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:447:9  */
  debouncer_4_10 debouncer_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(trigger_start_mode_i),
    .debounced_o(debouncer_0_debounced_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:460:3  */
  debouncer_4_10 debouncer_1 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(adaptive_mode_i),
    .debounced_o(debouncer_1_debounced_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:473:3  */
  debouncer_4_10 debouncer_2 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(control_mode_i),
    .debounced_o(debouncer_2_debounced_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:486:3  */
  debouncer_4_10 debouncer_3 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(signal_select_in_i),
    .debounced_o(debouncer_3_debounced_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:499:3  */
  debouncer_4_10 debouncer_4 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(enable_i),
    .debounced_o(debouncer_4_debounced_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:512:3  */
  debouncer_4_10 debouncer_5 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(select_tbs_delta_steps_i),
    .debounced_o(debouncer_5_debounced_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:546:37  */
  assign n65_o = ~trigger_start_sampling_d;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:546:67  */
  assign n66_o = n65_o & trigger_start_sampling_sync;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:547:58  */
  assign n67_o = ~trigger_start_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:547:53  */
  assign n68_o = trigger_start_mode_d & n67_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:548:39  */
  assign n69_o = ~trigger_start_mode_d;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:548:65  */
  assign n70_o = n69_o & trigger_start_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:549:48  */
  assign n71_o = ~adaptive_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:549:43  */
  assign n72_o = adaptive_mode_d & n71_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:550:34  */
  assign n73_o = ~adaptive_mode_d;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:550:55  */
  assign n74_o = n73_o & adaptive_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:551:46  */
  assign n75_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:551:41  */
  assign n76_o = control_mode_d & n75_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:552:33  */
  assign n77_o = ~control_mode_d;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:552:53  */
  assign n78_o = n77_o & control_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:553:54  */
  assign n79_o = ~signal_select_in_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:553:49  */
  assign n80_o = signal_select_in_d & n79_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:554:37  */
  assign n81_o = ~signal_select_in_d;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:554:61  */
  assign n82_o = n81_o & signal_select_in_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:555:66  */
  assign n83_o = ~select_tbs_delta_steps_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:555:61  */
  assign n84_o = select_tbs_delta_steps_d & n83_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:556:43  */
  assign n85_o = ~select_tbs_delta_steps_d;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:556:73  */
  assign n86_o = n85_o & select_tbs_delta_steps_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:558:67  */
  assign n88_o = trigger_start_mode_edge_f | trigger_start_mode_edge_r;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:558:102  */
  assign n89_o = n88_o | adaptive_mode_edge_f;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:559:56  */
  assign n90_o = n89_o | adaptive_mode_edge_r;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:559:86  */
  assign n91_o = n90_o | control_mode_edge_f;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:560:55  */
  assign n92_o = n91_o | control_mode_edge_r;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:560:84  */
  assign n93_o = n92_o | signal_select_in_edge_f;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:561:59  */
  assign n94_o = n93_o | signal_select_in_edge_r;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:561:92  */
  assign n95_o = n94_o | select_tbs_delta_steps_edge_f;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:562:65  */
  assign n96_o = n95_o | select_tbs_delta_steps_edge_r;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:558:29  */
  assign n97_o = n96_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:571:9  */
  sync_chain_2_2 sync_chain_1 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(n99_o),
    .sync_o(sync_chain_1_sync_o));
  assign n99_o = {comp_lower_i, comp_upper_i};
  assign n101_o = sync_chain_1_sync_o[0]; // extract
  assign n102_o = sync_chain_1_sync_o[1]; // extract
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:588:3  */
  spike_detector spike_detector_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .detection_en_i(detection_en),
    .comp_upper_i(comp_upper_sync),
    .comp_lower_i(comp_lower_sync),
    .change_upper_strb_i(delta_steps_upper_strb),
    .change_lower_strb_i(delta_steps_lower_strb),
    .stopped_changing_upper_strb_i(dac_finished_upper_strb),
    .stopped_changing_lower_strb_i(dac_finished_lower_strb),
    .increasing_en_i(increasing_en),
    .decreasing_en_i(decreasing_en),
    .pause_detection_strb_i(pause_detection_strb),
    .spike_o(spike_detector_0_spike_o),
    .spike_strb_o(spike_detector_0_spike_strb_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:610:3  */
  adaptive_threshold_control_19_18_8_8_255_0_3_2 adaptive_ctrl_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .sync_reset_i(reset_delta_steps_strb),
    .overflow_strb_i(overflow_strb),
    .curr_time_i(curr_time),
    .spike_i(spike),
    .spike_strb_i(spike_strb),
    .d_max_i(n105_o),
    .d_min_i(n106_o),
    .win_length_i(atbs_win_length_adj_uart),
    .max_delta_steps_i(atbs_max_delta_steps_adj_uart),
    .increasing_en_o(adaptive_ctrl_0_increasing_en_o),
    .decreasing_en_o(adaptive_ctrl_0_decreasing_en_o),
    .direction_upper_o(adaptive_ctrl_0_direction_upper_o),
    .direction_lower_o(adaptive_ctrl_0_direction_lower_o),
    .delta_steps_upper_strb_o(adaptive_ctrl_0_delta_steps_upper_strb_o),
    .delta_steps_lower_strb_o(adaptive_ctrl_0_delta_steps_lower_strb_o),
    .delta_steps_upper_o(adaptive_ctrl_0_delta_steps_upper_o),
    .delta_steps_lower_o(adaptive_ctrl_0_delta_steps_lower_o),
    .adapt_on_overflow_strb_o(adaptive_ctrl_0_adapt_on_overflow_strb_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:647:9  */
  dac_control_8_8_1_8 dac_control_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_dac_i(enable_analog),
    .clear_dac_i(clear_dac),
    .adaptive_mode_i(adaptive_mode),
    .select_tbs_delta_steps_i(select_tbs_delta_steps),
    .direction_i(direction_upper),
    .update_dac_strb_i(update_dac_upper_strb),
    .delta_steps_i(delta_steps_upper),
    .dac_counter_value_o(dac_control_0_dac_counter_value_o),
    .dac_finished_strb_o(dac_control_0_dac_finished_strb_o),
    .dac_pd_o(dac_control_0_dac_pd_o),
    .dac_wr_o(dac_control_0_dac_wr_o),
    .dac_clr_o(dac_control_0_dac_clr_o),
    .dac_o(dac_control_0_dac_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:678:51  */
  assign n122_o = delta_steps_upper_strb | dac_init_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:682:9  */
  dac_control_8_8_0_8 dac_control_1 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_dac_i(enable_analog),
    .clear_dac_i(clear_dac),
    .adaptive_mode_i(adaptive_mode),
    .select_tbs_delta_steps_i(select_tbs_delta_steps),
    .direction_i(direction_lower),
    .update_dac_strb_i(update_dac_lower_strb),
    .delta_steps_i(delta_steps_lower),
    .dac_counter_value_o(dac_control_1_dac_counter_value_o),
    .dac_finished_strb_o(dac_control_1_dac_finished_strb_o),
    .dac_pd_o(dac_control_1_dac_pd_o),
    .dac_wr_o(dac_control_1_dac_wr_o),
    .dac_clr_o(dac_control_1_dac_clr_o),
    .dac_o(dac_control_1_dac_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:713:51  */
  assign n129_o = delta_steps_lower_strb | dac_init_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:741:54  */
  assign n141_o = 8'b11111111 - tbs_delta_steps_upper;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:741:33  */
  assign n142_o = $unsigned(dac_counter_value_upper) > $unsigned(n141_o);
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:741:107  */
  assign n144_o = dac_counter_value_upper == 8'b11111111;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:741:79  */
  assign n145_o = n142_o | n144_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:741:5  */
  assign n148_o = n145_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:748:109  */
  assign n151_o = dac_counter_value_lower == 8'b00000000;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:748:81  */
  assign n153_o = 1'b0 | n151_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:748:5  */
  assign n156_o = n153_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:759:61  */
  assign n158_o = select_tbs_delta_steps ? tbs_virtual_delta_steps_adj_uart : 8'b00000001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:760:61  */
  assign n160_o = select_tbs_delta_steps ? tbs_virtual_delta_steps_adj_uart : 8'b00000001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:770:47  */
  assign n162_o = adaptive_mode ? atbs_delta_steps_upper : tbs_delta_steps_upper;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:771:47  */
  assign n163_o = adaptive_mode ? atbs_delta_steps_lower : tbs_delta_steps_lower;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:776:57  */
  assign n164_o = adaptive_mode ? atbs_delta_steps_upper_strb : spike_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:777:57  */
  assign n165_o = adaptive_mode ? atbs_delta_steps_lower_strb : spike_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:782:43  */
  assign n166_o = adaptive_mode ? atbs_direction_upper : spike;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:783:43  */
  assign n167_o = adaptive_mode ? atbs_direction_lower : spike;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:786:50  */
  assign n168_o = adaptive_mode ? adapt_on_overflow_strb : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:790:39  */
  assign n170_o = adaptive_mode ? atbs_increasing_en : tbs_increasing_en;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:791:39  */
  assign n171_o = adaptive_mode ? atbs_decreasing_en : tbs_decreasing_en;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:797:9  */
  analog_trig_4 analog_trigger_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_i(enable_analog),
    .period_adj_i(analog_trigger_period_adj_uart),
    .duty_cycle_adj_i(analog_trigger_duty_cycle_adj_uart),
    .analog_trigger_o(analog_trigger_0_analog_trigger_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:818:3  */
  sc_noc_generator_11 sc_noc_generator_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_i(enable_analog),
    .period_adj_i(sc_noc_generator_period_adj_uart),
    .duty_cycle_adj_i(sc_noc_generator_duty_cycle_adj_uart),
    .overlap_adj_i(sc_noc_generator_overlap_adj_uart),
    .sc_noc_1_o(sc_noc_generator_0_sc_noc_1_o),
    .sc_noc_2_o(sc_noc_generator_0_sc_noc_2_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:841:74  */
  assign n175_o = reset_time_measurement_strb & trigger_start_mode;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:841:42  */
  assign n176_o = reset_entity | n175_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:842:3  */
  time_measurement_18_262144 time_measurement_0 (
    .clock_i(clock_i),
    .reset_i(reset_time_measurement),
    .overflow_strb_o(time_measurement_0_overflow_strb_o),
    .curr_time_o(time_measurement_0_curr_time_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:857:3  */
  spike_encoder_18_19 spike_encoder_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .spike_i(spike),
    .spike_strb_i(spike_strb),
    .overflow_strb_i(overflow_strb),
    .curr_time_i(curr_time),
    .encoded_spike_o(spike_encoder_0_encoded_spike_o),
    .encoded_spike_strb_o(spike_encoder_0_encoded_spike_strb_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:876:42  */
  assign n181_o = select_enable_write ? encoded_spike_strb : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:880:3  */
  spike_memory_19_2 spike_memory_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_write_i(enable_write_mux),
    .a_data_i(encoded_spike),
    .enable_read_i(enable_read),
    .tx_strb_i(uart_tx_strb),
    .read_strb_o(spike_memory_0_read_strb_o),
    .b_data_o(spike_memory_0_b_data_o),
    .fifo_full_o(spike_memory_0_fifo_full_o),
    .fifo_empty_o(spike_memory_0_fifo_empty_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:903:3  */
  memory2uart_19_8 memory2uart_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .read_strb_i(read_strb),
    .tx_strb_i(uart_tx_strb),
    .memory_data_i(b_data),
    .uart_data_o(memory2uart_0_uart_data_o),
    .tx_start_strb_o(memory2uart_0_tx_start_strb_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:921:3  */
  uart_9_8 uart_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .baudrate_adj_i(baudrate_adj_uart),
    .tx_start_strb_i(tx_start_strb),
    .tx_data_i(tx_data),
    .rx_i(uart_rx_i),
    .tx_strb_o(uart_0_tx_strb_o),
    .tx_o(uart_0_tx_o),
    .rx_data_strb_o(uart_0_rx_data_strb_o),
    .rx_data_o(uart_0_rx_data_o));
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:966:39  */
  assign n201_o = main_counter_value == 20'b11000011010011111111;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:966:62  */
  assign n202_o = n201_o | reset_main_counter_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:969:71  */
  assign n204_o = main_counter_value + 20'b00000000000000000001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:966:17  */
  assign n206_o = n202_o ? 20'b00000000000000000000 : n204_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1021:9  */
  assign n237_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1032:9  */
  assign n240_o = enable_analog ? 3'b001 : 3'b000;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1032:9  */
  assign n242_o = enable_analog ? 1'b0 : idle_led;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1020:7  */
  assign n244_o = state == 3'b000;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1039:7  */
  assign n246_o = state == 3'b001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1059:9  */
  assign n248_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1064:31  */
  assign n250_o = main_counter_value == 20'b00000000000000010010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1064:9  */
  assign n253_o = n250_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1064:9  */
  assign n256_o = n250_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1064:9  */
  assign n259_o = n250_o ? 3'b011 : 3'b010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1064:9  */
  assign n261_o = n250_o ? 1'b1 : clear_dac;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1058:7  */
  assign n263_o = state == 3'b010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1080:9  */
  assign n265_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1085:31  */
  assign n267_o = main_counter_value == 20'b00000000000000001000;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1085:9  */
  assign n270_o = n267_o ? 3'b100 : 3'b011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1079:7  */
  assign n272_o = state == 3'b011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1092:9  */
  assign n274_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1097:37  */
  assign n275_o = input_changed_strb | uart_changed_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1101:29  */
  assign n276_o = ~enable_analog;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1106:34  */
  assign n277_o = ~trigger_start_mode;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1106:40  */
  assign n278_o = n277_o | trigger_start_sampling_edge_r;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1106:79  */
  assign n279_o = n278_o | uart_start_sampling_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1106:9  */
  assign n282_o = n279_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1106:9  */
  assign n285_o = n279_o ? 3'b101 : 3'b100;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1101:9  */
  assign n287_o = n276_o ? 1'b0 : n282_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1101:9  */
  assign n289_o = n276_o ? 3'b000 : n285_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1101:9  */
  assign n291_o = n276_o ? 1'b1 : idle_led;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1097:9  */
  assign n294_o = n275_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1097:9  */
  assign n297_o = n275_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1097:9  */
  assign n299_o = n275_o ? 1'b0 : n287_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1097:9  */
  assign n301_o = n275_o ? 3'b001 : n289_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1097:9  */
  assign n302_o = n275_o ? idle_led : n291_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1091:7  */
  assign n304_o = state == 3'b100;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1117:9  */
  assign n306_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1121:31  */
  assign n308_o = main_counter_value == 20'b00000000000000001010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1121:9  */
  assign n311_o = n308_o ? 3'b110 : 3'b101;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1116:7  */
  assign n313_o = state == 3'b101;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1128:9  */
  assign n315_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1133:31  */
  assign n316_o = ~trigger_start_mode;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1133:37  */
  assign n317_o = n316_o | trigger_start_sampling_edge_r;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1133:76  */
  assign n318_o = n317_o | uart_start_sampling_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1133:9  */
  assign n321_o = n318_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1133:9  */
  assign n324_o = n318_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1133:9  */
  assign n327_o = n318_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1133:9  */
  assign n330_o = n318_o ? 3'b111 : 3'b110;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1133:9  */
  assign n332_o = n318_o ? 1'b1 : select_enable_write;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1133:9  */
  assign n334_o = n318_o ? 1'b1 : detection_en;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1127:7  */
  assign n336_o = state == 3'b110;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1160:9  */
  assign n339_o = fifo_empty ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1160:9  */
  assign n342_o = fifo_empty ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1156:9  */
  assign n344_o = fifo_full ? 1'b1 : overflow_led;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1156:9  */
  assign n345_o = fifo_full ? underflow_led : n339_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1156:9  */
  assign n348_o = fifo_full ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1156:9  */
  assign n350_o = fifo_full ? 1'b1 : n342_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1172:37  */
  assign n351_o = input_changed_strb | uart_changed_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1176:29  */
  assign n352_o = ~enable_analog;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1176:9  */
  assign n355_o = n352_o ? 3'b000 : 3'b111;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1176:9  */
  assign n357_o = n352_o ? 1'b1 : idle_led;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1172:9  */
  assign n360_o = n351_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1172:9  */
  assign n363_o = n351_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1172:9  */
  assign n365_o = n351_o ? 3'b001 : n355_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1172:9  */
  assign n366_o = n351_o ? idle_led : n357_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1154:7  */
  assign n368_o = state == 3'b111;
  assign n369_o = {n368_o, n336_o, n313_o, n304_o, n272_o, n263_o, n246_o, n244_o};
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n371_o = n360_o;
      8'b01000000: n371_o = 1'b0;
      8'b00100000: n371_o = 1'b0;
      8'b00010000: n371_o = n294_o;
      8'b00001000: n371_o = 1'b0;
      8'b00000100: n371_o = 1'b0;
      8'b00000010: n371_o = 1'b0;
      8'b00000001: n371_o = 1'b0;
      default: n371_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n374_o = n363_o;
      8'b01000000: n374_o = 1'b0;
      8'b00100000: n374_o = 1'b0;
      8'b00010000: n374_o = n297_o;
      8'b00001000: n374_o = 1'b0;
      8'b00000100: n374_o = 1'b0;
      8'b00000010: n374_o = 1'b0;
      8'b00000001: n374_o = 1'b0;
      default: n374_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n377_o = 1'b0;
      8'b01000000: n377_o = n321_o;
      8'b00100000: n377_o = 1'b0;
      8'b00010000: n377_o = 1'b0;
      8'b00001000: n377_o = 1'b0;
      8'b00000100: n377_o = 1'b0;
      8'b00000010: n377_o = 1'b0;
      8'b00000001: n377_o = 1'b0;
      default: n377_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n380_o = 1'b0;
      8'b01000000: n380_o = 1'b0;
      8'b00100000: n380_o = 1'b0;
      8'b00010000: n380_o = 1'b0;
      8'b00001000: n380_o = 1'b0;
      8'b00000100: n380_o = n253_o;
      8'b00000010: n380_o = 1'b0;
      8'b00000001: n380_o = 1'b0;
      default: n380_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n383_o = 1'b0;
      8'b01000000: n383_o = n324_o;
      8'b00100000: n383_o = 1'b0;
      8'b00010000: n383_o = 1'b0;
      8'b00001000: n383_o = 1'b0;
      8'b00000100: n383_o = 1'b0;
      8'b00000010: n383_o = 1'b0;
      8'b00000001: n383_o = 1'b0;
      default: n383_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n387_o = 1'b0;
      8'b01000000: n387_o = n327_o;
      8'b00100000: n387_o = 1'b0;
      8'b00010000: n387_o = n299_o;
      8'b00001000: n387_o = 1'b0;
      8'b00000100: n387_o = n256_o;
      8'b00000010: n387_o = 1'b1;
      8'b00000001: n387_o = 1'b0;
      default: n387_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n391_o = n365_o;
      8'b01000000: n391_o = n330_o;
      8'b00100000: n391_o = n311_o;
      8'b00010000: n391_o = n301_o;
      8'b00001000: n391_o = n270_o;
      8'b00000100: n391_o = n259_o;
      8'b00000010: n391_o = 3'b010;
      8'b00000001: n391_o = n240_o;
      default: n391_o = 3'b000;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n392_o = n366_o;
      8'b01000000: n392_o = idle_led;
      8'b00100000: n392_o = idle_led;
      8'b00010000: n392_o = n302_o;
      8'b00001000: n392_o = idle_led;
      8'b00000100: n392_o = idle_led;
      8'b00000010: n392_o = idle_led;
      8'b00000001: n392_o = n242_o;
      default: n392_o = idle_led;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n394_o = n344_o;
      8'b01000000: n394_o = overflow_led;
      8'b00100000: n394_o = overflow_led;
      8'b00010000: n394_o = overflow_led;
      8'b00001000: n394_o = overflow_led;
      8'b00000100: n394_o = overflow_led;
      8'b00000010: n394_o = 1'b0;
      8'b00000001: n394_o = overflow_led;
      default: n394_o = overflow_led;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n396_o = n345_o;
      8'b01000000: n396_o = underflow_led;
      8'b00100000: n396_o = underflow_led;
      8'b00010000: n396_o = underflow_led;
      8'b00001000: n396_o = underflow_led;
      8'b00000100: n396_o = underflow_led;
      8'b00000010: n396_o = 1'b0;
      8'b00000001: n396_o = underflow_led;
      default: n396_o = underflow_led;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n399_o = n348_o;
      8'b01000000: n399_o = n332_o;
      8'b00100000: n399_o = select_enable_write;
      8'b00010000: n399_o = select_enable_write;
      8'b00001000: n399_o = select_enable_write;
      8'b00000100: n399_o = select_enable_write;
      8'b00000010: n399_o = 1'b0;
      8'b00000001: n399_o = 1'b0;
      default: n399_o = select_enable_write;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n400_o = n350_o;
      8'b01000000: n400_o = n315_o;
      8'b00100000: n400_o = n306_o;
      8'b00010000: n400_o = n274_o;
      8'b00001000: n400_o = n265_o;
      8'b00000100: n400_o = n248_o;
      8'b00000010: n400_o = enable_read;
      8'b00000001: n400_o = n237_o;
      default: n400_o = enable_read;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n403_o = detection_en;
      8'b01000000: n403_o = n334_o;
      8'b00100000: n403_o = detection_en;
      8'b00010000: n403_o = detection_en;
      8'b00001000: n403_o = detection_en;
      8'b00000100: n403_o = detection_en;
      8'b00000010: n403_o = 1'b0;
      8'b00000001: n403_o = 1'b0;
      default: n403_o = detection_en;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1019:5  */
  always @*
    case (n369_o)
      8'b10000000: n405_o = clear_dac;
      8'b01000000: n405_o = clear_dac;
      8'b00100000: n405_o = clear_dac;
      8'b00010000: n405_o = clear_dac;
      8'b00001000: n405_o = clear_dac;
      8'b00000100: n405_o = n261_o;
      8'b00000010: n405_o = 1'b0;
      8'b00000001: n405_o = clear_dac;
      default: n405_o = clear_dac;
    endcase
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1291:25  */
  assign n472_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1294:28  */
  assign n474_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1297:28  */
  assign n476_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1300:28  */
  assign n478_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1303:28  */
  assign n480_o = uart_rx_data == 8'b01100101;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1306:28  */
  assign n482_o = uart_rx_data == 8'b01100110;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1306:9  */
  assign n484_o = n482_o ? 4'b0011 : analog_trigger_period_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1306:9  */
  assign n486_o = n482_o ? 4'b0010 : analog_trigger_duty_cycle_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1303:9  */
  assign n488_o = n480_o ? 4'b0011 : n484_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1303:9  */
  assign n490_o = n480_o ? 4'b0001 : n486_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1300:9  */
  assign n492_o = n478_o ? 4'b0111 : n488_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1300:9  */
  assign n494_o = n478_o ? 4'b0100 : n490_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1297:9  */
  assign n496_o = n476_o ? 4'b0111 : n492_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1297:9  */
  assign n498_o = n476_o ? 4'b0010 : n494_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1294:9  */
  assign n500_o = n474_o ? 4'b1111 : n496_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1294:9  */
  assign n502_o = n474_o ? 4'b1000 : n498_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1291:9  */
  assign n504_o = n472_o ? 4'b1111 : n500_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1291:9  */
  assign n506_o = n472_o ? 4'b0100 : n502_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1312:25  */
  assign n508_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1316:28  */
  assign n510_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1320:28  */
  assign n512_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1320:9  */
  assign n514_o = n512_o ? 11'b00111111111 : sc_noc_generator_period_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1320:9  */
  assign n516_o = n512_o ? 11'b00010000000 : sc_noc_generator_duty_cycle_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1320:9  */
  assign n518_o = n512_o ? 11'b00100000000 : sc_noc_generator_overlap_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1316:9  */
  assign n520_o = n510_o ? 11'b01111111111 : n514_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1316:9  */
  assign n522_o = n510_o ? 11'b00100000000 : n516_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1316:9  */
  assign n524_o = n510_o ? 11'b01000000000 : n518_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1312:9  */
  assign n526_o = n508_o ? 11'b11111111111 : n520_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1312:9  */
  assign n528_o = n508_o ? 11'b01000000000 : n522_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1312:9  */
  assign n530_o = n508_o ? 11'b10000000000 : n524_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1328:25  */
  assign n532_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1330:28  */
  assign n534_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1332:28  */
  assign n536_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1334:28  */
  assign n538_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1334:9  */
  assign n540_o = n538_o ? 9'b001000101 : baudrate_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1332:9  */
  assign n542_o = n536_o ? 9'b010001011 : n540_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1330:9  */
  assign n544_o = n534_o ? 9'b011010000 : n542_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1328:9  */
  assign n546_o = n532_o ? 9'b110100001 : n544_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1339:25  */
  assign n548_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1341:28  */
  assign n550_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1343:28  */
  assign n552_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1345:28  */
  assign n554_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1347:28  */
  assign n556_o = uart_rx_data == 8'b01100101;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1347:9  */
  assign n558_o = n556_o ? 8'b00100000 : tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1345:9  */
  assign n560_o = n554_o ? 8'b00010000 : n558_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1343:9  */
  assign n562_o = n552_o ? 8'b00001000 : n560_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1341:9  */
  assign n564_o = n550_o ? 8'b00000100 : n562_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1339:9  */
  assign n566_o = n548_o ? 8'b00000010 : n564_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1352:25  */
  assign n568_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1354:28  */
  assign n570_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1356:28  */
  assign n572_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1358:28  */
  assign n574_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1360:28  */
  assign n576_o = uart_rx_data == 8'b01100101;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1362:28  */
  assign n578_o = uart_rx_data == 8'b01100110;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1362:9  */
  assign n580_o = n578_o ? 19'b0111110100000000000 : atbs_win_length_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1360:9  */
  assign n582_o = n576_o ? 19'b0011111010000000000 : n580_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1358:9  */
  assign n584_o = n574_o ? 19'b0001111101000000000 : n582_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1356:9  */
  assign n586_o = n572_o ? 19'b0000111110100000000 : n584_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1354:9  */
  assign n588_o = n570_o ? 19'b0000011111010000000 : n586_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1352:9  */
  assign n590_o = n568_o ? 19'b0000001111101000000 : n588_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1367:25  */
  assign n592_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1369:28  */
  assign n594_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1371:28  */
  assign n596_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1373:28  */
  assign n598_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1375:28  */
  assign n600_o = uart_rx_data == 8'b01100101;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1375:9  */
  assign n602_o = n600_o ? 8'b01000000 : atbs_max_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1373:9  */
  assign n604_o = n598_o ? 8'b00100000 : n602_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1371:9  */
  assign n606_o = n596_o ? 8'b00010000 : n604_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1369:9  */
  assign n608_o = n594_o ? 8'b00001000 : n606_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1367:9  */
  assign n610_o = n592_o ? 8'b00000100 : n608_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:25  */
  assign n612_o = uart_rx_data == 8'b00110000;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:28  */
  assign n614_o = uart_rx_data == 8'b00110001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:28  */
  assign n616_o = uart_rx_data == 8'b00110010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:28  */
  assign n618_o = uart_rx_data == 8'b00110011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:28  */
  assign n620_o = uart_rx_data == 8'b00110100;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:28  */
  assign n622_o = uart_rx_data == 8'b00110101;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:28  */
  assign n624_o = uart_rx_data == 8'b00110110;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:28  */
  assign n626_o = uart_rx_data == 8'b00110111;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:28  */
  assign n628_o = uart_rx_data == 8'b00111000;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:28  */
  assign n630_o = uart_rx_data == 8'b00111001;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1399:28  */
  assign n632_o = uart_rx_data == 8'b01010101;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1401:28  */
  assign n634_o = uart_rx_data == 8'b01010011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1403:28  */
  assign n636_o = uart_rx_data == 8'b01010010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1405:28  */
  assign n638_o = uart_rx_data == 8'b01010100;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1407:28  */
  assign n640_o = uart_rx_data == 8'b01000011;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1409:28  */
  assign n642_o = uart_rx_data == 8'b01000010;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1411:28  */
  assign n644_o = uart_rx_data == 8'b01010110;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1413:28  */
  assign n646_o = uart_rx_data == 8'b01010111;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1415:28  */
  assign n648_o = uart_rx_data == 8'b01000100;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1415:9  */
  assign n650_o = n648_o ? 1'b1 : atbs_max_delta_steps_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1413:9  */
  assign n652_o = n646_o ? 1'b1 : atbs_win_length_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1413:9  */
  assign n653_o = n646_o ? atbs_max_delta_steps_uart : n650_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1411:9  */
  assign n655_o = n644_o ? 1'b1 : tbs_virtual_delta_steps_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1411:9  */
  assign n656_o = n644_o ? atbs_win_length_uart : n652_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1411:9  */
  assign n657_o = n644_o ? atbs_max_delta_steps_uart : n653_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1409:9  */
  assign n659_o = n642_o ? 1'b1 : baudrate_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1409:9  */
  assign n660_o = n642_o ? tbs_virtual_delta_steps_uart : n655_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1409:9  */
  assign n661_o = n642_o ? atbs_win_length_uart : n656_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1409:9  */
  assign n662_o = n642_o ? atbs_max_delta_steps_uart : n657_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1407:9  */
  assign n664_o = n640_o ? 1'b1 : sc_noc_generator_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1407:9  */
  assign n665_o = n640_o ? baudrate_uart : n659_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1407:9  */
  assign n666_o = n640_o ? tbs_virtual_delta_steps_uart : n660_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1407:9  */
  assign n667_o = n640_o ? atbs_win_length_uart : n661_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1407:9  */
  assign n668_o = n640_o ? atbs_max_delta_steps_uart : n662_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1405:9  */
  assign n670_o = n638_o ? 1'b1 : analog_trigger_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1405:9  */
  assign n671_o = n638_o ? sc_noc_generator_uart : n664_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1405:9  */
  assign n672_o = n638_o ? baudrate_uart : n665_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1405:9  */
  assign n673_o = n638_o ? tbs_virtual_delta_steps_uart : n666_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1405:9  */
  assign n674_o = n638_o ? atbs_win_length_uart : n667_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1405:9  */
  assign n675_o = n638_o ? atbs_max_delta_steps_uart : n668_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1403:9  */
  assign n678_o = n636_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1403:9  */
  assign n679_o = n636_o ? analog_trigger_uart : n670_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1403:9  */
  assign n680_o = n636_o ? sc_noc_generator_uart : n671_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1403:9  */
  assign n681_o = n636_o ? baudrate_uart : n672_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1403:9  */
  assign n682_o = n636_o ? tbs_virtual_delta_steps_uart : n673_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1403:9  */
  assign n683_o = n636_o ? atbs_win_length_uart : n674_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1403:9  */
  assign n684_o = n636_o ? atbs_max_delta_steps_uart : n675_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1401:9  */
  assign n686_o = n634_o ? 1'b0 : n678_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1401:9  */
  assign n687_o = n634_o ? analog_trigger_uart : n679_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1401:9  */
  assign n688_o = n634_o ? sc_noc_generator_uart : n680_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1401:9  */
  assign n689_o = n634_o ? baudrate_uart : n681_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1401:9  */
  assign n690_o = n634_o ? tbs_virtual_delta_steps_uart : n682_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1401:9  */
  assign n691_o = n634_o ? atbs_win_length_uart : n683_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1401:9  */
  assign n692_o = n634_o ? atbs_max_delta_steps_uart : n684_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1401:9  */
  assign n695_o = n634_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1399:9  */
  assign n698_o = n632_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1399:9  */
  assign n700_o = n632_o ? 1'b0 : n686_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1399:9  */
  assign n701_o = n632_o ? analog_trigger_uart : n687_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1399:9  */
  assign n702_o = n632_o ? sc_noc_generator_uart : n688_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1399:9  */
  assign n703_o = n632_o ? baudrate_uart : n689_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1399:9  */
  assign n704_o = n632_o ? tbs_virtual_delta_steps_uart : n690_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1399:9  */
  assign n705_o = n632_o ? atbs_win_length_uart : n691_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1399:9  */
  assign n706_o = n632_o ? atbs_max_delta_steps_uart : n692_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1399:9  */
  assign n708_o = n632_o ? 1'b0 : n695_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:9  */
  assign n710_o = n630_o ? 1'b0 : n698_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:9  */
  assign n712_o = n630_o ? 1'b0 : n700_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:9  */
  assign n713_o = n630_o ? analog_trigger_uart : n701_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:9  */
  assign n714_o = n630_o ? sc_noc_generator_uart : n702_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:9  */
  assign n715_o = n630_o ? baudrate_uart : n703_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:9  */
  assign n716_o = n630_o ? tbs_virtual_delta_steps_uart : n704_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:9  */
  assign n717_o = n630_o ? atbs_win_length_uart : n705_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:9  */
  assign n718_o = n630_o ? atbs_max_delta_steps_uart : n706_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:9  */
  assign n720_o = n630_o ? 1'b1 : select_tbs_delta_steps_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1397:9  */
  assign n722_o = n630_o ? 1'b0 : n708_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:9  */
  assign n724_o = n628_o ? 1'b0 : n710_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:9  */
  assign n726_o = n628_o ? 1'b0 : n712_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:9  */
  assign n727_o = n628_o ? analog_trigger_uart : n713_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:9  */
  assign n728_o = n628_o ? sc_noc_generator_uart : n714_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:9  */
  assign n729_o = n628_o ? baudrate_uart : n715_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:9  */
  assign n730_o = n628_o ? tbs_virtual_delta_steps_uart : n716_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:9  */
  assign n731_o = n628_o ? atbs_win_length_uart : n717_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:9  */
  assign n732_o = n628_o ? atbs_max_delta_steps_uart : n718_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:9  */
  assign n734_o = n628_o ? 1'b0 : n720_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1395:9  */
  assign n736_o = n628_o ? 1'b0 : n722_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n738_o = n626_o ? 1'b0 : n724_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n740_o = n626_o ? 1'b0 : n726_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n741_o = n626_o ? analog_trigger_uart : n727_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n742_o = n626_o ? sc_noc_generator_uart : n728_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n743_o = n626_o ? baudrate_uart : n729_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n744_o = n626_o ? tbs_virtual_delta_steps_uart : n730_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n745_o = n626_o ? atbs_win_length_uart : n731_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n746_o = n626_o ? atbs_max_delta_steps_uart : n732_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n748_o = n626_o ? 1'b1 : enable_analog_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n749_o = n626_o ? select_tbs_delta_steps_uart : n734_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1393:9  */
  assign n751_o = n626_o ? 1'b0 : n736_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n753_o = n624_o ? 1'b0 : n738_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n755_o = n624_o ? 1'b0 : n740_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n756_o = n624_o ? analog_trigger_uart : n741_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n757_o = n624_o ? sc_noc_generator_uart : n742_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n758_o = n624_o ? baudrate_uart : n743_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n759_o = n624_o ? tbs_virtual_delta_steps_uart : n744_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n760_o = n624_o ? atbs_win_length_uart : n745_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n761_o = n624_o ? atbs_max_delta_steps_uart : n746_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n763_o = n624_o ? 1'b0 : n748_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n764_o = n624_o ? select_tbs_delta_steps_uart : n749_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1391:9  */
  assign n766_o = n624_o ? 1'b0 : n751_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n768_o = n622_o ? 1'b0 : n753_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n770_o = n622_o ? 1'b0 : n755_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n771_o = n622_o ? analog_trigger_uart : n756_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n772_o = n622_o ? sc_noc_generator_uart : n757_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n773_o = n622_o ? baudrate_uart : n758_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n774_o = n622_o ? tbs_virtual_delta_steps_uart : n759_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n775_o = n622_o ? atbs_win_length_uart : n760_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n776_o = n622_o ? atbs_max_delta_steps_uart : n761_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n778_o = n622_o ? 1'b1 : signal_select_in_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n779_o = n622_o ? enable_analog_uart : n763_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n780_o = n622_o ? select_tbs_delta_steps_uart : n764_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1389:9  */
  assign n782_o = n622_o ? 1'b0 : n766_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n784_o = n620_o ? 1'b0 : n768_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n786_o = n620_o ? 1'b0 : n770_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n787_o = n620_o ? analog_trigger_uart : n771_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n788_o = n620_o ? sc_noc_generator_uart : n772_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n789_o = n620_o ? baudrate_uart : n773_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n790_o = n620_o ? tbs_virtual_delta_steps_uart : n774_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n791_o = n620_o ? atbs_win_length_uart : n775_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n792_o = n620_o ? atbs_max_delta_steps_uart : n776_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n794_o = n620_o ? 1'b0 : n778_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n795_o = n620_o ? enable_analog_uart : n779_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n796_o = n620_o ? select_tbs_delta_steps_uart : n780_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1387:9  */
  assign n798_o = n620_o ? 1'b0 : n782_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n800_o = n618_o ? 1'b0 : n784_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n802_o = n618_o ? 1'b0 : n786_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n803_o = n618_o ? analog_trigger_uart : n787_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n804_o = n618_o ? sc_noc_generator_uart : n788_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n805_o = n618_o ? baudrate_uart : n789_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n806_o = n618_o ? tbs_virtual_delta_steps_uart : n790_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n807_o = n618_o ? atbs_win_length_uart : n791_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n808_o = n618_o ? atbs_max_delta_steps_uart : n792_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n810_o = n618_o ? 1'b1 : adaptive_mode_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n811_o = n618_o ? signal_select_in_uart : n794_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n812_o = n618_o ? enable_analog_uart : n795_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n813_o = n618_o ? select_tbs_delta_steps_uart : n796_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1385:9  */
  assign n815_o = n618_o ? 1'b0 : n798_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n817_o = n616_o ? 1'b0 : n800_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n819_o = n616_o ? 1'b0 : n802_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n820_o = n616_o ? analog_trigger_uart : n803_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n821_o = n616_o ? sc_noc_generator_uart : n804_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n822_o = n616_o ? baudrate_uart : n805_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n823_o = n616_o ? tbs_virtual_delta_steps_uart : n806_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n824_o = n616_o ? atbs_win_length_uart : n807_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n825_o = n616_o ? atbs_max_delta_steps_uart : n808_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n827_o = n616_o ? 1'b0 : n810_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n828_o = n616_o ? signal_select_in_uart : n811_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n829_o = n616_o ? enable_analog_uart : n812_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n830_o = n616_o ? select_tbs_delta_steps_uart : n813_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1383:9  */
  assign n832_o = n616_o ? 1'b0 : n815_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n834_o = n614_o ? 1'b0 : n817_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n836_o = n614_o ? 1'b0 : n819_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n837_o = n614_o ? analog_trigger_uart : n820_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n838_o = n614_o ? sc_noc_generator_uart : n821_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n839_o = n614_o ? baudrate_uart : n822_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n840_o = n614_o ? tbs_virtual_delta_steps_uart : n823_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n841_o = n614_o ? atbs_win_length_uart : n824_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n842_o = n614_o ? atbs_max_delta_steps_uart : n825_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n844_o = n614_o ? 1'b1 : trigger_start_mode_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n845_o = n614_o ? adaptive_mode_uart : n827_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n846_o = n614_o ? signal_select_in_uart : n828_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n847_o = n614_o ? enable_analog_uart : n829_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n848_o = n614_o ? select_tbs_delta_steps_uart : n830_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1381:9  */
  assign n850_o = n614_o ? 1'b0 : n832_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n852_o = n612_o ? 1'b0 : n834_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n854_o = n612_o ? 1'b0 : n836_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n855_o = n612_o ? analog_trigger_uart : n837_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n856_o = n612_o ? sc_noc_generator_uart : n838_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n857_o = n612_o ? baudrate_uart : n839_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n858_o = n612_o ? tbs_virtual_delta_steps_uart : n840_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n859_o = n612_o ? atbs_win_length_uart : n841_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n860_o = n612_o ? atbs_max_delta_steps_uart : n842_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n862_o = n612_o ? 1'b0 : n844_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n863_o = n612_o ? adaptive_mode_uart : n845_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n864_o = n612_o ? signal_select_in_uart : n846_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n865_o = n612_o ? enable_analog_uart : n847_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n866_o = n612_o ? select_tbs_delta_steps_uart : n848_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1379:9  */
  assign n868_o = n612_o ? 1'b0 : n850_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n870_o = atbs_max_delta_steps_uart ? 1'b0 : n852_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n872_o = atbs_max_delta_steps_uart ? 1'b0 : n854_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n873_o = atbs_max_delta_steps_uart ? analog_trigger_uart : n855_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n874_o = atbs_max_delta_steps_uart ? sc_noc_generator_uart : n856_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n875_o = atbs_max_delta_steps_uart ? baudrate_uart : n857_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n876_o = atbs_max_delta_steps_uart ? tbs_virtual_delta_steps_uart : n858_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n877_o = atbs_max_delta_steps_uart ? atbs_win_length_uart : n859_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n879_o = atbs_max_delta_steps_uart ? 1'b0 : n860_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n880_o = atbs_max_delta_steps_uart ? n610_o : atbs_max_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n881_o = atbs_max_delta_steps_uart ? trigger_start_mode_uart : n862_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n882_o = atbs_max_delta_steps_uart ? adaptive_mode_uart : n863_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n883_o = atbs_max_delta_steps_uart ? signal_select_in_uart : n864_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n884_o = atbs_max_delta_steps_uart ? enable_analog_uart : n865_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n885_o = atbs_max_delta_steps_uart ? select_tbs_delta_steps_uart : n866_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1365:7  */
  assign n887_o = atbs_max_delta_steps_uart ? 1'b0 : n868_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n889_o = atbs_win_length_uart ? 1'b0 : n870_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n891_o = atbs_win_length_uart ? 1'b0 : n872_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n892_o = atbs_win_length_uart ? analog_trigger_uart : n873_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n893_o = atbs_win_length_uart ? sc_noc_generator_uart : n874_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n894_o = atbs_win_length_uart ? baudrate_uart : n875_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n895_o = atbs_win_length_uart ? tbs_virtual_delta_steps_uart : n876_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n897_o = atbs_win_length_uart ? 1'b0 : n877_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n898_o = atbs_win_length_uart ? n590_o : atbs_win_length_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n899_o = atbs_win_length_uart ? atbs_max_delta_steps_uart : n879_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n900_o = atbs_win_length_uart ? atbs_max_delta_steps_adj_uart : n880_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n901_o = atbs_win_length_uart ? trigger_start_mode_uart : n881_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n902_o = atbs_win_length_uart ? adaptive_mode_uart : n882_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n903_o = atbs_win_length_uart ? signal_select_in_uart : n883_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n904_o = atbs_win_length_uart ? enable_analog_uart : n884_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n905_o = atbs_win_length_uart ? select_tbs_delta_steps_uart : n885_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1350:7  */
  assign n907_o = atbs_win_length_uart ? 1'b0 : n887_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n909_o = tbs_virtual_delta_steps_uart ? 1'b0 : n889_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n911_o = tbs_virtual_delta_steps_uart ? 1'b0 : n891_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n912_o = tbs_virtual_delta_steps_uart ? analog_trigger_uart : n892_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n913_o = tbs_virtual_delta_steps_uart ? sc_noc_generator_uart : n893_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n914_o = tbs_virtual_delta_steps_uart ? baudrate_uart : n894_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n916_o = tbs_virtual_delta_steps_uart ? 1'b0 : n895_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n917_o = tbs_virtual_delta_steps_uart ? n566_o : tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n918_o = tbs_virtual_delta_steps_uart ? atbs_win_length_uart : n897_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n919_o = tbs_virtual_delta_steps_uart ? atbs_win_length_adj_uart : n898_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n920_o = tbs_virtual_delta_steps_uart ? atbs_max_delta_steps_uart : n899_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n921_o = tbs_virtual_delta_steps_uart ? atbs_max_delta_steps_adj_uart : n900_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n922_o = tbs_virtual_delta_steps_uart ? trigger_start_mode_uart : n901_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n923_o = tbs_virtual_delta_steps_uart ? adaptive_mode_uart : n902_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n924_o = tbs_virtual_delta_steps_uart ? signal_select_in_uart : n903_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n925_o = tbs_virtual_delta_steps_uart ? enable_analog_uart : n904_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n926_o = tbs_virtual_delta_steps_uart ? select_tbs_delta_steps_uart : n905_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1337:7  */
  assign n928_o = tbs_virtual_delta_steps_uart ? 1'b0 : n907_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n930_o = baudrate_uart ? 1'b1 : n909_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n932_o = baudrate_uart ? 1'b0 : n911_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n933_o = baudrate_uart ? analog_trigger_uart : n912_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n934_o = baudrate_uart ? sc_noc_generator_uart : n913_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n936_o = baudrate_uart ? 1'b0 : n914_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n937_o = baudrate_uart ? n546_o : baudrate_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n938_o = baudrate_uart ? tbs_virtual_delta_steps_uart : n916_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n939_o = baudrate_uart ? tbs_virtual_delta_steps_adj_uart : n917_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n940_o = baudrate_uart ? atbs_win_length_uart : n918_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n941_o = baudrate_uart ? atbs_win_length_adj_uart : n919_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n942_o = baudrate_uart ? atbs_max_delta_steps_uart : n920_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n943_o = baudrate_uart ? atbs_max_delta_steps_adj_uart : n921_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n944_o = baudrate_uart ? trigger_start_mode_uart : n922_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n945_o = baudrate_uart ? adaptive_mode_uart : n923_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n946_o = baudrate_uart ? signal_select_in_uart : n924_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n947_o = baudrate_uart ? enable_analog_uart : n925_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n948_o = baudrate_uart ? select_tbs_delta_steps_uart : n926_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1325:7  */
  assign n950_o = baudrate_uart ? 1'b0 : n928_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n952_o = sc_noc_generator_uart ? 1'b0 : n930_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n954_o = sc_noc_generator_uart ? 1'b0 : n932_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n955_o = sc_noc_generator_uart ? analog_trigger_uart : n933_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n957_o = sc_noc_generator_uart ? 1'b0 : n934_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n958_o = sc_noc_generator_uart ? n526_o : sc_noc_generator_period_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n959_o = sc_noc_generator_uart ? n528_o : sc_noc_generator_duty_cycle_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n960_o = sc_noc_generator_uart ? n530_o : sc_noc_generator_overlap_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n961_o = sc_noc_generator_uart ? baudrate_uart : n936_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n962_o = sc_noc_generator_uart ? baudrate_adj_uart : n937_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n963_o = sc_noc_generator_uart ? tbs_virtual_delta_steps_uart : n938_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n964_o = sc_noc_generator_uart ? tbs_virtual_delta_steps_adj_uart : n939_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n965_o = sc_noc_generator_uart ? atbs_win_length_uart : n940_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n966_o = sc_noc_generator_uart ? atbs_win_length_adj_uart : n941_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n967_o = sc_noc_generator_uart ? atbs_max_delta_steps_uart : n942_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n968_o = sc_noc_generator_uart ? atbs_max_delta_steps_adj_uart : n943_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n969_o = sc_noc_generator_uart ? trigger_start_mode_uart : n944_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n970_o = sc_noc_generator_uart ? adaptive_mode_uart : n945_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n971_o = sc_noc_generator_uart ? signal_select_in_uart : n946_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n972_o = sc_noc_generator_uart ? enable_analog_uart : n947_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n973_o = sc_noc_generator_uart ? select_tbs_delta_steps_uart : n948_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1310:7  */
  assign n975_o = sc_noc_generator_uart ? 1'b0 : n950_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n977_o = analog_trigger_uart ? 1'b0 : n952_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n979_o = analog_trigger_uart ? 1'b0 : n954_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n981_o = analog_trigger_uart ? 1'b0 : n955_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n982_o = n1010_o ? n504_o : analog_trigger_period_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n983_o = n1011_o ? n506_o : analog_trigger_duty_cycle_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n984_o = analog_trigger_uart ? sc_noc_generator_uart : n957_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n985_o = analog_trigger_uart ? sc_noc_generator_period_adj_uart : n958_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n986_o = analog_trigger_uart ? sc_noc_generator_duty_cycle_adj_uart : n959_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n987_o = analog_trigger_uart ? sc_noc_generator_overlap_adj_uart : n960_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n988_o = analog_trigger_uart ? baudrate_uart : n961_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n989_o = analog_trigger_uart ? baudrate_adj_uart : n962_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n990_o = analog_trigger_uart ? tbs_virtual_delta_steps_uart : n963_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n991_o = analog_trigger_uart ? tbs_virtual_delta_steps_adj_uart : n964_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n992_o = analog_trigger_uart ? atbs_win_length_uart : n965_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n993_o = analog_trigger_uart ? atbs_win_length_adj_uart : n966_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n994_o = analog_trigger_uart ? atbs_max_delta_steps_uart : n967_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n995_o = analog_trigger_uart ? atbs_max_delta_steps_adj_uart : n968_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n996_o = analog_trigger_uart ? trigger_start_mode_uart : n969_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n997_o = analog_trigger_uart ? adaptive_mode_uart : n970_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n998_o = analog_trigger_uart ? signal_select_in_uart : n971_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n999_o = analog_trigger_uart ? enable_analog_uart : n972_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n1000_o = analog_trigger_uart ? select_tbs_delta_steps_uart : n973_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1289:7  */
  assign n1002_o = analog_trigger_uart ? 1'b0 : n975_o;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1004_o = uart_rx_data_strb ? n977_o : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1007_o = uart_rx_data_strb ? n979_o : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1009_o = uart_rx_data_strb ? n981_o : analog_trigger_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1010_o = analog_trigger_uart & uart_rx_data_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1011_o = analog_trigger_uart & uart_rx_data_strb;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1012_o = uart_rx_data_strb ? n984_o : sc_noc_generator_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1013_o = uart_rx_data_strb ? n985_o : sc_noc_generator_period_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1014_o = uart_rx_data_strb ? n986_o : sc_noc_generator_duty_cycle_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1015_o = uart_rx_data_strb ? n987_o : sc_noc_generator_overlap_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1016_o = uart_rx_data_strb ? n988_o : baudrate_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1017_o = uart_rx_data_strb ? n989_o : baudrate_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1018_o = uart_rx_data_strb ? n990_o : tbs_virtual_delta_steps_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1019_o = uart_rx_data_strb ? n991_o : tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1020_o = uart_rx_data_strb ? n992_o : atbs_win_length_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1021_o = uart_rx_data_strb ? n993_o : atbs_win_length_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1022_o = uart_rx_data_strb ? n994_o : atbs_max_delta_steps_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1023_o = uart_rx_data_strb ? n995_o : atbs_max_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1024_o = uart_rx_data_strb ? n996_o : trigger_start_mode_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1025_o = uart_rx_data_strb ? n997_o : adaptive_mode_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1026_o = uart_rx_data_strb ? n998_o : signal_select_in_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1027_o = uart_rx_data_strb ? n999_o : enable_analog_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1028_o = uart_rx_data_strb ? n1000_o : select_tbs_delta_steps_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1288:5  */
  assign n1030_o = uart_rx_data_strb ? n1002_o : 1'b0;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1429:82  */
  assign n1033_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1429:54  */
  assign n1034_o = n1033_o ? trigger_start_mode_debounced : trigger_start_mode_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1430:72  */
  assign n1035_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1430:44  */
  assign n1036_o = n1035_o ? adaptive_mode_debounced : adaptive_mode_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1431:78  */
  assign n1037_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1431:50  */
  assign n1038_o = n1037_o ? signal_select_in_debounced : signal_select_in_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1432:65  */
  assign n1039_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1432:37  */
  assign n1040_o = n1039_o ? enable_debounced : enable_analog_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1433:90  */
  assign n1041_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1433:62  */
  assign n1042_o = n1041_o ? select_tbs_delta_steps_debounced : select_tbs_delta_steps_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1446:25  */
  assign n1043_o = ~enable_analog;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1453:35  */
  assign n1044_o = dac_pd_upper & dac_pd_lower;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1454:36  */
  assign n1045_o = dac_clr_upper & dac_clr_lower;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:536:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1046_q <= 1'b0;
    else
      n1046_q <= adaptive_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:536:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1047_q <= 1'b0;
    else
      n1047_q <= control_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:536:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1048_q <= 1'b0;
    else
      n1048_q <= signal_select_in_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:536:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1049_q <= 1'b0;
    else
      n1049_q <= select_tbs_delta_steps_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:536:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1050_q <= 1'b0;
    else
      n1050_q <= trigger_start_mode_debounced;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:536:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1051_q <= 1'b0;
    else
      n1051_q <= trigger_start_sampling_sync;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:986:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1052_q <= 1'b0;
    else
      n1052_q <= next_detection_en;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:728:17  */
  always @(posedge clock_i or posedge reset_entity)
    if (reset_entity)
      n1053_q <= 1'b0;
    else
      n1053_q <= next_tbs_increasing_en;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:728:17  */
  always @(posedge clock_i or posedge reset_entity)
    if (reset_entity)
      n1054_q <= 1'b0;
    else
      n1054_q <= next_tbs_decreasing_en;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:986:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1055_q <= 1'b0;
    else
      n1055_q <= next_clear_dac;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:986:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1056_q <= 1'b0;
    else
      n1056_q <= next_select_enable_write;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:986:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1057_q <= 1'b0;
    else
      n1057_q <= next_enable_read;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1058_q <= 1'b0;
    else
      n1058_q <= next_analog_trigger_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1059_q <= 4'b0111;
    else
      n1059_q <= next_analog_trigger_period_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1060_q <= 4'b0010;
    else
      n1060_q <= next_analog_trigger_duty_cycle_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1061_q <= 1'b0;
    else
      n1061_q <= next_sc_noc_generator_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1062_q <= 11'b01111111111;
    else
      n1062_q <= next_sc_noc_generator_period_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1063_q <= 11'b00100000000;
    else
      n1063_q <= next_sc_noc_generator_duty_cycle_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1064_q <= 11'b01000000000;
    else
      n1064_q <= next_sc_noc_generator_overlap_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1065_q <= 1'b0;
    else
      n1065_q <= next_baudrate_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1066_q <= 9'b001000101;
    else
      n1066_q <= next_baudrate_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1067_q <= 1'b0;
    else
      n1067_q <= next_tbs_virtual_delta_steps_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1068_q <= 8'b00001000;
    else
      n1068_q <= next_tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1069_q <= 1'b0;
    else
      n1069_q <= next_atbs_win_length_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1070_q <= 19'b0000111110100000000;
    else
      n1070_q <= next_atbs_win_length_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1071_q <= 1'b0;
    else
      n1071_q <= next_atbs_max_delta_steps_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1072_q <= 8'b00100000;
    else
      n1072_q <= next_atbs_max_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:955:17  */
  always @(posedge clock_i or posedge reset_entity)
    if (reset_entity)
      n1073_q <= 20'b00000000000000000000;
    else
      n1073_q <= next_main_counter_value;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:986:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1074_q <= 3'b001;
    else
      n1074_q <= next_state;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:986:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1075_q <= 1'b0;
    else
      n1075_q <= next_idle_led;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:986:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1076_q <= 1'b0;
    else
      n1076_q <= next_overflow_led;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:986:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1077_q <= 1'b0;
    else
      n1077_q <= next_underflow_led;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1078_q <= 1'b1;
    else
      n1078_q <= next_trigger_start_mode_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1079_q <= 1'b0;
    else
      n1079_q <= next_adaptive_mode_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1080_q <= 1'b1;
    else
      n1080_q <= next_signal_select_in_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1081_q <= 1'b1;
    else
      n1081_q <= next_enable_analog_uart;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_ea.vhd:1217:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1082_q <= 1'b1;
    else
      n1082_q <= next_select_tbs_delta_steps_uart;
endmodule

module atbs_core_floating_window_board
  (input  clock_i,
   input  reset_n_i,
   input  comp_upper_i,
   input  comp_lower_i,
   input  trigger_start_sampling_i,
   input  trigger_start_mode_i,
   input  adaptive_mode_i,
   input  control_mode_i,
   input  signal_select_in_i,
   input  enable_i,
   input  select_tbs_delta_steps_i,
   input  uart_rx_i,
   output [7:0] dac_upper_o,
   output [7:0] dac_lower_o,
   output idle_led_o,
   output overflow_led_o,
   output underflow_led_o,
   output uart_tx_o);
  wire reset;
  wire n6_o;
  wire atbs_core_0_signal_select_en_o;
  wire atbs_core_0_signal_select_in_o;
  wire atbs_core_0_amp_sdn_o;
  wire atbs_core_0_dac_pd_o;
  wire atbs_core_0_dac_clr_o;
  wire atbs_core_0_dac_wr_upper_o;
  wire atbs_core_0_dac_wr_lower_o;
  wire [7:0] atbs_core_0_dac_upper_o;
  wire [7:0] atbs_core_0_dac_lower_o;
  wire atbs_core_0_idle_led_o;
  wire atbs_core_0_overflow_led_o;
  wire atbs_core_0_underflow_led_o;
  wire atbs_core_0_analog_trigger_o;
  wire atbs_core_0_sc_noc_1_o;
  wire atbs_core_0_sc_noc_2_o;
  wire atbs_core_0_uart_tx_o;
  assign dac_upper_o = atbs_core_0_dac_upper_o; //(module output)
  assign dac_lower_o = atbs_core_0_dac_lower_o; //(module output)
  assign idle_led_o = atbs_core_0_idle_led_o; //(module output)
  assign overflow_led_o = atbs_core_0_overflow_led_o; //(module output)
  assign underflow_led_o = atbs_core_0_underflow_led_o; //(module output)
  assign uart_tx_o = atbs_core_0_uart_tx_o; //(module output)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_board.vhd:55:8  */
  assign reset = n6_o; // (signal)
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_board.vhd:59:18  */
  assign n6_o = ~reset_n_i;
  /* ../../../vhdl/atbs_core_floating_window/rtl/atbs_core_floating_window_board.vhd:66:9  */
  atbs_core_floating_window_8000000_20_800000_4_10_2_2_255_0_2_2_3_8_18_262144_8_8_4_16_11_2048_2_19_9_417_8 atbs_core_0 (
    .clock_i(clock_i),
    .reset_btn_i(reset),
    .comp_upper_i(comp_upper_i),
    .comp_lower_i(comp_lower_i),
    .trigger_start_sampling_i(trigger_start_sampling_i),
    .trigger_start_mode_i(trigger_start_mode_i),
    .adaptive_mode_i(adaptive_mode_i),
    .control_mode_i(control_mode_i),
    .signal_select_in_i(signal_select_in_i),
    .enable_i(enable_i),
    .select_tbs_delta_steps_i(select_tbs_delta_steps_i),
    .uart_rx_i(uart_rx_i),
    .signal_select_en_o(),
    .signal_select_in_o(),
    .amp_sdn_o(),
    .dac_pd_o(),
    .dac_clr_o(),
    .dac_wr_upper_o(),
    .dac_wr_lower_o(),
    .dac_upper_o(atbs_core_0_dac_upper_o),
    .dac_lower_o(atbs_core_0_dac_lower_o),
    .idle_led_o(atbs_core_0_idle_led_o),
    .overflow_led_o(atbs_core_0_overflow_led_o),
    .underflow_led_o(atbs_core_0_underflow_led_o),
    .analog_trigger_o(),
    .sc_noc_1_o(),
    .sc_noc_2_o(),
    .uart_tx_o(atbs_core_0_uart_tx_o));
endmodule

