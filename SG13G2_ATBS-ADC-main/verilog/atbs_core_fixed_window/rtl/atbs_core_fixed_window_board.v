module priority_encoder_3_3
  (input  clock_i,
   input  reset_i,
   input  [2:0] code_i,
   output [2:0] bin_o);
  wire [2:0] bin;
  wire n3525_o;
  wire [2:0] n3528_o;
  wire n3530_o;
  wire [2:0] n3532_o;
  wire n3533_o;
  wire [2:0] n3535_o;
  assign bin_o = bin; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:33:8  */
  assign bin = n3535_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:16  */
  assign n3525_o = code_i[0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:7  */
  assign n3528_o = n3525_o ? 3'b001 : 3'b000;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:16  */
  assign n3530_o = code_i[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:7  */
  assign n3532_o = n3530_o ? 3'b010 : n3528_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:16  */
  assign n3533_o = code_i[2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Priority-Encoder/rtl/priority_encoder_ea.vhd:44:7  */
  assign n3535_o = n3533_o ? 3'b011 : n3532_o;
endmodule

module spike_2_thermocode_6
  (input  [1:0] spike_i,
   input  [5:0] thermo_i,
   output [5:0] thermo_o);
  wire plus;
  wire minus;
  wire [5:0] thermo;
  wire n3490_o;
  wire n3491_o;
  wire n3494_o;
  wire n3495_o;
  wire n3496_o;
  wire n3497_o;
  wire n3498_o;
  wire n3499_o;
  wire n3500_o;
  wire n3501_o;
  wire n3502_o;
  wire n3503_o;
  wire n3504_o;
  wire n3505_o;
  wire n3506_o;
  wire n3507_o;
  wire n3508_o;
  wire n3509_o;
  wire n3510_o;
  wire n3511_o;
  wire n3512_o;
  wire n3513_o;
  wire n3514_o;
  wire n3515_o;
  wire n3516_o;
  wire n3517_o;
  wire n3518_o;
  wire n3519_o;
  wire [5:0] n3520_o;
  wire [5:0] n3521_o;
  assign thermo_o = thermo; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:30:8  */
  assign plus = n3491_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:31:8  */
  assign minus = n3490_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:32:8  */
  assign thermo = n3521_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:37:19  */
  assign n3490_o = spike_i[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:38:18  */
  assign n3491_o = spike_i[0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:43:16  */
  assign n3494_o = spike_i == 2'b00;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:48:37  */
  assign n3495_o = thermo_i[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:48:41  */
  assign n3496_o = n3495_o & minus;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:48:25  */
  assign n3497_o = plus | n3496_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n3498_o = thermo_i[0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n3499_o = n3498_o & plus;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n3500_o = thermo_i[2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n3501_o = n3500_o & minus;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n3502_o = n3499_o | n3501_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n3503_o = thermo_i[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n3504_o = n3503_o & plus;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n3505_o = thermo_i[3]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n3506_o = n3505_o & minus;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n3507_o = n3504_o | n3506_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n3508_o = thermo_i[2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n3509_o = n3508_o & plus;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n3510_o = thermo_i[4]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n3511_o = n3510_o & minus;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n3512_o = n3509_o | n3511_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:31  */
  assign n3513_o = thermo_i[3]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:37  */
  assign n3514_o = n3513_o & plus;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:59  */
  assign n3515_o = thermo_i[5]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:65  */
  assign n3516_o = n3515_o & minus;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:53:47  */
  assign n3517_o = n3514_o | n3516_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:57:40  */
  assign n3518_o = thermo_i[4]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:57:56  */
  assign n3519_o = n3518_o & plus;
  assign n3520_o = {n3519_o, n3517_o, n3512_o, n3507_o, n3502_o, n3497_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-2-Thermocode/rtl/spike_2_thermocode_ea.vhd:43:5  */
  assign n3521_o = n3494_o ? thermo_i : n3520_o;
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
  wire n3384_o;
  wire n3385_o;
  wire [2:0] n3387_o;
  wire [2:0] n3388_o;
  wire [2:0] n3390_o;
  wire n3393_o;
  wire [8:0] n3395_o;
  wire [8:0] n3397_o;
  wire n3399_o;
  wire [8:0] n3401_o;
  wire n3404_o;
  wire [1:0] n3406_o;
  wire n3408_o;
  wire n3409_o;
  wire [1:0] n3411_o;
  wire n3413_o;
  wire [8:0] n3415_o;
  wire n3416_o;
  wire [7:0] n3420_o;
  wire n3421_o;
  wire n3423_o;
  wire n3424_o;
  wire [1:0] n3426_o;
  wire n3428_o;
  wire [8:0] n3430_o;
  wire n3431_o;
  wire [1:0] n3433_o;
  wire n3436_o;
  wire n3438_o;
  wire [3:0] n3439_o;
  reg [7:0] n3441_o;
  reg [1:0] n3442_o;
  reg n3445_o;
  reg [2:0] n3448_q;
  reg [8:0] n3449_q;
  reg [7:0] n3450_q;
  reg n3451_q;
  reg [1:0] n3452_q;
  wire n3454_o;
  wire n3455_o;
  wire n3456_o;
  wire n3457_o;
  wire n3458_o;
  wire n3459_o;
  wire n3460_o;
  wire n3461_o;
  wire n3462_o;
  wire n3463_o;
  wire n3464_o;
  wire n3465_o;
  wire n3466_o;
  wire n3467_o;
  wire n3468_o;
  wire n3469_o;
  wire n3470_o;
  wire n3471_o;
  wire n3472_o;
  wire n3473_o;
  wire n3474_o;
  wire n3475_o;
  wire n3476_o;
  wire n3477_o;
  wire n3478_o;
  wire n3479_o;
  wire n3480_o;
  wire n3481_o;
  wire n3482_o;
  wire n3483_o;
  wire n3484_o;
  wire n3485_o;
  wire n3486_o;
  wire n3487_o;
  wire [7:0] n3488_o;
  assign data_o = received_data; //(module output)
  assign data_valid_strb_o = data_valid_strb; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:38:8  */
  assign receive_counter_value = n3448_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:39:8  */
  assign next_receive_counter_value = n3390_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:42:8  */
  assign baud_counter_value = n3449_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:43:8  */
  assign next_baud_counter_value = n3401_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:46:8  */
  assign received_data = n3450_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:47:8  */
  assign next_received_data = n3441_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:48:8  */
  assign data_valid_strb = n3451_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:51:8  */
  assign rx_state = n3452_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:52:8  */
  assign next_rx_state = n3442_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:54:8  */
  assign next_strobe = n3445_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:81:17  */
  assign n3384_o = rx_state == 2'b10;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:82:29  */
  assign n3385_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:83:61  */
  assign n3387_o = receive_counter_value + 3'b001;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:82:7  */
  assign n3388_o = n3385_o ? n3387_o : receive_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:81:5  */
  assign n3390_o = n3384_o ? n3388_o : 3'b000;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:96:27  */
  assign n3393_o = $unsigned(baud_counter_value) < $unsigned(baudrate_adj_i);
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:97:53  */
  assign n3395_o = baud_counter_value + 9'b000000001;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:96:5  */
  assign n3397_o = n3393_o ? n3395_o : 9'b000000000;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:102:17  */
  assign n3399_o = rx_state == 2'b00;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:102:5  */
  assign n3401_o = n3399_o ? 9'b000000000 : n3397_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:118:17  */
  assign n3404_o = ~rx_i;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:118:9  */
  assign n3406_o = n3404_o ? 2'b01 : rx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:116:7  */
  assign n3408_o = rx_state == 2'b00;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:123:31  */
  assign n3409_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:123:9  */
  assign n3411_o = n3409_o ? 2'b10 : rx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:122:7  */
  assign n3413_o = rx_state == 2'b01;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:128:33  */
  assign n3415_o = baudrate_adj_i >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:128:31  */
  assign n3416_o = baud_counter_value == n3415_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:128:9  */
  assign n3420_o = n3416_o ? n3488_o : received_data;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:131:31  */
  assign n3421_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:131:74  */
  assign n3423_o = receive_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:131:48  */
  assign n3424_o = n3423_o & n3421_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:131:9  */
  assign n3426_o = n3424_o ? 2'b11 : rx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:127:7  */
  assign n3428_o = rx_state == 2'b10;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:136:33  */
  assign n3430_o = baudrate_adj_i >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:136:31  */
  assign n3431_o = baud_counter_value == n3430_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:136:9  */
  assign n3433_o = n3431_o ? 2'b00 : rx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:136:9  */
  assign n3436_o = n3431_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:135:7  */
  assign n3438_o = rx_state == 2'b11;
  assign n3439_o = {n3438_o, n3428_o, n3413_o, n3408_o};
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:115:5  */
  always @*
    case (n3439_o)
      4'b1000: n3441_o = received_data;
      4'b0100: n3441_o = n3420_o;
      4'b0010: n3441_o = received_data;
      4'b0001: n3441_o = received_data;
      default: n3441_o = 8'b00000000;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:115:5  */
  always @*
    case (n3439_o)
      4'b1000: n3442_o = n3433_o;
      4'b0100: n3442_o = n3426_o;
      4'b0010: n3442_o = n3411_o;
      4'b0001: n3442_o = n3406_o;
      default: n3442_o = rx_state;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:115:5  */
  always @*
    case (n3439_o)
      4'b1000: n3445_o = n3436_o;
      4'b0100: n3445_o = 1'b0;
      4'b0010: n3445_o = 1'b0;
      4'b0001: n3445_o = 1'b0;
      default: n3445_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3448_q <= 3'b000;
    else
      n3448_q <= next_receive_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3449_q <= 9'b000000000;
    else
      n3449_q <= next_baud_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3450_q <= 8'b00000000;
    else
      n3450_q <= next_received_data;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3451_q <= 1'b0;
    else
      n3451_q <= next_strobe;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:66:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3452_q <= 2'b00;
    else
      n3452_q <= next_rx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3454_o = receive_counter_value[2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3455_o = ~n3454_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3456_o = receive_counter_value[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3457_o = ~n3456_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3458_o = n3455_o & n3457_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3459_o = n3455_o & n3456_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3460_o = n3454_o & n3457_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3461_o = n3454_o & n3456_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3462_o = receive_counter_value[0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3463_o = ~n3462_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3464_o = n3458_o & n3463_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3465_o = n3458_o & n3462_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3466_o = n3459_o & n3463_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3467_o = n3459_o & n3462_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3468_o = n3460_o & n3463_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3469_o = n3460_o & n3462_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3470_o = n3461_o & n3463_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3471_o = n3461_o & n3462_o;
  assign n3472_o = received_data[0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3473_o = n3464_o ? rx_i : n3472_o;
  assign n3474_o = received_data[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3475_o = n3465_o ? rx_i : n3474_o;
  assign n3476_o = received_data[2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3477_o = n3466_o ? rx_i : n3476_o;
  assign n3478_o = received_data[3]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3479_o = n3467_o ? rx_i : n3478_o;
  assign n3480_o = received_data[4]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3481_o = n3468_o ? rx_i : n3480_o;
  assign n3482_o = received_data[5]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3483_o = n3469_o ? rx_i : n3482_o;
  assign n3484_o = received_data[6]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3485_o = n3470_o ? rx_i : n3484_o;
  assign n3486_o = received_data[7]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_rx_ea.vhd:129:11  */
  assign n3487_o = n3471_o ? rx_i : n3486_o;
  assign n3488_o = {n3487_o, n3485_o, n3483_o, n3481_o, n3479_o, n3477_o, n3475_o, n3473_o};
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
  wire n3264_o;
  wire n3265_o;
  wire [2:0] n3267_o;
  wire [2:0] n3268_o;
  wire [2:0] n3270_o;
  wire n3273_o;
  wire [8:0] n3275_o;
  wire [8:0] n3277_o;
  wire n3280_o;
  wire [2:0] n3283_o;
  wire [2:0] n3284_o;
  wire n3286_o;
  wire n3287_o;
  wire n3290_o;
  wire [2:0] n3293_o;
  wire n3295_o;
  wire n3296_o;
  wire [2:0] n3298_o;
  wire n3300_o;
  wire n3302_o;
  wire n3307_o;
  wire n3308_o;
  wire n3309_o;
  wire [2:0] n3311_o;
  wire n3313_o;
  wire n3314_o;
  wire n3316_o;
  wire n3317_o;
  wire [2:0] n3320_o;
  wire [2:0] n3321_o;
  wire n3323_o;
  wire [4:0] n3324_o;
  reg n3329_o;
  reg [2:0] n3331_o;
  wire n3335_o;
  wire n3337_o;
  wire n3339_o;
  wire n3340_o;
  wire n3341_o;
  wire n3342_o;
  reg n3344_q;
  reg [2:0] n3345_q;
  reg [8:0] n3346_q;
  reg [2:0] n3347_q;
  wire n3348_o;
  wire n3349_o;
  wire n3350_o;
  wire n3351_o;
  wire n3352_o;
  wire n3353_o;
  wire n3354_o;
  wire n3355_o;
  wire [1:0] n3356_o;
  reg n3357_o;
  wire [1:0] n3358_o;
  reg n3359_o;
  wire n3360_o;
  wire n3361_o;
  assign tx_strb_o = tx_strb; //(module output)
  assign tx_o = tx; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:38:8  */
  assign tx = n3329_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:39:8  */
  assign tx_strb = n3344_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:40:8  */
  assign next_tx_strb = n3342_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:43:8  */
  assign transmit_counter_value = n3345_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:44:8  */
  assign next_transmit_counter_value = n3270_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:47:8  */
  assign baud_counter_value = n3346_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:48:8  */
  assign next_baud_counter_value = n3277_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:51:8  */
  assign tx_state = n3347_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:52:8  */
  assign next_tx_state = n3331_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:78:29  */
  assign n3264_o = tx_state == 3'b011;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:79:47  */
  assign n3265_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:80:87  */
  assign n3267_o = transmit_counter_value + 3'b001;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:79:25  */
  assign n3268_o = n3265_o ? n3267_o : transmit_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:78:17  */
  assign n3270_o = n3264_o ? n3268_o : 3'b000;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:93:39  */
  assign n3273_o = $unsigned(baud_counter_value) < $unsigned(baudrate_adj_i);
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:94:71  */
  assign n3275_o = baud_counter_value + 9'b000000001;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:93:17  */
  assign n3277_o = n3273_o ? n3275_o : 9'b000000000;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:111:63  */
  assign n3280_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:111:41  */
  assign n3283_o = n3280_o ? 3'b010 : 3'b001;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:110:33  */
  assign n3284_o = tx_start_strb_i ? n3283_o : tx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:108:25  */
  assign n3286_o = tx_state == 3'b000;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:123:55  */
  assign n3287_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:123:33  */
  assign n3290_o = n3287_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:123:33  */
  assign n3293_o = n3287_o ? 3'b010 : tx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:121:25  */
  assign n3295_o = tx_state == 3'b001;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:130:55  */
  assign n3296_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:130:33  */
  assign n3298_o = n3296_o ? 3'b011 : tx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:128:25  */
  assign n3300_o = tx_state == 3'b010;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:135:59  */
  assign n3302_o = $unsigned(transmit_counter_value) <= $unsigned(3'b111);
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:137:67  */
  assign n3307_o = transmit_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:137:113  */
  assign n3308_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:137:90  */
  assign n3309_o = n3308_o & n3307_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:135:33  */
  assign n3311_o = n3314_o ? 3'b100 : tx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:135:33  */
  assign n3313_o = n3302_o ? n3361_o : 1'bX;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:135:33  */
  assign n3314_o = n3309_o & n3302_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:134:25  */
  assign n3316_o = tx_state == 3'b011;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:144:55  */
  assign n3317_o = baud_counter_value == baudrate_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:146:41  */
  assign n3320_o = tx_start_strb_i ? 3'b010 : 3'b000;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:144:33  */
  assign n3321_o = n3317_o ? n3320_o : tx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:142:25  */
  assign n3323_o = tx_state == 3'b100;
  assign n3324_o = {n3323_o, n3316_o, n3300_o, n3295_o, n3286_o};
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:107:17  */
  always @*
    case (n3324_o)
      5'b10000: n3329_o = 1'b1;
      5'b01000: n3329_o = n3313_o;
      5'b00100: n3329_o = 1'b0;
      5'b00010: n3329_o = n3290_o;
      5'b00001: n3329_o = 1'b1;
      default: n3329_o = 1'bX;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:107:17  */
  always @*
    case (n3324_o)
      5'b10000: n3331_o = n3321_o;
      5'b01000: n3331_o = n3311_o;
      5'b00100: n3331_o = n3298_o;
      5'b00010: n3331_o = n3293_o;
      5'b00001: n3331_o = n3284_o;
      default: n3331_o = tx_state;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:158:37  */
  assign n3335_o = tx_state == 3'b100;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:158:66  */
  assign n3337_o = next_tx_state == 3'b010;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:158:94  */
  assign n3339_o = next_tx_state == 3'b000;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:158:77  */
  assign n3340_o = n3337_o | n3339_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:158:47  */
  assign n3341_o = n3340_o & n3335_o;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:158:23  */
  assign n3342_o = n3341_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3344_q <= 1'b0;
    else
      n3344_q <= next_tx_strb;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3345_q <= 3'b000;
    else
      n3345_q <= next_transmit_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3346_q <= 9'b000000000;
    else
      n3346_q <= next_baud_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:63:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3347_q <= 3'b000;
    else
      n3347_q <= next_tx_state;
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:25:17  */
  assign n3348_o = data_i[0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:24:5  */
  assign n3349_o = data_i[1]; // extract
  assign n3350_o = data_i[2]; // extract
  assign n3351_o = data_i[3]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:136:54  */
  assign n3352_o = data_i[4]; // extract
  assign n3353_o = data_i[5]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:101:9  */
  assign n3354_o = data_i[6]; // extract
  assign n3355_o = data_i[7]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n3356_o = transmit_counter_value[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  always @*
    case (n3356_o)
      2'b00: n3357_o = n3348_o;
      2'b01: n3357_o = n3349_o;
      2'b10: n3357_o = n3350_o;
      2'b11: n3357_o = n3351_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n3358_o = transmit_counter_value[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  always @*
    case (n3358_o)
      2'b00: n3359_o = n3352_o;
      2'b01: n3359_o = n3353_o;
      2'b10: n3359_o = n3354_o;
      2'b11: n3359_o = n3355_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n3360_o = transmit_counter_value[2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_tx_ea.vhd:136:53  */
  assign n3361_o = n3360_o ? n3359_o : n3357_o;
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
  wire n3033_o;
  wire [1:0] n3035_o;
  wire [5:0] gen_spike_2_tc_n1_spike_2_tc_thermo_o;
  wire [1:0] n3046_o;
  wire [5:0] n3047_o;
  wire [5:0] gen_spike_2_tc_n2_spike_2_tc_thermo_o;
  wire [1:0] n3049_o;
  wire [5:0] n3050_o;
  wire [5:0] gen_spike_2_tc_n3_spike_2_tc_thermo_o;
  wire [1:0] n3052_o;
  wire [5:0] n3053_o;
  wire [5:0] gen_spike_2_tc_n4_spike_2_tc_thermo_o;
  wire [1:0] n3055_o;
  wire [5:0] n3056_o;
  wire [5:0] gen_spike_2_tc_n5_spike_2_tc_thermo_o;
  wire [1:0] n3058_o;
  wire [5:0] n3059_o;
  wire [5:0] gen_spike_2_tc_n6_spike_2_tc_thermo_o;
  wire [1:0] n3061_o;
  wire [5:0] n3062_o;
  wire [5:0] gen_spike_2_tc_n7_spike_2_tc_thermo_o;
  wire [1:0] n3064_o;
  wire [5:0] n3065_o;
  wire [5:0] gen_spike_2_tc_n8_spike_2_tc_thermo_o;
  wire [1:0] n3067_o;
  wire [5:0] n3068_o;
  wire [5:0] gen_spike_2_tc_n9_spike_2_tc_thermo_o;
  wire [1:0] n3070_o;
  wire [5:0] n3071_o;
  wire [5:0] gen_spike_2_tc_n10_spike_2_tc_thermo_o;
  wire [1:0] n3073_o;
  wire [5:0] n3074_o;
  wire [5:0] gen_spike_2_tc_n11_spike_2_tc_thermo_o;
  wire [1:0] n3076_o;
  wire [5:0] n3077_o;
  wire [5:0] gen_spike_2_tc_n12_spike_2_tc_thermo_o;
  wire [1:0] n3079_o;
  wire [5:0] n3080_o;
  wire [5:0] gen_spike_2_tc_n13_spike_2_tc_thermo_o;
  wire [1:0] n3082_o;
  wire [5:0] n3083_o;
  wire [5:0] gen_spike_2_tc_n14_spike_2_tc_thermo_o;
  wire [1:0] n3085_o;
  wire [5:0] n3086_o;
  wire [5:0] gen_spike_2_tc_n15_spike_2_tc_thermo_o;
  wire [1:0] n3088_o;
  wire [5:0] n3089_o;
  wire [5:0] n3092_o;
  wire [41:0] n3093_o;
  wire [47:0] n3094_o;
  reg [95:0] eval_orresult_offset_comp;
  wire [2:0] n3098_o;
  wire [2:0] n3099_o;
  wire [2:0] n3100_o;
  wire [89:0] n3101_o;
  wire [95:0] n3102_o;
  wire [5:0] n3103_o;
  wire [2:0] n3104_o;
  wire [2:0] n3105_o;
  wire [2:0] n3106_o;
  wire [5:0] n3107_o;
  wire [83:0] n3108_o;
  wire [95:0] n3109_o;
  wire [5:0] n3110_o;
  wire [5:0] n3111_o;
  wire [2:0] n3112_o;
  wire [2:0] n3113_o;
  wire [2:0] n3114_o;
  wire [5:0] n3115_o;
  wire [77:0] n3116_o;
  wire [95:0] n3117_o;
  wire [5:0] n3118_o;
  wire [5:0] n3119_o;
  wire [2:0] n3120_o;
  wire [2:0] n3121_o;
  wire [2:0] n3122_o;
  wire [5:0] n3123_o;
  wire [71:0] n3124_o;
  wire [95:0] n3125_o;
  wire [5:0] n3126_o;
  wire [5:0] n3127_o;
  wire [2:0] n3128_o;
  wire [2:0] n3129_o;
  wire [2:0] n3130_o;
  wire [5:0] n3131_o;
  wire [65:0] n3132_o;
  wire [95:0] n3133_o;
  wire [5:0] n3134_o;
  wire [5:0] n3135_o;
  wire [2:0] n3136_o;
  wire [2:0] n3137_o;
  wire [2:0] n3138_o;
  wire [5:0] n3139_o;
  wire [59:0] n3140_o;
  wire [95:0] n3141_o;
  wire [5:0] n3142_o;
  wire [5:0] n3143_o;
  wire [2:0] n3144_o;
  wire [2:0] n3145_o;
  wire [2:0] n3146_o;
  wire [5:0] n3147_o;
  wire [53:0] n3148_o;
  wire [95:0] n3149_o;
  wire [5:0] n3150_o;
  wire [5:0] n3151_o;
  wire [2:0] n3152_o;
  wire [2:0] n3153_o;
  wire [2:0] n3154_o;
  wire [5:0] n3155_o;
  wire [47:0] n3156_o;
  wire [95:0] n3157_o;
  wire [5:0] n3158_o;
  wire [5:0] n3159_o;
  wire [2:0] n3160_o;
  wire [2:0] n3161_o;
  wire [2:0] n3162_o;
  wire [5:0] n3163_o;
  wire [41:0] n3164_o;
  wire [95:0] n3165_o;
  wire [5:0] n3166_o;
  wire [5:0] n3167_o;
  wire [2:0] n3168_o;
  wire [2:0] n3169_o;
  wire [2:0] n3170_o;
  wire [5:0] n3171_o;
  wire [35:0] n3172_o;
  wire [95:0] n3173_o;
  wire [5:0] n3174_o;
  wire [5:0] n3175_o;
  wire [2:0] n3176_o;
  wire [2:0] n3177_o;
  wire [2:0] n3178_o;
  wire [5:0] n3179_o;
  wire [29:0] n3180_o;
  wire [95:0] n3181_o;
  wire [5:0] n3182_o;
  wire [5:0] n3183_o;
  wire [2:0] n3184_o;
  wire [2:0] n3185_o;
  wire [2:0] n3186_o;
  wire [5:0] n3187_o;
  wire [23:0] n3188_o;
  wire [95:0] n3189_o;
  wire [5:0] n3190_o;
  wire [5:0] n3191_o;
  wire [2:0] n3192_o;
  wire [2:0] n3193_o;
  wire [2:0] n3194_o;
  wire [5:0] n3195_o;
  wire [17:0] n3196_o;
  wire [95:0] n3197_o;
  wire [5:0] n3198_o;
  wire [5:0] n3199_o;
  wire [2:0] n3200_o;
  wire [2:0] n3201_o;
  wire [2:0] n3202_o;
  wire [5:0] n3203_o;
  wire [11:0] n3204_o;
  wire [95:0] n3205_o;
  wire [5:0] n3206_o;
  wire [5:0] n3207_o;
  wire [2:0] n3208_o;
  wire [2:0] n3209_o;
  wire [2:0] n3210_o;
  wire [5:0] n3211_o;
  wire [5:0] n3212_o;
  wire [95:0] n3213_o;
  wire [5:0] n3214_o;
  wire [5:0] n3215_o;
  wire [2:0] n3216_o;
  wire [2:0] n3217_o;
  wire [2:0] n3218_o;
  wire [5:0] n3219_o;
  wire [95:0] n3220_o;
  wire [5:0] n3221_o;
  wire [5:0] n3222_o;
  wire [5:0] n3223_o;
  wire [95:0] n3225_o;
  wire n3227_o;
  wire n3228_o;
  wire n3229_o;
  wire [2:0] priority_encoder_0_bin_o;
  wire [2:0] priority_encoder_1_bin_o;
  wire [2:0] n3232_o;
  wire [2:0] n3234_o;
  wire n3235_o;
  reg [5:0] n3236_q;
  reg [1:0] n3237_q;
  wire [95:0] n3238_o;
  wire [95:0] n3239_o;
  wire [2:0] n3240_o;
  wire [95:0] n3241_o;
  reg [2:0] n3242_q;
  assign weylsd_o = weylsd; //(module output)
  assign weylsd_strb_o = n3235_o; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:60:8  */
  assign buf_reg = n3236_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:61:8  */
  assign next_buf_reg = n3092_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:63:8  */
  assign sync_weylsd_strb = n3237_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:64:8  */
  assign next_weylsd_strb = spikes_strb_i; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:66:8  */
  assign thermocodes = n3238_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:67:8  */
  assign buf_thermocodes = n3239_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:69:8  */
  assign orresult = n3223_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:70:8  */
  assign neg_orresult = n3240_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:71:8  */
  assign temp_orresult = n3241_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:73:8  */
  assign weylsd = n3242_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:74:8  */
  assign next_weylsd = n3234_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:75:8  */
  assign weylsd_neg = priority_encoder_0_bin_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:76:8  */
  assign weylsd_pos = priority_encoder_1_bin_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:97:48  */
  assign n3033_o = sync_weylsd_strb[0]; // extract
  assign n3035_o = {n3033_o, next_weylsd_strb};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n1_spike_2_tc (
    .spike_i(n3046_o),
    .thermo_i(n3047_o),
    .thermo_o(gen_spike_2_tc_n1_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3046_o = spikes_i[29:28]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3047_o = thermocodes[5:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n2_spike_2_tc (
    .spike_i(n3049_o),
    .thermo_i(n3050_o),
    .thermo_o(gen_spike_2_tc_n2_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3049_o = spikes_i[27:26]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3050_o = thermocodes[11:6]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n3_spike_2_tc (
    .spike_i(n3052_o),
    .thermo_i(n3053_o),
    .thermo_o(gen_spike_2_tc_n3_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3052_o = spikes_i[25:24]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3053_o = thermocodes[17:12]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n4_spike_2_tc (
    .spike_i(n3055_o),
    .thermo_i(n3056_o),
    .thermo_o(gen_spike_2_tc_n4_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3055_o = spikes_i[23:22]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3056_o = thermocodes[23:18]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n5_spike_2_tc (
    .spike_i(n3058_o),
    .thermo_i(n3059_o),
    .thermo_o(gen_spike_2_tc_n5_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3058_o = spikes_i[21:20]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3059_o = thermocodes[29:24]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n6_spike_2_tc (
    .spike_i(n3061_o),
    .thermo_i(n3062_o),
    .thermo_o(gen_spike_2_tc_n6_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3061_o = spikes_i[19:18]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3062_o = thermocodes[35:30]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n7_spike_2_tc (
    .spike_i(n3064_o),
    .thermo_i(n3065_o),
    .thermo_o(gen_spike_2_tc_n7_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3064_o = spikes_i[17:16]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3065_o = thermocodes[41:36]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n8_spike_2_tc (
    .spike_i(n3067_o),
    .thermo_i(n3068_o),
    .thermo_o(gen_spike_2_tc_n8_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3067_o = spikes_i[15:14]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3068_o = thermocodes[47:42]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n9_spike_2_tc (
    .spike_i(n3070_o),
    .thermo_i(n3071_o),
    .thermo_o(gen_spike_2_tc_n9_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3070_o = spikes_i[13:12]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3071_o = thermocodes[53:48]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n10_spike_2_tc (
    .spike_i(n3073_o),
    .thermo_i(n3074_o),
    .thermo_o(gen_spike_2_tc_n10_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3073_o = spikes_i[11:10]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3074_o = thermocodes[59:54]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n11_spike_2_tc (
    .spike_i(n3076_o),
    .thermo_i(n3077_o),
    .thermo_o(gen_spike_2_tc_n11_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3076_o = spikes_i[9:8]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3077_o = thermocodes[65:60]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n12_spike_2_tc (
    .spike_i(n3079_o),
    .thermo_i(n3080_o),
    .thermo_o(gen_spike_2_tc_n12_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3079_o = spikes_i[7:6]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3080_o = thermocodes[71:66]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n13_spike_2_tc (
    .spike_i(n3082_o),
    .thermo_i(n3083_o),
    .thermo_o(gen_spike_2_tc_n13_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3082_o = spikes_i[5:4]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3083_o = thermocodes[77:72]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n14_spike_2_tc (
    .spike_i(n3085_o),
    .thermo_i(n3086_o),
    .thermo_o(gen_spike_2_tc_n14_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3085_o = spikes_i[3:2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3086_o = thermocodes[83:78]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:107:5  */
  spike_2_thermocode_6 gen_spike_2_tc_n15_spike_2_tc (
    .spike_i(n3088_o),
    .thermo_i(n3089_o),
    .thermo_o(gen_spike_2_tc_n15_spike_2_tc_thermo_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:112:30  */
  assign n3088_o = spikes_i[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:113:33  */
  assign n3089_o = thermocodes[89:84]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:126:41  */
  assign n3092_o = buf_thermocodes[53:48]; // extract
  assign n3093_o = buf_thermocodes[95:54]; // extract
  assign n3094_o = buf_thermocodes[47:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:136:12  */
  always @*
    eval_orresult_offset_comp = n3225_o; // (isignal)
  initial
    eval_orresult_offset_comp = 96'bX;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:138:71  */
  assign n3098_o = thermocodes[2:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:138:53  */
  assign n3099_o = ~n3098_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:139:77  */
  assign n3100_o = thermocodes[5:3]; // extract
  assign n3101_o = eval_orresult_offset_comp[95:6]; // extract
  assign n3102_o = {n3101_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:140:36  */
  assign n3103_o = n3102_o[5:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3104_o = thermocodes[8:6]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3105_o = ~n3104_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3106_o = thermocodes[11:9]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3107_o = temp_orresult[5:0]; // extract
  assign n3108_o = eval_orresult_offset_comp[95:12]; // extract
  assign n3109_o = {n3108_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3110_o = n3109_o[11:6]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3111_o = n3107_o | n3110_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3112_o = thermocodes[14:12]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3113_o = ~n3112_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3114_o = thermocodes[17:15]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3115_o = temp_orresult[11:6]; // extract
  assign n3116_o = eval_orresult_offset_comp[95:18]; // extract
  assign n3117_o = {n3116_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3118_o = n3117_o[17:12]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3119_o = n3115_o | n3118_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3120_o = thermocodes[20:18]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3121_o = ~n3120_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3122_o = thermocodes[23:21]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3123_o = temp_orresult[17:12]; // extract
  assign n3124_o = eval_orresult_offset_comp[95:24]; // extract
  assign n3125_o = {n3124_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3126_o = n3125_o[23:18]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3127_o = n3123_o | n3126_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3128_o = thermocodes[26:24]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3129_o = ~n3128_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3130_o = thermocodes[29:27]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3131_o = temp_orresult[23:18]; // extract
  assign n3132_o = eval_orresult_offset_comp[95:30]; // extract
  assign n3133_o = {n3132_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3134_o = n3133_o[29:24]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3135_o = n3131_o | n3134_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3136_o = thermocodes[32:30]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3137_o = ~n3136_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3138_o = thermocodes[35:33]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3139_o = temp_orresult[29:24]; // extract
  assign n3140_o = eval_orresult_offset_comp[95:36]; // extract
  assign n3141_o = {n3140_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3142_o = n3141_o[35:30]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3143_o = n3139_o | n3142_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3144_o = thermocodes[38:36]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3145_o = ~n3144_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3146_o = thermocodes[41:39]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3147_o = temp_orresult[35:30]; // extract
  assign n3148_o = eval_orresult_offset_comp[95:42]; // extract
  assign n3149_o = {n3148_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3150_o = n3149_o[41:36]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3151_o = n3147_o | n3150_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3152_o = thermocodes[44:42]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3153_o = ~n3152_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3154_o = thermocodes[47:45]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3155_o = temp_orresult[41:36]; // extract
  assign n3156_o = eval_orresult_offset_comp[95:48]; // extract
  assign n3157_o = {n3156_o, n3154_o, n3153_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3158_o = n3157_o[47:42]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3159_o = n3155_o | n3158_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3160_o = thermocodes[50:48]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3161_o = ~n3160_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3162_o = thermocodes[53:51]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3163_o = temp_orresult[47:42]; // extract
  assign n3164_o = eval_orresult_offset_comp[95:54]; // extract
  assign n3165_o = {n3164_o, n3162_o, n3161_o, n3154_o, n3153_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3166_o = n3165_o[53:48]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3167_o = n3163_o | n3166_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3168_o = thermocodes[56:54]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3169_o = ~n3168_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3170_o = thermocodes[59:57]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3171_o = temp_orresult[53:48]; // extract
  assign n3172_o = eval_orresult_offset_comp[95:60]; // extract
  assign n3173_o = {n3172_o, n3170_o, n3169_o, n3162_o, n3161_o, n3154_o, n3153_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3174_o = n3173_o[59:54]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3175_o = n3171_o | n3174_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3176_o = thermocodes[62:60]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3177_o = ~n3176_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3178_o = thermocodes[65:63]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3179_o = temp_orresult[59:54]; // extract
  assign n3180_o = eval_orresult_offset_comp[95:66]; // extract
  assign n3181_o = {n3180_o, n3178_o, n3177_o, n3170_o, n3169_o, n3162_o, n3161_o, n3154_o, n3153_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3182_o = n3181_o[65:60]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3183_o = n3179_o | n3182_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3184_o = thermocodes[68:66]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3185_o = ~n3184_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3186_o = thermocodes[71:69]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3187_o = temp_orresult[65:60]; // extract
  assign n3188_o = eval_orresult_offset_comp[95:72]; // extract
  assign n3189_o = {n3188_o, n3186_o, n3185_o, n3178_o, n3177_o, n3170_o, n3169_o, n3162_o, n3161_o, n3154_o, n3153_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3190_o = n3189_o[71:66]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3191_o = n3187_o | n3190_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3192_o = thermocodes[74:72]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3193_o = ~n3192_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3194_o = thermocodes[77:75]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3195_o = temp_orresult[71:66]; // extract
  assign n3196_o = eval_orresult_offset_comp[95:78]; // extract
  assign n3197_o = {n3196_o, n3194_o, n3193_o, n3186_o, n3185_o, n3178_o, n3177_o, n3170_o, n3169_o, n3162_o, n3161_o, n3154_o, n3153_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3198_o = n3197_o[77:72]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3199_o = n3195_o | n3198_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3200_o = thermocodes[80:78]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3201_o = ~n3200_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3202_o = thermocodes[83:81]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3203_o = temp_orresult[77:72]; // extract
  assign n3204_o = eval_orresult_offset_comp[95:84]; // extract
  assign n3205_o = {n3204_o, n3202_o, n3201_o, n3194_o, n3193_o, n3186_o, n3185_o, n3178_o, n3177_o, n3170_o, n3169_o, n3162_o, n3161_o, n3154_o, n3153_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3206_o = n3205_o[83:78]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3207_o = n3203_o | n3206_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3208_o = thermocodes[86:84]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3209_o = ~n3208_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3210_o = thermocodes[89:87]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3211_o = temp_orresult[83:78]; // extract
  assign n3212_o = eval_orresult_offset_comp[95:90]; // extract
  assign n3213_o = {n3212_o, n3210_o, n3209_o, n3202_o, n3201_o, n3194_o, n3193_o, n3186_o, n3185_o, n3178_o, n3177_o, n3170_o, n3169_o, n3162_o, n3161_o, n3154_o, n3153_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3214_o = n3213_o[89:84]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3215_o = n3211_o | n3214_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:73  */
  assign n3216_o = thermocodes[92:90]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:146:55  */
  assign n3217_o = ~n3216_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:147:79  */
  assign n3218_o = thermocodes[95:93]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:40  */
  assign n3219_o = temp_orresult[89:84]; // extract
  assign n3220_o = {n3218_o, n3217_o, n3210_o, n3209_o, n3202_o, n3201_o, n3194_o, n3193_o, n3186_o, n3185_o, n3178_o, n3177_o, n3170_o, n3169_o, n3162_o, n3161_o, n3154_o, n3153_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:60  */
  assign n3221_o = n3220_o[95:90]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:148:46  */
  assign n3222_o = n3219_o | n3221_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:151:30  */
  assign n3223_o = temp_orresult[95:90]; // extract
  assign n3225_o = {n3218_o, n3217_o, n3210_o, n3209_o, n3202_o, n3201_o, n3194_o, n3193_o, n3186_o, n3185_o, n3178_o, n3177_o, n3170_o, n3169_o, n3162_o, n3161_o, n3154_o, n3153_o, n3146_o, n3145_o, n3138_o, n3137_o, n3130_o, n3129_o, n3122_o, n3121_o, n3114_o, n3113_o, n3106_o, n3105_o, n3100_o, n3099_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:160:54  */
  assign n3227_o = orresult[0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:160:54  */
  assign n3228_o = orresult[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:160:54  */
  assign n3229_o = orresult[2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:164:3  */
  priority_encoder_3_3 priority_encoder_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .code_i(neg_orresult),
    .bin_o(priority_encoder_0_bin_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:179:3  */
  priority_encoder_3_3 priority_encoder_1 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .code_i(n3232_o),
    .bin_o(priority_encoder_1_bin_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:187:24  */
  assign n3232_o = orresult[5:3]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:194:36  */
  assign n3234_o = weylsd_neg + weylsd_pos;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:199:36  */
  assign n3235_o = sync_weylsd_strb[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:91:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3236_q <= 6'b000000;
    else
      n3236_q <= next_buf_reg;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:91:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3237_q <= 2'b00;
    else
      n3237_q <= n3035_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:87:5  */
  assign n3238_o = {n3093_o, buf_reg, n3094_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:87:5  */
  assign n3239_o = {gen_spike_2_tc_n15_spike_2_tc_thermo_o, gen_spike_2_tc_n14_spike_2_tc_thermo_o, gen_spike_2_tc_n13_spike_2_tc_thermo_o, gen_spike_2_tc_n12_spike_2_tc_thermo_o, gen_spike_2_tc_n11_spike_2_tc_thermo_o, gen_spike_2_tc_n10_spike_2_tc_thermo_o, gen_spike_2_tc_n9_spike_2_tc_thermo_o, gen_spike_2_tc_n8_spike_2_tc_thermo_o, gen_spike_2_tc_n7_spike_2_tc_thermo_o, gen_spike_2_tc_n6_spike_2_tc_thermo_o, gen_spike_2_tc_n5_spike_2_tc_thermo_o, gen_spike_2_tc_n4_spike_2_tc_thermo_o, gen_spike_2_tc_n3_spike_2_tc_thermo_o, gen_spike_2_tc_n2_spike_2_tc_thermo_o, gen_spike_2_tc_n1_spike_2_tc_thermo_o, 6'b000111};
  assign n3240_o = {n3227_o, n3228_o, n3229_o};
  assign n3241_o = {n3222_o, n3215_o, n3207_o, n3199_o, n3191_o, n3183_o, n3175_o, n3167_o, n3159_o, n3151_o, n3143_o, n3135_o, n3127_o, n3119_o, n3111_o, n3103_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Weyls-Discrepancy/rtl/weyls_discrepancy_ea.vhd:91:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3242_q <= 3'b000;
    else
      n3242_q <= next_weylsd;
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
  wire [14:0] n2634_o;
  wire [1:0] n2635_o;
  wire [17:0] n2636_o;
  wire n2637_o;
  wire [1:0] n2638_o;
  wire [17:0] n2639_o;
  wire n2640_o;
  wire [1:0] n2641_o;
  wire [17:0] n2642_o;
  wire n2643_o;
  wire [1:0] n2644_o;
  wire [17:0] n2645_o;
  wire n2646_o;
  wire [1:0] n2647_o;
  wire [17:0] n2648_o;
  wire n2649_o;
  wire [1:0] n2650_o;
  wire [17:0] n2651_o;
  wire n2652_o;
  wire [1:0] n2653_o;
  wire [17:0] n2654_o;
  wire n2655_o;
  wire [1:0] n2656_o;
  wire [17:0] n2657_o;
  wire n2658_o;
  wire [1:0] n2659_o;
  wire [17:0] n2660_o;
  wire n2661_o;
  wire [1:0] n2662_o;
  wire [17:0] n2663_o;
  wire n2664_o;
  wire [1:0] n2665_o;
  wire [17:0] n2666_o;
  wire n2667_o;
  wire [1:0] n2668_o;
  wire [17:0] n2669_o;
  wire n2670_o;
  wire [1:0] n2671_o;
  wire [17:0] n2672_o;
  wire n2673_o;
  wire [1:0] n2674_o;
  wire [17:0] n2675_o;
  wire n2676_o;
  wire n2677_o;
  wire [18:0] n2679_o;
  wire [18:0] n2680_o;
  wire n2681_o;
  wire [1:0] n2683_o;
  wire [1:0] n2684_o;
  wire [18:0] n2685_o;
  wire [18:0] n2686_o;
  wire n2687_o;
  wire [1:0] n2689_o;
  wire [1:0] n2690_o;
  wire [18:0] n2691_o;
  wire [18:0] n2692_o;
  wire n2693_o;
  wire [1:0] n2695_o;
  wire [1:0] n2696_o;
  wire [18:0] n2697_o;
  wire [18:0] n2698_o;
  wire n2699_o;
  wire [1:0] n2701_o;
  wire [1:0] n2702_o;
  wire [18:0] n2703_o;
  wire [18:0] n2704_o;
  wire n2705_o;
  wire [1:0] n2707_o;
  wire [1:0] n2708_o;
  wire [18:0] n2709_o;
  wire [18:0] n2710_o;
  wire n2711_o;
  wire [1:0] n2713_o;
  wire [1:0] n2714_o;
  wire [18:0] n2715_o;
  wire [18:0] n2716_o;
  wire n2717_o;
  wire [1:0] n2719_o;
  wire [1:0] n2720_o;
  wire [18:0] n2721_o;
  wire [18:0] n2722_o;
  wire n2723_o;
  wire [1:0] n2725_o;
  wire [1:0] n2726_o;
  wire [18:0] n2727_o;
  wire [18:0] n2728_o;
  wire n2729_o;
  wire [1:0] n2731_o;
  wire [1:0] n2732_o;
  wire [18:0] n2733_o;
  wire [18:0] n2734_o;
  wire n2735_o;
  wire [1:0] n2737_o;
  wire [1:0] n2738_o;
  wire [18:0] n2739_o;
  wire [18:0] n2740_o;
  wire n2741_o;
  wire [1:0] n2743_o;
  wire [1:0] n2744_o;
  wire [18:0] n2745_o;
  wire [18:0] n2746_o;
  wire n2747_o;
  wire [1:0] n2749_o;
  wire [1:0] n2750_o;
  wire [18:0] n2751_o;
  wire [18:0] n2752_o;
  wire n2753_o;
  wire [1:0] n2755_o;
  wire [1:0] n2756_o;
  wire [18:0] n2757_o;
  wire [18:0] n2758_o;
  wire n2759_o;
  wire [1:0] n2761_o;
  wire [1:0] n2762_o;
  wire [18:0] n2763_o;
  wire [18:0] n2764_o;
  wire n2765_o;
  wire [1:0] n2767_o;
  wire [1:0] n2768_o;
  wire [269:0] n2769_o;
  wire [269:0] n2770_o;
  wire [29:0] n2771_o;
  wire [29:0] n2772_o;
  wire [29:0] n2773_o;
  wire [14:0] n2774_o;
  wire [14:0] n2775_o;
  wire n2778_o;
  reg [284:0] end_of_window_logic_virt_win_end;
  reg [14:0] end_of_window_logic_carry;
  wire [17:0] n2784_o;
  wire [18:0] n2785_o;
  wire [18:0] n2786_o;
  wire n2787_o;
  wire [265:0] n2789_o;
  wire [284:0] n2790_o;
  wire n2791_o;
  wire n2792_o;
  wire [13:0] n2793_o;
  wire [14:0] n2794_o;
  wire n2795_o;
  wire [265:0] n2796_o;
  wire [284:0] n2797_o;
  wire [17:0] n2798_o;
  wire [18:0] n2799_o;
  wire [17:0] n2800_o;
  wire [18:0] n2801_o;
  wire [18:0] n2802_o;
  wire n2803_o;
  wire [246:0] n2805_o;
  wire [284:0] n2806_o;
  wire n2807_o;
  wire n2808_o;
  wire [12:0] n2809_o;
  wire [14:0] n2810_o;
  wire n2811_o;
  wire [246:0] n2812_o;
  wire [284:0] n2813_o;
  wire [17:0] n2814_o;
  wire [18:0] n2815_o;
  wire [17:0] n2816_o;
  wire [18:0] n2817_o;
  wire [18:0] n2818_o;
  wire n2819_o;
  wire [227:0] n2821_o;
  wire [284:0] n2822_o;
  wire n2823_o;
  wire n2824_o;
  wire [11:0] n2825_o;
  wire [14:0] n2826_o;
  wire n2827_o;
  wire [227:0] n2828_o;
  wire [284:0] n2829_o;
  wire [17:0] n2830_o;
  wire [18:0] n2831_o;
  wire [17:0] n2832_o;
  wire [18:0] n2833_o;
  wire [18:0] n2834_o;
  wire n2835_o;
  wire [208:0] n2837_o;
  wire [284:0] n2838_o;
  wire n2839_o;
  wire n2840_o;
  wire [10:0] n2841_o;
  wire [14:0] n2842_o;
  wire n2843_o;
  wire [208:0] n2844_o;
  wire [284:0] n2845_o;
  wire [17:0] n2846_o;
  wire [18:0] n2847_o;
  wire [17:0] n2848_o;
  wire [18:0] n2849_o;
  wire [18:0] n2850_o;
  wire n2851_o;
  wire [189:0] n2853_o;
  wire [284:0] n2854_o;
  wire n2855_o;
  wire n2856_o;
  wire [9:0] n2857_o;
  wire [14:0] n2858_o;
  wire n2859_o;
  wire [189:0] n2860_o;
  wire [284:0] n2861_o;
  wire [17:0] n2862_o;
  wire [18:0] n2863_o;
  wire [17:0] n2864_o;
  wire [18:0] n2865_o;
  wire [18:0] n2866_o;
  wire n2867_o;
  wire [170:0] n2869_o;
  wire [284:0] n2870_o;
  wire n2871_o;
  wire n2872_o;
  wire [8:0] n2873_o;
  wire [14:0] n2874_o;
  wire n2875_o;
  wire [170:0] n2876_o;
  wire [284:0] n2877_o;
  wire [17:0] n2878_o;
  wire [18:0] n2879_o;
  wire [17:0] n2880_o;
  wire [18:0] n2881_o;
  wire [18:0] n2882_o;
  wire n2883_o;
  wire [151:0] n2885_o;
  wire [284:0] n2886_o;
  wire n2887_o;
  wire n2888_o;
  wire [7:0] n2889_o;
  wire [14:0] n2890_o;
  wire n2891_o;
  wire [151:0] n2892_o;
  wire [284:0] n2893_o;
  wire [17:0] n2894_o;
  wire [18:0] n2895_o;
  wire [17:0] n2896_o;
  wire [18:0] n2897_o;
  wire [18:0] n2898_o;
  wire n2899_o;
  wire [132:0] n2901_o;
  wire [284:0] n2902_o;
  wire n2903_o;
  wire n2904_o;
  wire [6:0] n2905_o;
  wire [14:0] n2906_o;
  wire n2907_o;
  wire [132:0] n2908_o;
  wire [284:0] n2909_o;
  wire [17:0] n2910_o;
  wire [18:0] n2911_o;
  wire [17:0] n2912_o;
  wire [18:0] n2913_o;
  wire [18:0] n2914_o;
  wire n2915_o;
  wire [113:0] n2917_o;
  wire [284:0] n2918_o;
  wire n2919_o;
  wire n2920_o;
  wire [5:0] n2921_o;
  wire [14:0] n2922_o;
  wire n2923_o;
  wire [113:0] n2924_o;
  wire [284:0] n2925_o;
  wire [17:0] n2926_o;
  wire [18:0] n2927_o;
  wire [17:0] n2928_o;
  wire [18:0] n2929_o;
  wire [18:0] n2930_o;
  wire n2931_o;
  wire [94:0] n2933_o;
  wire [284:0] n2934_o;
  wire n2935_o;
  wire n2936_o;
  wire [4:0] n2937_o;
  wire [14:0] n2938_o;
  wire n2939_o;
  wire [94:0] n2940_o;
  wire [284:0] n2941_o;
  wire [17:0] n2942_o;
  wire [18:0] n2943_o;
  wire [17:0] n2944_o;
  wire [18:0] n2945_o;
  wire [18:0] n2946_o;
  wire n2947_o;
  wire [75:0] n2949_o;
  wire [284:0] n2950_o;
  wire n2951_o;
  wire n2952_o;
  wire [3:0] n2953_o;
  wire [14:0] n2954_o;
  wire n2955_o;
  wire [75:0] n2956_o;
  wire [284:0] n2957_o;
  wire [17:0] n2958_o;
  wire [18:0] n2959_o;
  wire [17:0] n2960_o;
  wire [18:0] n2961_o;
  wire [18:0] n2962_o;
  wire n2963_o;
  wire [56:0] n2965_o;
  wire [284:0] n2966_o;
  wire n2967_o;
  wire n2968_o;
  wire [2:0] n2969_o;
  wire [14:0] n2970_o;
  wire n2971_o;
  wire [56:0] n2972_o;
  wire [284:0] n2973_o;
  wire [17:0] n2974_o;
  wire [18:0] n2975_o;
  wire [17:0] n2976_o;
  wire [18:0] n2977_o;
  wire [18:0] n2978_o;
  wire n2979_o;
  wire [37:0] n2981_o;
  wire [284:0] n2982_o;
  wire n2983_o;
  wire n2984_o;
  wire [1:0] n2985_o;
  wire [14:0] n2986_o;
  wire n2987_o;
  wire [37:0] n2988_o;
  wire [284:0] n2989_o;
  wire [17:0] n2990_o;
  wire [18:0] n2991_o;
  wire [17:0] n2992_o;
  wire [18:0] n2993_o;
  wire [18:0] n2994_o;
  wire n2995_o;
  wire [18:0] n2997_o;
  wire [284:0] n2998_o;
  wire n2999_o;
  wire n3000_o;
  wire n3001_o;
  wire [14:0] n3002_o;
  wire n3003_o;
  wire [18:0] n3004_o;
  wire [284:0] n3005_o;
  wire [17:0] n3006_o;
  wire [18:0] n3007_o;
  wire [17:0] n3008_o;
  wire [18:0] n3009_o;
  wire [18:0] n3010_o;
  wire n3011_o;
  wire [284:0] n3013_o;
  wire n3014_o;
  wire n3015_o;
  wire [14:0] n3016_o;
  wire n3017_o;
  wire [284:0] n3018_o;
  wire [17:0] n3019_o;
  wire [18:0] n3020_o;
  wire [284:0] n3022_o;
  wire [14:0] n3023_o;
  reg [269:0] n3024_q;
  reg [29:0] n3025_q;
  wire [284:0] n3026_o;
  reg [14:0] n3027_q;
  reg n3028_q;
  assign spikes_o = spikes; //(module output)
  assign spikes_strb_o = spikes_strb; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:46:8  */
  assign timestamps = n3024_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:47:8  */
  assign next_timestamps = n2770_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:48:8  */
  assign spikes = n3025_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:49:8  */
  assign next_spikes = n2773_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:50:8  */
  assign win_end = n3026_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:51:8  */
  assign overflow_marker = n3027_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:52:8  */
  assign next_overflow_marker = n2775_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:53:8  */
  assign spikes_strb = n3028_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:54:8  */
  assign next_spikes_strb = n2778_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:83:5  */
  assign n2634_o = overflow_strb_i ? 15'b111111111111111 : overflow_marker;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2635_o = spikes[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2636_o = timestamps[17:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2637_o = overflow_marker[0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2638_o = spikes[3:2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2639_o = timestamps[35:18]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2640_o = overflow_marker[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2641_o = spikes[5:4]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2642_o = timestamps[53:36]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2643_o = overflow_marker[2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2644_o = spikes[7:6]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2645_o = timestamps[71:54]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2646_o = overflow_marker[3]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2647_o = spikes[9:8]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2648_o = timestamps[89:72]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2649_o = overflow_marker[4]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2650_o = spikes[11:10]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2651_o = timestamps[107:90]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2652_o = overflow_marker[5]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2653_o = spikes[13:12]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2654_o = timestamps[125:108]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2655_o = overflow_marker[6]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2656_o = spikes[15:14]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2657_o = timestamps[143:126]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2658_o = overflow_marker[7]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2659_o = spikes[17:16]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2660_o = timestamps[161:144]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2661_o = overflow_marker[8]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2662_o = spikes[19:18]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2663_o = timestamps[179:162]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2664_o = overflow_marker[9]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2665_o = spikes[21:20]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2666_o = timestamps[197:180]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2667_o = overflow_marker[10]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2668_o = spikes[23:22]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2669_o = timestamps[215:198]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2670_o = overflow_marker[11]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2671_o = spikes[25:24]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2672_o = timestamps[233:216]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2673_o = overflow_marker[12]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:90:33  */
  assign n2674_o = spikes[27:26]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:91:41  */
  assign n2675_o = timestamps[251:234]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:92:51  */
  assign n2676_o = overflow_marker[13]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:96:28  */
  assign n2677_o = ~spike_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2679_o = win_end[18:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2680_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2681_o = $unsigned(n2680_o) >= $unsigned(n2679_o);
  assign n2683_o = spikes[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2684_o = n2681_o ? 2'b00 : n2683_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2685_o = win_end[37:19]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2686_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2687_o = $unsigned(n2686_o) >= $unsigned(n2685_o);
  assign n2689_o = spikes[3:2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2690_o = n2687_o ? 2'b00 : n2689_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2691_o = win_end[56:38]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2692_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2693_o = $unsigned(n2692_o) >= $unsigned(n2691_o);
  assign n2695_o = spikes[5:4]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2696_o = n2693_o ? 2'b00 : n2695_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2697_o = win_end[75:57]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2698_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2699_o = $unsigned(n2698_o) >= $unsigned(n2697_o);
  assign n2701_o = spikes[7:6]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2702_o = n2699_o ? 2'b00 : n2701_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2703_o = win_end[94:76]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2704_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2705_o = $unsigned(n2704_o) >= $unsigned(n2703_o);
  assign n2707_o = spikes[9:8]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2708_o = n2705_o ? 2'b00 : n2707_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2709_o = win_end[113:95]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2710_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2711_o = $unsigned(n2710_o) >= $unsigned(n2709_o);
  assign n2713_o = spikes[11:10]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2714_o = n2711_o ? 2'b00 : n2713_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2715_o = win_end[132:114]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2716_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2717_o = $unsigned(n2716_o) >= $unsigned(n2715_o);
  assign n2719_o = spikes[13:12]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2720_o = n2717_o ? 2'b00 : n2719_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2721_o = win_end[151:133]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2722_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2723_o = $unsigned(n2722_o) >= $unsigned(n2721_o);
  assign n2725_o = spikes[15:14]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2726_o = n2723_o ? 2'b00 : n2725_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2727_o = win_end[170:152]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2728_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2729_o = $unsigned(n2728_o) >= $unsigned(n2727_o);
  assign n2731_o = spikes[17:16]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2732_o = n2729_o ? 2'b00 : n2731_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2733_o = win_end[189:171]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2734_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2735_o = $unsigned(n2734_o) >= $unsigned(n2733_o);
  assign n2737_o = spikes[19:18]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2738_o = n2735_o ? 2'b00 : n2737_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2739_o = win_end[208:190]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2740_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2741_o = $unsigned(n2740_o) >= $unsigned(n2739_o);
  assign n2743_o = spikes[21:20]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2744_o = n2741_o ? 2'b00 : n2743_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2745_o = win_end[227:209]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2746_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2747_o = $unsigned(n2746_o) >= $unsigned(n2745_o);
  assign n2749_o = spikes[23:22]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2750_o = n2747_o ? 2'b00 : n2749_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2751_o = win_end[246:228]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2752_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2753_o = $unsigned(n2752_o) >= $unsigned(n2751_o);
  assign n2755_o = spikes[25:24]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2756_o = n2753_o ? 2'b00 : n2755_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2757_o = win_end[265:247]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2758_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2759_o = $unsigned(n2758_o) >= $unsigned(n2757_o);
  assign n2761_o = spikes[27:26]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2762_o = n2759_o ? 2'b00 : n2761_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:34  */
  assign n2763_o = win_end[284:266]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2764_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:24  */
  assign n2765_o = $unsigned(n2764_o) >= $unsigned(n2763_o);
  assign n2767_o = spikes[29:28]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:103:9  */
  assign n2768_o = n2765_o ? 2'b00 : n2767_o;
  assign n2769_o = {n2675_o, n2672_o, n2669_o, n2666_o, n2663_o, n2660_o, n2657_o, n2654_o, n2651_o, n2648_o, n2645_o, n2642_o, n2639_o, n2636_o, curr_time_i};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2770_o = spike_strb_i ? n2769_o : timestamps;
  assign n2771_o = {n2768_o, n2762_o, n2756_o, n2750_o, n2744_o, n2738_o, n2732_o, n2726_o, n2720_o, n2714_o, n2708_o, n2702_o, n2696_o, n2690_o, n2684_o};
  assign n2772_o = {n2674_o, n2671_o, n2668_o, n2665_o, n2662_o, n2659_o, n2656_o, n2653_o, n2650_o, n2647_o, n2644_o, n2641_o, n2638_o, n2635_o, n2677_o, spike_i};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2773_o = spike_strb_i ? n2772_o : n2771_o;
  assign n2774_o = {n2676_o, n2673_o, n2670_o, n2667_o, n2664_o, n2661_o, n2658_o, n2655_o, n2652_o, n2649_o, n2646_o, n2643_o, n2640_o, n2637_o, 1'b0};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2775_o = spike_strb_i ? n2774_o : n2634_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:87:5  */
  assign n2778_o = spike_strb_i ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:113:12  */
  always @*
    end_of_window_logic_virt_win_end = n3022_o; // (isignal)
  initial
    end_of_window_logic_virt_win_end = 285'bX;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:114:12  */
  always @*
    end_of_window_logic_carry = n3023_o; // (isignal)
  initial
    end_of_window_logic_carry = 15'bX;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2784_o = timestamps[17:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2785_o = {1'b0, n2784_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2786_o = n2785_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2787_o = overflow_marker[0]; // extract
  assign n2789_o = end_of_window_logic_virt_win_end[284:19]; // extract
  assign n2790_o = {n2789_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2791_o = n2790_o[18]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2792_o = n2787_o ? 1'b0 : n2791_o;
  assign n2793_o = end_of_window_logic_carry[13:0]; // extract
  assign n2794_o = {n2792_o, n2793_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2795_o = n2794_o[14]; // extract
  assign n2796_o = end_of_window_logic_virt_win_end[284:19]; // extract
  assign n2797_o = {n2796_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2798_o = n2797_o[17:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2799_o = {n2795_o, n2798_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2800_o = timestamps[35:18]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2801_o = {1'b0, n2800_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2802_o = n2801_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2803_o = overflow_marker[1]; // extract
  assign n2805_o = end_of_window_logic_virt_win_end[284:38]; // extract
  assign n2806_o = {n2805_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2807_o = n2806_o[37]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2808_o = n2803_o ? 1'b0 : n2807_o;
  assign n2809_o = end_of_window_logic_carry[12:0]; // extract
  assign n2810_o = {n2792_o, n2808_o, n2809_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2811_o = n2810_o[13]; // extract
  assign n2812_o = end_of_window_logic_virt_win_end[284:38]; // extract
  assign n2813_o = {n2812_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2814_o = n2813_o[36:19]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2815_o = {n2811_o, n2814_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2816_o = timestamps[53:36]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2817_o = {1'b0, n2816_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2818_o = n2817_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2819_o = overflow_marker[2]; // extract
  assign n2821_o = end_of_window_logic_virt_win_end[284:57]; // extract
  assign n2822_o = {n2821_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2823_o = n2822_o[56]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2824_o = n2819_o ? 1'b0 : n2823_o;
  assign n2825_o = end_of_window_logic_carry[11:0]; // extract
  assign n2826_o = {n2792_o, n2808_o, n2824_o, n2825_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2827_o = n2826_o[12]; // extract
  assign n2828_o = end_of_window_logic_virt_win_end[284:57]; // extract
  assign n2829_o = {n2828_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2830_o = n2829_o[55:38]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2831_o = {n2827_o, n2830_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2832_o = timestamps[71:54]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2833_o = {1'b0, n2832_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2834_o = n2833_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2835_o = overflow_marker[3]; // extract
  assign n2837_o = end_of_window_logic_virt_win_end[284:76]; // extract
  assign n2838_o = {n2837_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2839_o = n2838_o[75]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2840_o = n2835_o ? 1'b0 : n2839_o;
  assign n2841_o = end_of_window_logic_carry[10:0]; // extract
  assign n2842_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2841_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2843_o = n2842_o[11]; // extract
  assign n2844_o = end_of_window_logic_virt_win_end[284:76]; // extract
  assign n2845_o = {n2844_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2846_o = n2845_o[74:57]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2847_o = {n2843_o, n2846_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2848_o = timestamps[89:72]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2849_o = {1'b0, n2848_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2850_o = n2849_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2851_o = overflow_marker[4]; // extract
  assign n2853_o = end_of_window_logic_virt_win_end[284:95]; // extract
  assign n2854_o = {n2853_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2855_o = n2854_o[94]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2856_o = n2851_o ? 1'b0 : n2855_o;
  assign n2857_o = end_of_window_logic_carry[9:0]; // extract
  assign n2858_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2857_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2859_o = n2858_o[10]; // extract
  assign n2860_o = end_of_window_logic_virt_win_end[284:95]; // extract
  assign n2861_o = {n2860_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2862_o = n2861_o[93:76]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2863_o = {n2859_o, n2862_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2864_o = timestamps[107:90]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2865_o = {1'b0, n2864_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2866_o = n2865_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2867_o = overflow_marker[5]; // extract
  assign n2869_o = end_of_window_logic_virt_win_end[284:114]; // extract
  assign n2870_o = {n2869_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2871_o = n2870_o[113]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2872_o = n2867_o ? 1'b0 : n2871_o;
  assign n2873_o = end_of_window_logic_carry[8:0]; // extract
  assign n2874_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2873_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2875_o = n2874_o[9]; // extract
  assign n2876_o = end_of_window_logic_virt_win_end[284:114]; // extract
  assign n2877_o = {n2876_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2878_o = n2877_o[112:95]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2879_o = {n2875_o, n2878_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2880_o = timestamps[125:108]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2881_o = {1'b0, n2880_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2882_o = n2881_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2883_o = overflow_marker[6]; // extract
  assign n2885_o = end_of_window_logic_virt_win_end[284:133]; // extract
  assign n2886_o = {n2885_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2887_o = n2886_o[132]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2888_o = n2883_o ? 1'b0 : n2887_o;
  assign n2889_o = end_of_window_logic_carry[7:0]; // extract
  assign n2890_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2888_o, n2889_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2891_o = n2890_o[8]; // extract
  assign n2892_o = end_of_window_logic_virt_win_end[284:133]; // extract
  assign n2893_o = {n2892_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2894_o = n2893_o[131:114]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2895_o = {n2891_o, n2894_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2896_o = timestamps[143:126]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2897_o = {1'b0, n2896_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2898_o = n2897_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2899_o = overflow_marker[7]; // extract
  assign n2901_o = end_of_window_logic_virt_win_end[284:152]; // extract
  assign n2902_o = {n2901_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2903_o = n2902_o[151]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2904_o = n2899_o ? 1'b0 : n2903_o;
  assign n2905_o = end_of_window_logic_carry[6:0]; // extract
  assign n2906_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2888_o, n2904_o, n2905_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2907_o = n2906_o[7]; // extract
  assign n2908_o = end_of_window_logic_virt_win_end[284:152]; // extract
  assign n2909_o = {n2908_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2910_o = n2909_o[150:133]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2911_o = {n2907_o, n2910_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2912_o = timestamps[161:144]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2913_o = {1'b0, n2912_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2914_o = n2913_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2915_o = overflow_marker[8]; // extract
  assign n2917_o = end_of_window_logic_virt_win_end[284:171]; // extract
  assign n2918_o = {n2917_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2919_o = n2918_o[170]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2920_o = n2915_o ? 1'b0 : n2919_o;
  assign n2921_o = end_of_window_logic_carry[5:0]; // extract
  assign n2922_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2888_o, n2904_o, n2920_o, n2921_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2923_o = n2922_o[6]; // extract
  assign n2924_o = end_of_window_logic_virt_win_end[284:171]; // extract
  assign n2925_o = {n2924_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2926_o = n2925_o[169:152]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2927_o = {n2923_o, n2926_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2928_o = timestamps[179:162]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2929_o = {1'b0, n2928_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2930_o = n2929_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2931_o = overflow_marker[9]; // extract
  assign n2933_o = end_of_window_logic_virt_win_end[284:190]; // extract
  assign n2934_o = {n2933_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2935_o = n2934_o[189]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2936_o = n2931_o ? 1'b0 : n2935_o;
  assign n2937_o = end_of_window_logic_carry[4:0]; // extract
  assign n2938_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2888_o, n2904_o, n2920_o, n2936_o, n2937_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2939_o = n2938_o[5]; // extract
  assign n2940_o = end_of_window_logic_virt_win_end[284:190]; // extract
  assign n2941_o = {n2940_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2942_o = n2941_o[188:171]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2943_o = {n2939_o, n2942_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2944_o = timestamps[197:180]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2945_o = {1'b0, n2944_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2946_o = n2945_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2947_o = overflow_marker[10]; // extract
  assign n2949_o = end_of_window_logic_virt_win_end[284:209]; // extract
  assign n2950_o = {n2949_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2951_o = n2950_o[208]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2952_o = n2947_o ? 1'b0 : n2951_o;
  assign n2953_o = end_of_window_logic_carry[3:0]; // extract
  assign n2954_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2888_o, n2904_o, n2920_o, n2936_o, n2952_o, n2953_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2955_o = n2954_o[4]; // extract
  assign n2956_o = end_of_window_logic_virt_win_end[284:209]; // extract
  assign n2957_o = {n2956_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2958_o = n2957_o[207:190]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2959_o = {n2955_o, n2958_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2960_o = timestamps[215:198]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2961_o = {1'b0, n2960_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2962_o = n2961_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2963_o = overflow_marker[11]; // extract
  assign n2965_o = end_of_window_logic_virt_win_end[284:228]; // extract
  assign n2966_o = {n2965_o, n2962_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2967_o = n2966_o[227]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2968_o = n2963_o ? 1'b0 : n2967_o;
  assign n2969_o = end_of_window_logic_carry[2:0]; // extract
  assign n2970_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2888_o, n2904_o, n2920_o, n2936_o, n2952_o, n2968_o, n2969_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2971_o = n2970_o[3]; // extract
  assign n2972_o = end_of_window_logic_virt_win_end[284:228]; // extract
  assign n2973_o = {n2972_o, n2962_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2974_o = n2973_o[226:209]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2975_o = {n2971_o, n2974_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2976_o = timestamps[233:216]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2977_o = {1'b0, n2976_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2978_o = n2977_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2979_o = overflow_marker[12]; // extract
  assign n2981_o = end_of_window_logic_virt_win_end[284:247]; // extract
  assign n2982_o = {n2981_o, n2978_o, n2962_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2983_o = n2982_o[246]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n2984_o = n2979_o ? 1'b0 : n2983_o;
  assign n2985_o = end_of_window_logic_carry[1:0]; // extract
  assign n2986_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2888_o, n2904_o, n2920_o, n2936_o, n2952_o, n2968_o, n2984_o, n2985_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n2987_o = n2986_o[2]; // extract
  assign n2988_o = end_of_window_logic_virt_win_end[284:247]; // extract
  assign n2989_o = {n2988_o, n2978_o, n2962_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n2990_o = n2989_o[245:228]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n2991_o = {n2987_o, n2990_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n2992_o = timestamps[251:234]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n2993_o = {1'b0, n2992_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n2994_o = n2993_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n2995_o = overflow_marker[13]; // extract
  assign n2997_o = end_of_window_logic_virt_win_end[284:266]; // extract
  assign n2998_o = {n2997_o, n2994_o, n2978_o, n2962_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n2999_o = n2998_o[265]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n3000_o = n2995_o ? 1'b0 : n2999_o;
  assign n3001_o = end_of_window_logic_carry[0]; // extract
  assign n3002_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2888_o, n2904_o, n2920_o, n2936_o, n2952_o, n2968_o, n2984_o, n3000_o, n3001_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n3003_o = n3002_o[1]; // extract
  assign n3004_o = end_of_window_logic_virt_win_end[284:266]; // extract
  assign n3005_o = {n3004_o, n2994_o, n2978_o, n2962_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n3006_o = n3005_o[264:247]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n3007_o = {n3003_o, n3006_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:50  */
  assign n3008_o = timestamps[269:252]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:33  */
  assign n3009_o = {1'b0, n3008_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:117:65  */
  assign n3010_o = n3009_o + win_length_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:25  */
  assign n3011_o = overflow_marker[14]; // extract
  assign n3013_o = {n3010_o, n2994_o, n2978_o, n2962_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:121:36  */
  assign n3014_o = n3013_o[284]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:118:7  */
  assign n3015_o = n3011_o ? 1'b0 : n3014_o;
  assign n3016_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2888_o, n2904_o, n2920_o, n2936_o, n2952_o, n2968_o, n2984_o, n3000_o, n3015_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:35  */
  assign n3017_o = n3016_o[0]; // extract
  assign n3018_o = {n3010_o, n2994_o, n2978_o, n2962_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:74  */
  assign n3019_o = n3018_o[283:266]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:123:39  */
  assign n3020_o = {n3017_o, n3019_o};
  assign n3022_o = {n3010_o, n2994_o, n2978_o, n2962_o, n2946_o, n2930_o, n2914_o, n2898_o, n2882_o, n2866_o, n2850_o, n2834_o, n2818_o, n2802_o, n2786_o};
  assign n3023_o = {n2792_o, n2808_o, n2824_o, n2840_o, n2856_o, n2872_o, n2888_o, n2904_o, n2920_o, n2936_o, n2952_o, n2968_o, n2984_o, n3000_o, n3015_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3024_q <= 270'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    else
      n3024_q <= next_timestamps;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3025_q <= 30'b000000000000000000000000000000;
    else
      n3025_q <= next_spikes;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:60:5  */
  assign n3026_o = {n3020_o, n3007_o, n2991_o, n2975_o, n2959_o, n2943_o, n2927_o, n2911_o, n2895_o, n2879_o, n2863_o, n2847_o, n2831_o, n2815_o, n2799_o};
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3027_q <= 15'b000000000000000;
    else
      n3027_q <= next_overflow_marker;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/Spike-Buffering/rtl/spike_shift_reg_ea.vhd:65:5  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n3028_q <= 1'b0;
    else
      n3028_q <= next_spikes_strb;
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
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_ea.vhd:45:9  */
  uart_tx_9_8 uart_tx_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .baudrate_adj_i(baudrate_adj_i),
    .tx_start_strb_i(tx_start_strb_i),
    .data_i(tx_data_i),
    .tx_strb_o(uart_tx_0_tx_strb_o),
    .tx_o(uart_tx_0_tx_o));
  /* ../../../vhdl/atbs_core_fixed_window/uart/rtl/uart_ea.vhd:63:3  */
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
  wire [23:0] n2553_o;
  wire [7:0] n2568_o;
  wire [7:0] n2569_o;
  wire [7:0] n2570_o;
  wire n2572_o;
  wire n2573_o;
  wire [15:0] n2574_o;
  wire [15:0] n2575_o;
  wire [15:0] n2576_o;
  wire n2579_o;
  wire [23:0] n2580_o;
  wire [15:0] n2581_o;
  wire [15:0] n2582_o;
  wire [7:0] n2583_o;
  wire [7:0] n2584_o;
  wire [7:0] n2585_o;
  wire n2588_o;
  wire n2595_o;
  wire [1:0] n2597_o;
  wire [1:0] n2599_o;
  wire [1:0] n2600_o;
  wire [7:0] n2602_o;
  reg [23:0] n2603_q;
  wire [23:0] n2604_o;
  reg n2605_q;
  reg [1:0] n2606_q;
  assign uart_data_o = n2602_o; //(module output)
  assign tx_start_strb_o = tx_start_strb; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:46:8  */
  assign shift_reg_out = n2603_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:47:8  */
  assign next_shift_reg_out = n2604_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:48:8  */
  assign tx_start_strb = n2605_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:49:8  */
  assign next_tx_start_strb = n2588_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:50:8  */
  assign counter = n2606_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:51:8  */
  assign next_counter = n2600_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:52:8  */
  assign data = n2553_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:57:29  */
  assign n2553_o = {{5{memory_data_i[18]}}, memory_data_i}; // sext
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:87:38  */
  assign n2568_o = data[7:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:87:38  */
  assign n2569_o = data[15:8]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:87:38  */
  assign n2570_o = data[23:16]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:90:51  */
  assign n2572_o = $unsigned(counter) < $unsigned(2'b10);
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:90:39  */
  assign n2573_o = n2572_o & tx_strb_i;
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:91:76  */
  assign n2574_o = shift_reg_out[23:8]; // extract
  assign n2575_o = shift_reg_out[15:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:90:17  */
  assign n2576_o = n2573_o ? n2574_o : n2575_o;
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:90:17  */
  assign n2579_o = n2573_o ? 1'b1 : 1'b0;
  assign n2580_o = {n2568_o, n2569_o, n2570_o};
  assign n2581_o = n2580_o[15:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:82:5  */
  assign n2582_o = read_strb_i ? n2581_o : n2576_o;
  assign n2583_o = n2580_o[23:16]; // extract
  assign n2584_o = shift_reg_out[23:16]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:82:5  */
  assign n2585_o = read_strb_i ? n2583_o : n2584_o;
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:82:5  */
  assign n2588_o = read_strb_i ? 1'b1 : n2579_o;
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:103:18  */
  assign n2595_o = counter == 2'b10;
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:106:33  */
  assign n2597_o = counter + 2'b01;
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:103:7  */
  assign n2599_o = n2595_o ? 2'b00 : n2597_o;
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:102:5  */
  assign n2600_o = tx_strb_i ? n2599_o : counter;
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:114:37  */
  assign n2602_o = shift_reg_out[7:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:66:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2603_q <= 24'b000000000000000000000000;
    else
      n2603_q <= next_shift_reg_out;
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:62:17  */
  assign n2604_o = {n2585_o, n2582_o};
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:66:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2605_q <= 1'b0;
    else
      n2605_q <= next_tx_start_strb;
  /* ../../../vhdl/atbs_core_fixed_window/memory2uart/rtl/memory2uart_ea.vhd:66:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2606_q <= 2'b00;
    else
      n2606_q <= next_counter;
endmodule

module spike_memory_19_6
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
  wire [1215:0] srg;
  wire [1215:0] next_srg;
  wire [5:0] head;
  wire [5:0] next_head;
  wire [5:0] tail;
  wire [5:0] next_tail;
  wire [5:0] fifo_fill_count;
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
  wire n2303_o;
  wire n2304_o;
  wire [5:0] n2306_o;
  wire [5:0] n2307_o;
  wire n2310_o;
  wire [18:0] n2312_o;
  wire n2315_o;
  wire n2316_o;
  wire n2317_o;
  wire n2318_o;
  wire n2319_o;
  wire [5:0] n2321_o;
  wire [5:0] n2322_o;
  wire n2325_o;
  wire [2:0] n2328_o;
  wire n2330_o;
  wire n2331_o;
  wire [2:0] n2332_o;
  wire [2:0] n2333_o;
  wire [5:0] n2335_o;
  wire [5:0] n2337_o;
  wire n2338_o;
  wire [5:0] n2339_o;
  wire [5:0] n2340_o;
  wire n2343_o;
  wire n2344_o;
  wire n2348_o;
  wire n2349_o;
  wire [18:0] n2358_o;
  wire [18:0] n2359_o;
  wire [18:0] n2360_o;
  wire [18:0] n2361_o;
  wire [18:0] n2362_o;
  wire [18:0] n2363_o;
  wire [18:0] n2364_o;
  wire [18:0] n2365_o;
  wire [18:0] n2366_o;
  wire [18:0] n2367_o;
  wire [18:0] n2368_o;
  wire [18:0] n2369_o;
  wire [18:0] n2370_o;
  wire [18:0] n2371_o;
  wire [18:0] n2372_o;
  wire [18:0] n2373_o;
  wire [18:0] n2374_o;
  wire [18:0] n2375_o;
  wire [18:0] n2376_o;
  wire [18:0] n2377_o;
  wire [18:0] n2378_o;
  wire [18:0] n2379_o;
  wire [18:0] n2380_o;
  wire [18:0] n2381_o;
  wire [18:0] n2382_o;
  wire [18:0] n2383_o;
  wire [18:0] n2384_o;
  wire [18:0] n2385_o;
  wire [18:0] n2386_o;
  wire [18:0] n2387_o;
  wire [18:0] n2388_o;
  wire [18:0] n2389_o;
  wire [18:0] n2390_o;
  wire [18:0] n2391_o;
  wire [18:0] n2392_o;
  wire [18:0] n2393_o;
  wire [18:0] n2394_o;
  wire [18:0] n2395_o;
  wire [18:0] n2396_o;
  wire [18:0] n2397_o;
  wire [18:0] n2398_o;
  wire [18:0] n2399_o;
  wire [18:0] n2400_o;
  wire [18:0] n2401_o;
  wire [18:0] n2402_o;
  wire [18:0] n2403_o;
  wire [18:0] n2404_o;
  wire [18:0] n2405_o;
  wire [18:0] n2406_o;
  wire [18:0] n2407_o;
  wire [18:0] n2408_o;
  wire [18:0] n2409_o;
  wire [18:0] n2410_o;
  wire [18:0] n2411_o;
  wire [18:0] n2412_o;
  wire [18:0] n2413_o;
  wire [18:0] n2414_o;
  wire [18:0] n2415_o;
  wire [18:0] n2416_o;
  wire [18:0] n2417_o;
  wire [18:0] n2418_o;
  wire [18:0] n2419_o;
  wire [18:0] n2420_o;
  wire [1215:0] n2421_o;
  wire [1215:0] n2422_o;
  wire n2429_o;
  wire n2431_o;
  wire n2433_o;
  wire n2435_o;
  reg [1215:0] n2436_q;
  reg [5:0] n2437_q;
  reg [5:0] n2438_q;
  reg n2439_q;
  reg [18:0] n2440_q;
  reg [18:0] n2441_q;
  reg [3:0] n2442_q;
  wire [3:0] n2443_o;
  reg [2:0] n2444_q;
  wire [18:0] n2445_o;
  wire [18:0] n2446_o;
  wire [18:0] n2447_o;
  wire [18:0] n2448_o;
  wire [18:0] n2449_o;
  wire [18:0] n2450_o;
  wire [18:0] n2451_o;
  wire [18:0] n2452_o;
  wire [18:0] n2453_o;
  wire [18:0] n2454_o;
  wire [18:0] n2455_o;
  wire [18:0] n2456_o;
  wire [18:0] n2457_o;
  wire [18:0] n2458_o;
  wire [18:0] n2459_o;
  wire [18:0] n2460_o;
  wire [18:0] n2461_o;
  wire [18:0] n2462_o;
  wire [18:0] n2463_o;
  wire [18:0] n2464_o;
  wire [18:0] n2465_o;
  wire [18:0] n2466_o;
  wire [18:0] n2467_o;
  wire [18:0] n2468_o;
  wire [18:0] n2469_o;
  wire [18:0] n2470_o;
  wire [18:0] n2471_o;
  wire [18:0] n2472_o;
  wire [18:0] n2473_o;
  wire [18:0] n2474_o;
  wire [18:0] n2475_o;
  wire [18:0] n2476_o;
  wire [18:0] n2477_o;
  wire [18:0] n2478_o;
  wire [18:0] n2479_o;
  wire [18:0] n2480_o;
  wire [18:0] n2481_o;
  wire [18:0] n2482_o;
  wire [18:0] n2483_o;
  wire [18:0] n2484_o;
  wire [18:0] n2485_o;
  wire [18:0] n2486_o;
  wire [18:0] n2487_o;
  wire [18:0] n2488_o;
  wire [18:0] n2489_o;
  wire [18:0] n2490_o;
  wire [18:0] n2491_o;
  wire [18:0] n2492_o;
  wire [18:0] n2493_o;
  wire [18:0] n2494_o;
  wire [18:0] n2495_o;
  wire [18:0] n2496_o;
  wire [18:0] n2497_o;
  wire [18:0] n2498_o;
  wire [18:0] n2499_o;
  wire [18:0] n2500_o;
  wire [18:0] n2501_o;
  wire [18:0] n2502_o;
  wire [18:0] n2503_o;
  wire [18:0] n2504_o;
  wire [18:0] n2505_o;
  wire [18:0] n2506_o;
  wire [18:0] n2507_o;
  wire [18:0] n2508_o;
  wire [1:0] n2509_o;
  reg [18:0] n2510_o;
  wire [1:0] n2511_o;
  reg [18:0] n2512_o;
  wire [1:0] n2513_o;
  reg [18:0] n2514_o;
  wire [1:0] n2515_o;
  reg [18:0] n2516_o;
  wire [1:0] n2517_o;
  reg [18:0] n2518_o;
  wire [1:0] n2519_o;
  reg [18:0] n2520_o;
  wire [1:0] n2521_o;
  reg [18:0] n2522_o;
  wire [1:0] n2523_o;
  reg [18:0] n2524_o;
  wire [1:0] n2525_o;
  reg [18:0] n2526_o;
  wire [1:0] n2527_o;
  reg [18:0] n2528_o;
  wire [1:0] n2529_o;
  reg [18:0] n2530_o;
  wire [1:0] n2531_o;
  reg [18:0] n2532_o;
  wire [1:0] n2533_o;
  reg [18:0] n2534_o;
  wire [1:0] n2535_o;
  reg [18:0] n2536_o;
  wire [1:0] n2537_o;
  reg [18:0] n2538_o;
  wire [1:0] n2539_o;
  reg [18:0] n2540_o;
  wire [1:0] n2541_o;
  reg [18:0] n2542_o;
  wire [1:0] n2543_o;
  reg [18:0] n2544_o;
  wire [1:0] n2545_o;
  reg [18:0] n2546_o;
  wire [1:0] n2547_o;
  reg [18:0] n2548_o;
  wire [1:0] n2549_o;
  reg [18:0] n2550_o;
  assign read_strb_o = n2435_o; //(module output)
  assign b_data_o = b_data; //(module output)
  assign fifo_full_o = fifo_full; //(module output)
  assign fifo_empty_o = fifo_empty; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:53:8  */
  assign srg = n2436_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:54:8  */
  assign next_srg = n2422_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:57:8  */
  assign head = n2437_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:58:8  */
  assign next_head = n2307_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:61:8  */
  assign tail = n2438_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:62:8  */
  assign next_tail = n2322_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:65:8  */
  assign fifo_fill_count = n2339_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:67:8  */
  assign write_strb = n2310_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:68:8  */
  assign write_delayed_strb = n2439_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:70:8  */
  assign read_strb = n2325_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:73:8  */
  assign a_data = n2440_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:74:8  */
  assign next_a_data = n2312_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:76:8  */
  assign b_data = n2441_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:77:8  */
  assign next_b_data = n2550_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:80:8  */
  assign fifo_empty = n2344_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:81:8  */
  assign fifo_full = n2349_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:83:8  */
  assign sync_read_strb = n2442_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:84:8  */
  assign next_sync_read_strb = n2443_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:86:8  */
  assign tx_active = n2444_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:87:8  */
  assign next_tx_active = n2333_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:153:55  */
  assign n2303_o = ~fifo_full;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:153:41  */
  assign n2304_o = n2303_o & enable_write_i;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:154:43  */
  assign n2306_o = head + 6'b000001;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:153:17  */
  assign n2307_o = n2304_o ? n2306_o : head;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:153:17  */
  assign n2310_o = n2304_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:153:17  */
  assign n2312_o = n2304_o ? a_data_i : a_data;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:170:55  */
  assign n2315_o = ~fifo_empty;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:170:40  */
  assign n2316_o = n2315_o & enable_read_i;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:170:74  */
  assign n2317_o = tx_active[2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:170:85  */
  assign n2318_o = ~n2317_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:170:61  */
  assign n2319_o = n2318_o & n2316_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:171:43  */
  assign n2321_o = tail + 6'b000001;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:170:17  */
  assign n2322_o = n2319_o ? n2321_o : tail;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:170:17  */
  assign n2325_o = n2319_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:170:17  */
  assign n2328_o = n2319_o ? 3'b111 : tx_active;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:180:39  */
  assign n2330_o = tx_active[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:180:39  */
  assign n2331_o = tx_active[0]; // extract
  assign n2332_o = {n2330_o, n2331_o, 1'b0};
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:177:5  */
  assign n2333_o = tx_strb_i ? n2332_o : n2328_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:188:33  */
  assign n2335_o = head - tail;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:188:40  */
  assign n2337_o = n2335_o + 6'b000000;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:188:62  */
  assign n2338_o = $unsigned(head) < $unsigned(tail);
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:188:52  */
  assign n2339_o = n2338_o ? n2337_o : n2340_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:188:79  */
  assign n2340_o = head - tail;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:190:48  */
  assign n2343_o = fifo_fill_count == 6'b000000;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:190:27  */
  assign n2344_o = n2343_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:191:47  */
  assign n2348_o = $unsigned(fifo_fill_count) >= $unsigned(6'b111111);
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:191:26  */
  assign n2349_o = n2348_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2358_o = srg[18:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2359_o = srg[37:19]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2360_o = srg[56:38]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2361_o = srg[75:57]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2362_o = srg[94:76]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2363_o = srg[113:95]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2364_o = srg[132:114]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2365_o = srg[151:133]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2366_o = srg[170:152]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2367_o = srg[189:171]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2368_o = srg[208:190]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2369_o = srg[227:209]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2370_o = srg[246:228]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2371_o = srg[265:247]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2372_o = srg[284:266]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2373_o = srg[303:285]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2374_o = srg[322:304]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2375_o = srg[341:323]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2376_o = srg[360:342]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2377_o = srg[379:361]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2378_o = srg[398:380]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2379_o = srg[417:399]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2380_o = srg[436:418]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2381_o = srg[455:437]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2382_o = srg[474:456]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2383_o = srg[493:475]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2384_o = srg[512:494]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2385_o = srg[531:513]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2386_o = srg[550:532]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2387_o = srg[569:551]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2388_o = srg[588:570]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2389_o = srg[607:589]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2390_o = srg[626:608]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2391_o = srg[645:627]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2392_o = srg[664:646]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2393_o = srg[683:665]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2394_o = srg[702:684]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2395_o = srg[721:703]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2396_o = srg[740:722]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2397_o = srg[759:741]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2398_o = srg[778:760]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2399_o = srg[797:779]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2400_o = srg[816:798]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2401_o = srg[835:817]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2402_o = srg[854:836]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2403_o = srg[873:855]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2404_o = srg[892:874]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2405_o = srg[911:893]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2406_o = srg[930:912]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2407_o = srg[949:931]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2408_o = srg[968:950]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2409_o = srg[987:969]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2410_o = srg[1006:988]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2411_o = srg[1025:1007]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2412_o = srg[1044:1026]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2413_o = srg[1063:1045]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2414_o = srg[1082:1064]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2415_o = srg[1101:1083]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2416_o = srg[1120:1102]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2417_o = srg[1139:1121]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2418_o = srg[1158:1140]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2419_o = srg[1177:1159]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:216:29  */
  assign n2420_o = srg[1196:1178]; // extract
  assign n2421_o = {n2420_o, n2419_o, n2418_o, n2417_o, n2416_o, n2415_o, n2414_o, n2413_o, n2412_o, n2411_o, n2410_o, n2409_o, n2408_o, n2407_o, n2406_o, n2405_o, n2404_o, n2403_o, n2402_o, n2401_o, n2400_o, n2399_o, n2398_o, n2397_o, n2396_o, n2395_o, n2394_o, n2393_o, n2392_o, n2391_o, n2390_o, n2389_o, n2388_o, n2387_o, n2386_o, n2385_o, n2384_o, n2383_o, n2382_o, n2381_o, n2380_o, n2379_o, n2378_o, n2377_o, n2376_o, n2375_o, n2374_o, n2373_o, n2372_o, n2371_o, n2370_o, n2369_o, n2368_o, n2367_o, n2366_o, n2365_o, n2364_o, n2363_o, n2362_o, n2361_o, n2360_o, n2359_o, n2358_o, a_data};
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:213:7  */
  assign n2422_o = write_delayed_strb ? n2421_o : srg;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:262:49  */
  assign n2429_o = sync_read_strb[2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:262:49  */
  assign n2431_o = sync_read_strb[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:262:49  */
  assign n2433_o = sync_read_strb[0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:268:38  */
  assign n2435_o = sync_read_strb[3]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:203:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2436_q <= 1216'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    else
      n2436_q <= next_srg;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2437_q <= 6'b000000;
    else
      n2437_q <= next_head;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2438_q <= 6'b000000;
    else
      n2438_q <= next_tail;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2439_q <= 1'b0;
    else
      n2439_q <= write_strb;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2440_q <= 19'b0000000000000000000;
    else
      n2440_q <= next_a_data;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2441_q <= 19'b0000000000000000000;
    else
      n2441_q <= next_b_data;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2442_q <= 4'b0000;
    else
      n2442_q <= next_sync_read_strb;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:96:7  */
  assign n2443_o = {n2429_o, n2431_o, n2433_o, read_strb};
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:104:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2444_q <= 3'b000;
    else
      n2444_q <= next_tx_active;
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:34:17  */
  assign n2445_o = srg[18:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:33:17  */
  assign n2446_o = srg[37:19]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:31:17  */
  assign n2447_o = srg[56:38]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:30:17  */
  assign n2448_o = srg[75:57]; // extract
  assign n2449_o = srg[94:76]; // extract
  assign n2450_o = srg[113:95]; // extract
  assign n2451_o = srg[132:114]; // extract
  assign n2452_o = srg[151:133]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:254:3  */
  assign n2453_o = srg[170:152]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:24  */
  assign n2454_o = srg[189:171]; // extract
  assign n2455_o = srg[208:190]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:208:5  */
  assign n2456_o = srg[227:209]; // extract
  assign n2457_o = srg[246:228]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:199:5  */
  assign n2458_o = srg[265:247]; // extract
  assign n2459_o = srg[284:266]; // extract
  assign n2460_o = srg[303:285]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:163:9  */
  assign n2461_o = srg[322:304]; // extract
  assign n2462_o = srg[341:323]; // extract
  assign n2463_o = srg[360:342]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:146:9  */
  assign n2464_o = srg[379:361]; // extract
  assign n2465_o = srg[398:380]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:94:5  */
  assign n2466_o = srg[417:399]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:96:7  */
  assign n2467_o = srg[436:418]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:96:7  */
  assign n2468_o = srg[455:437]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:96:7  */
  assign n2469_o = srg[474:456]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:96:7  */
  assign n2470_o = srg[493:475]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:96:7  */
  assign n2471_o = srg[512:494]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:96:7  */
  assign n2472_o = srg[531:513]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:201:7  */
  assign n2473_o = srg[550:532]; // extract
  assign n2474_o = srg[569:551]; // extract
  assign n2475_o = srg[588:570]; // extract
  assign n2476_o = srg[607:589]; // extract
  assign n2477_o = srg[626:608]; // extract
  assign n2478_o = srg[645:627]; // extract
  assign n2479_o = srg[664:646]; // extract
  assign n2480_o = srg[683:665]; // extract
  assign n2481_o = srg[702:684]; // extract
  assign n2482_o = srg[721:703]; // extract
  assign n2483_o = srg[740:722]; // extract
  assign n2484_o = srg[759:741]; // extract
  assign n2485_o = srg[778:760]; // extract
  assign n2486_o = srg[797:779]; // extract
  assign n2487_o = srg[816:798]; // extract
  assign n2488_o = srg[835:817]; // extract
  assign n2489_o = srg[854:836]; // extract
  assign n2490_o = srg[873:855]; // extract
  assign n2491_o = srg[892:874]; // extract
  assign n2492_o = srg[911:893]; // extract
  assign n2493_o = srg[930:912]; // extract
  assign n2494_o = srg[949:931]; // extract
  assign n2495_o = srg[968:950]; // extract
  assign n2496_o = srg[987:969]; // extract
  assign n2497_o = srg[1006:988]; // extract
  assign n2498_o = srg[1025:1007]; // extract
  assign n2499_o = srg[1044:1026]; // extract
  assign n2500_o = srg[1063:1045]; // extract
  assign n2501_o = srg[1082:1064]; // extract
  assign n2502_o = srg[1101:1083]; // extract
  assign n2503_o = srg[1120:1102]; // extract
  assign n2504_o = srg[1139:1121]; // extract
  assign n2505_o = srg[1158:1140]; // extract
  assign n2506_o = srg[1177:1159]; // extract
  assign n2507_o = srg[1196:1178]; // extract
  assign n2508_o = srg[1215:1197]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2509_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2509_o)
      2'b00: n2510_o = n2445_o;
      2'b01: n2510_o = n2446_o;
      2'b10: n2510_o = n2447_o;
      2'b11: n2510_o = n2448_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2511_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2511_o)
      2'b00: n2512_o = n2449_o;
      2'b01: n2512_o = n2450_o;
      2'b10: n2512_o = n2451_o;
      2'b11: n2512_o = n2452_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2513_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2513_o)
      2'b00: n2514_o = n2453_o;
      2'b01: n2514_o = n2454_o;
      2'b10: n2514_o = n2455_o;
      2'b11: n2514_o = n2456_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2515_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2515_o)
      2'b00: n2516_o = n2457_o;
      2'b01: n2516_o = n2458_o;
      2'b10: n2516_o = n2459_o;
      2'b11: n2516_o = n2460_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2517_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2517_o)
      2'b00: n2518_o = n2461_o;
      2'b01: n2518_o = n2462_o;
      2'b10: n2518_o = n2463_o;
      2'b11: n2518_o = n2464_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2519_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2519_o)
      2'b00: n2520_o = n2465_o;
      2'b01: n2520_o = n2466_o;
      2'b10: n2520_o = n2467_o;
      2'b11: n2520_o = n2468_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2521_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2521_o)
      2'b00: n2522_o = n2469_o;
      2'b01: n2522_o = n2470_o;
      2'b10: n2522_o = n2471_o;
      2'b11: n2522_o = n2472_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2523_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2523_o)
      2'b00: n2524_o = n2473_o;
      2'b01: n2524_o = n2474_o;
      2'b10: n2524_o = n2475_o;
      2'b11: n2524_o = n2476_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2525_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2525_o)
      2'b00: n2526_o = n2477_o;
      2'b01: n2526_o = n2478_o;
      2'b10: n2526_o = n2479_o;
      2'b11: n2526_o = n2480_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2527_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2527_o)
      2'b00: n2528_o = n2481_o;
      2'b01: n2528_o = n2482_o;
      2'b10: n2528_o = n2483_o;
      2'b11: n2528_o = n2484_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2529_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2529_o)
      2'b00: n2530_o = n2485_o;
      2'b01: n2530_o = n2486_o;
      2'b10: n2530_o = n2487_o;
      2'b11: n2530_o = n2488_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2531_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2531_o)
      2'b00: n2532_o = n2489_o;
      2'b01: n2532_o = n2490_o;
      2'b10: n2532_o = n2491_o;
      2'b11: n2532_o = n2492_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2533_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2533_o)
      2'b00: n2534_o = n2493_o;
      2'b01: n2534_o = n2494_o;
      2'b10: n2534_o = n2495_o;
      2'b11: n2534_o = n2496_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2535_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2535_o)
      2'b00: n2536_o = n2497_o;
      2'b01: n2536_o = n2498_o;
      2'b10: n2536_o = n2499_o;
      2'b11: n2536_o = n2500_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2537_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2537_o)
      2'b00: n2538_o = n2501_o;
      2'b01: n2538_o = n2502_o;
      2'b10: n2538_o = n2503_o;
      2'b11: n2538_o = n2504_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2539_o = fifo_fill_count[1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2539_o)
      2'b00: n2540_o = n2505_o;
      2'b01: n2540_o = n2506_o;
      2'b10: n2540_o = n2507_o;
      2'b11: n2540_o = n2508_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2541_o = fifo_fill_count[3:2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2541_o)
      2'b00: n2542_o = n2510_o;
      2'b01: n2542_o = n2512_o;
      2'b10: n2542_o = n2514_o;
      2'b11: n2542_o = n2516_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2543_o = fifo_fill_count[3:2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2543_o)
      2'b00: n2544_o = n2518_o;
      2'b01: n2544_o = n2520_o;
      2'b10: n2544_o = n2522_o;
      2'b11: n2544_o = n2524_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2545_o = fifo_fill_count[3:2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2545_o)
      2'b00: n2546_o = n2526_o;
      2'b01: n2546_o = n2528_o;
      2'b10: n2546_o = n2530_o;
      2'b11: n2546_o = n2532_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2547_o = fifo_fill_count[3:2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2547_o)
      2'b00: n2548_o = n2534_o;
      2'b01: n2548_o = n2536_o;
      2'b10: n2548_o = n2538_o;
      2'b11: n2548_o = n2540_o;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  assign n2549_o = fifo_fill_count[5:4]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/spike_memory/rtl/spike_memory_ea.vhd:224:23  */
  always @*
    case (n2549_o)
      2'b00: n2550_o = n2542_o;
      2'b01: n2550_o = n2544_o;
      2'b10: n2550_o = n2546_o;
      2'b11: n2550_o = n2548_o;
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
  wire n2244_o;
  wire n2247_o;
  wire n2250_o;
  wire n2252_o;
  wire [18:0] n2253_o;
  wire n2254_o;
  wire [18:0] n2255_o;
  wire [18:0] n2256_o;
  wire [18:0] n2257_o;
  wire n2260_o;
  wire [18:0] n2263_o;
  wire n2265_o;
  reg [18:0] n2270_q;
  reg n2271_q;
  reg n2272_q;
  reg n2273_q;
  assign encoded_spike_o = encoded_spike; //(module output)
  assign encoded_spike_strb_o = encoded_spike_strb; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:40:8  */
  assign encoded_spike = n2270_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:41:8  */
  assign next_encoded_spike = n2263_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:42:8  */
  assign encoded_spike_strb = n2271_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:43:8  */
  assign next_encoded_spike_strb = n2265_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:44:8  */
  assign delayed_spike_strb = n2272_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:45:8  */
  assign next_delayed_spike_strb = n2247_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:46:8  */
  assign delayed_spike = n2273_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:47:8  */
  assign next_delayed_spike = n2250_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:78:30  */
  assign n2244_o = spike_strb_i & overflow_strb_i;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:78:5  */
  assign n2247_o = n2244_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:78:5  */
  assign n2250_o = n2244_o ? spike_i : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:86:42  */
  assign n2252_o = spike_strb_i | delayed_spike_strb;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:88:45  */
  assign n2253_o = {1'b0, curr_time_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:89:24  */
  assign n2254_o = spike_i | delayed_spike;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:92:38  */
  assign n2255_o = -n2253_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:89:7  */
  assign n2256_o = n2254_o ? n2253_o : n2255_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:86:17  */
  assign n2257_o = n2252_o ? n2256_o : encoded_spike;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:86:17  */
  assign n2260_o = n2252_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:83:5  */
  assign n2263_o = overflow_strb_i ? 19'b0000000000000000000 : n2257_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:83:5  */
  assign n2265_o = overflow_strb_i ? 1'b1 : n2260_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2270_q <= 19'b0000000000000000000;
    else
      n2270_q <= next_encoded_spike;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2271_q <= 1'b0;
    else
      n2271_q <= next_encoded_spike_strb;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2272_q <= 1'b0;
    else
      n2272_q <= next_delayed_spike_strb;
  /* ../../../vhdl/atbs_core_fixed_window/spike_encoder/rtl/spike_encoder_ea.vhd:59:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2273_q <= 1'b0;
    else
      n2273_q <= next_delayed_spike;
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
  wire n2214_o;
  wire [17:0] n2216_o;
  wire [17:0] n2218_o;
  wire n2221_o;
  reg [17:0] n2223_q;
  reg n2224_q;
  assign overflow_strb_o = overflow_strb; //(module output)
  assign curr_time_o = counter_value; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/time_measurement/rtl/time_measurement_ea.vhd:39:8  */
  assign counter_value = n2223_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/time_measurement/rtl/time_measurement_ea.vhd:40:8  */
  assign next_counter_value = n2218_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/time_measurement/rtl/time_measurement_ea.vhd:42:8  */
  assign overflow_strb = n2224_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/time_measurement/rtl/time_measurement_ea.vhd:43:8  */
  assign next_overflow_strb = n2221_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/time_measurement/rtl/time_measurement_ea.vhd:65:34  */
  assign n2214_o = counter_value == 18'b111111111111111111;
  /* ../../../vhdl/atbs_core_fixed_window/time_measurement/rtl/time_measurement_ea.vhd:69:61  */
  assign n2216_o = counter_value + 18'b000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/time_measurement/rtl/time_measurement_ea.vhd:65:17  */
  assign n2218_o = n2214_o ? 18'b000000000000000000 : n2216_o;
  /* ../../../vhdl/atbs_core_fixed_window/time_measurement/rtl/time_measurement_ea.vhd:65:17  */
  assign n2221_o = n2214_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/time_measurement/rtl/time_measurement_ea.vhd:52:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2223_q <= 18'b000000000000000000;
    else
      n2223_q <= next_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/time_measurement/rtl/time_measurement_ea.vhd:52:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2224_q <= 1'b0;
    else
      n2224_q <= next_overflow_strb;
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
  wire n2171_o;
  wire [10:0] n2173_o;
  wire [10:0] n2175_o;
  wire n2178_o;
  wire n2180_o;
  wire n2181_o;
  wire n2182_o;
  wire n2183_o;
  wire n2184_o;
  wire n2185_o;
  wire n2186_o;
  wire n2189_o;
  wire [10:0] n2190_o;
  wire [10:0] n2192_o;
  wire n2193_o;
  wire n2194_o;
  wire n2195_o;
  wire n2196_o;
  wire n2197_o;
  wire [10:0] n2199_o;
  reg [10:0] n2200_q;
  assign sc_noc_1_o = n2186_o; //(module output)
  assign sc_noc_2_o = n2197_o; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:34:8  */
  assign counter_value = n2200_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:35:8  */
  assign next_counter_value = n2175_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:56:34  */
  assign n2171_o = counter_value == period_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:59:61  */
  assign n2173_o = counter_value + 11'b00000000001;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:56:17  */
  assign n2175_o = n2171_o ? 11'b00000000000 : n2173_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:41  */
  assign n2178_o = $unsigned(counter_value) < $unsigned(duty_cycle_adj_i);
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:81  */
  assign n2180_o = duty_cycle_adj_i != 11'b00000000000;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:104  */
  assign n2181_o = counter_value == period_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:86  */
  assign n2182_o = n2181_o & n2180_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:140  */
  assign n2183_o = duty_cycle_adj_i == period_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:119  */
  assign n2184_o = n2183_o & n2182_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:60  */
  assign n2185_o = n2178_o | n2184_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:21  */
  assign n2186_o = n2185_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:42  */
  assign n2189_o = $unsigned(counter_value) > $unsigned(overlap_adj_i);
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:94  */
  assign n2190_o = overlap_adj_i + duty_cycle_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:113  */
  assign n2192_o = n2190_o - 11'b00000000001;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:76  */
  assign n2193_o = $unsigned(counter_value) <= $unsigned(n2192_o);
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:58  */
  assign n2194_o = n2193_o & n2189_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:137  */
  assign n2195_o = counter_value == overlap_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:119  */
  assign n2196_o = n2194_o | n2195_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:21  */
  assign n2197_o = n2196_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:43:17  */
  assign n2199_o = enable_i ? next_counter_value : counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:43:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2200_q <= 11'b00000000000;
    else
      n2200_q <= n2199_o;
endmodule

module sc_noc_generator_8
  (input  clock_i,
   input  reset_i,
   input  enable_i,
   input  [7:0] period_adj_i,
   input  [7:0] duty_cycle_adj_i,
   input  [7:0] overlap_adj_i,
   output sc_noc_1_o,
   output sc_noc_2_o);
  wire [7:0] counter_value;
  wire [7:0] next_counter_value;
  wire n2131_o;
  wire [7:0] n2133_o;
  wire [7:0] n2135_o;
  wire n2138_o;
  wire n2140_o;
  wire n2141_o;
  wire n2142_o;
  wire n2143_o;
  wire n2144_o;
  wire n2145_o;
  wire n2146_o;
  wire n2149_o;
  wire [7:0] n2150_o;
  wire [7:0] n2152_o;
  wire n2153_o;
  wire n2154_o;
  wire n2155_o;
  wire n2156_o;
  wire n2157_o;
  wire [7:0] n2159_o;
  reg [7:0] n2160_q;
  assign sc_noc_1_o = n2146_o; //(module output)
  assign sc_noc_2_o = n2157_o; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:34:8  */
  assign counter_value = n2160_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:35:8  */
  assign next_counter_value = n2135_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:56:34  */
  assign n2131_o = counter_value == period_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:59:61  */
  assign n2133_o = counter_value + 8'b00000001;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:56:17  */
  assign n2135_o = n2131_o ? 8'b00000000 : n2133_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:41  */
  assign n2138_o = $unsigned(counter_value) < $unsigned(duty_cycle_adj_i);
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:81  */
  assign n2140_o = duty_cycle_adj_i != 8'b00000000;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:104  */
  assign n2141_o = counter_value == period_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:86  */
  assign n2142_o = n2141_o & n2140_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:140  */
  assign n2143_o = duty_cycle_adj_i == period_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:119  */
  assign n2144_o = n2143_o & n2142_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:60  */
  assign n2145_o = n2138_o | n2144_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:65:21  */
  assign n2146_o = n2145_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:42  */
  assign n2149_o = $unsigned(counter_value) > $unsigned(overlap_adj_i);
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:94  */
  assign n2150_o = overlap_adj_i + duty_cycle_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:113  */
  assign n2152_o = n2150_o - 8'b00000001;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:76  */
  assign n2153_o = $unsigned(counter_value) <= $unsigned(n2152_o);
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:58  */
  assign n2154_o = n2153_o & n2149_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:137  */
  assign n2155_o = counter_value == overlap_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:119  */
  assign n2156_o = n2154_o | n2155_o;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:66:21  */
  assign n2157_o = n2156_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:43:17  */
  assign n2159_o = enable_i ? next_counter_value : counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/sc_noc_generator/rtl/sc_noc_generator_ea.vhd:43:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2160_q <= 8'b00000000;
    else
      n2160_q <= n2159_o;
endmodule

module analog_trig_7
  (input  clock_i,
   input  reset_i,
   input  enable_i,
   input  [6:0] period_adj_i,
   input  [6:0] duty_cycle_adj_i,
   output analog_trigger_o);
  wire [6:0] counter_value;
  wire [6:0] next_counter_value;
  wire n2102_o;
  wire [6:0] n2104_o;
  wire [6:0] n2106_o;
  wire n2109_o;
  wire n2111_o;
  wire n2112_o;
  wire n2113_o;
  wire n2114_o;
  wire n2115_o;
  wire n2116_o;
  wire n2117_o;
  wire [6:0] n2119_o;
  reg [6:0] n2120_q;
  assign analog_trigger_o = n2117_o; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:31:8  */
  assign counter_value = n2120_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:32:8  */
  assign next_counter_value = n2106_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:56:34  */
  assign n2102_o = counter_value == period_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:59:61  */
  assign n2104_o = counter_value + 7'b0000001;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:56:17  */
  assign n2106_o = n2102_o ? 7'b0000000 : n2104_o;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:47  */
  assign n2109_o = $unsigned(counter_value) < $unsigned(duty_cycle_adj_i);
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:87  */
  assign n2111_o = duty_cycle_adj_i != 7'b0000000;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:110  */
  assign n2112_o = counter_value == period_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:92  */
  assign n2113_o = n2112_o & n2111_o;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:146  */
  assign n2114_o = duty_cycle_adj_i == period_adj_i;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:125  */
  assign n2115_o = n2114_o & n2113_o;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:66  */
  assign n2116_o = n2109_o | n2115_o;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:65:27  */
  assign n2117_o = n2116_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:43:17  */
  assign n2119_o = enable_i ? next_counter_value : counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/analog_trigger/rtl/analog_trigger_ea.vhd:43:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2120_q <= 7'b0000000;
    else
      n2120_q <= n2119_o;
endmodule

module dac_control_7_7_0_8
  (input  clock_i,
   input  reset_i,
   input  enable_dac_i,
   input  clear_dac_i,
   input  adaptive_mode_i,
   input  select_tbs_delta_steps_i,
   input  direction_i,
   input  update_dac_strb_i,
   input  [6:0] delta_steps_i,
   output [6:0] dac_counter_value_o,
   output dac_finished_strb_o,
   output phi_dac_o,
   output [3:0] dac_o);
  wire state;
  wire next_state;
  wire select_dac_value;
  wire next_select_dac_value;
  wire [7:0] dac_init_value;
  wire [7:0] next_dac_init_value;
  wire [7:0] dac_counter_value;
  wire [7:0] next_dac_counter_value;
  wire dac_counter_strb;
  wire dac_change_in_progress;
  wire next_dac_change_in_progress;
  wire [2:0] settling_counter_value;
  wire [2:0] next_settling_counter_value;
  wire dac_finished_strb;
  wire phi_dac;
  wire [3:0] dac_delta_steps_thermo;
  wire [3:0] next_dac_delta_steps_thermo;
  wire n1974_o;
  wire n1976_o;
  wire n1977_o;
  wire n1979_o;
  wire n1981_o;
  wire [1:0] n1982_o;
  reg n1984_o;
  reg n1987_o;
  reg [7:0] n1989_o;
  wire n1992_o;
  wire [7:0] n1993_o;
  wire [7:0] n1994_o;
  wire n1996_o;
  wire [7:0] n1997_o;
  wire [7:0] n1998_o;
  wire n2000_o;
  wire [7:0] n2001_o;
  wire [7:0] n2002_o;
  wire [7:0] n2003_o;
  wire [7:0] n2005_o;
  wire n2006_o;
  wire n2007_o;
  wire [7:0] n2008_o;
  wire n2009_o;
  wire [7:0] n2010_o;
  wire n2011_o;
  wire [7:0] n2012_o;
  wire [7:0] n2013_o;
  wire [7:0] n2014_o;
  wire [7:0] n2016_o;
  wire [7:0] n2017_o;
  wire n2020_o;
  wire [7:0] n2021_o;
  wire n2023_o;
  wire n2025_o;
  wire n2027_o;
  wire n2028_o;
  wire n2031_o;
  wire [7:0] n2032_o;
  wire n2033_o;
  wire n2038_o;
  wire n2039_o;
  wire n2040_o;
  wire n2042_o;
  wire n2044_o;
  wire n2048_o;
  wire n2049_o;
  wire [2:0] n2051_o;
  wire [2:0] n2053_o;
  wire n2057_o;
  wire n2058_o;
  wire n2059_o;
  wire sync_chain_0_sync_o;
  wire n2062_o;
  wire n2065_o;
  wire n2067_o;
  wire n2069_o;
  wire n2071_o;
  wire [3:0] n2074_o;
  wire [3:0] n2076_o;
  wire [3:0] n2078_o;
  wire [3:0] n2080_o;
  wire [3:0] n2081_o;
  wire [6:0] n2083_o;
  wire n2084_o;
  wire n2085_o;
  reg n2086_q;
  reg n2087_q;
  reg [7:0] n2088_q;
  reg [7:0] n2089_q;
  reg n2090_q;
  reg [2:0] n2091_q;
  reg [3:0] n2092_q;
  assign dac_counter_value_o = n2083_o; //(module output)
  assign dac_finished_strb_o = dac_finished_strb; //(module output)
  assign phi_dac_o = n2085_o; //(module output)
  assign dac_o = dac_delta_steps_thermo; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:56:8  */
  assign state = n2086_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:57:8  */
  assign next_state = n1984_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:60:8  */
  assign select_dac_value = n2087_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:61:8  */
  assign next_select_dac_value = n1987_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:64:8  */
  assign dac_init_value = n2088_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:65:8  */
  assign next_dac_init_value = n1989_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:68:8  */
  assign dac_counter_value = n2089_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:69:8  */
  assign next_dac_counter_value = n2032_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:71:8  */
  assign dac_counter_strb = n2033_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:73:8  */
  assign dac_change_in_progress = n2090_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:74:8  */
  assign next_dac_change_in_progress = n2044_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:77:8  */
  assign settling_counter_value = n2091_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:78:8  */
  assign next_settling_counter_value = n2053_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:80:8  */
  assign dac_finished_strb = n2059_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:83:8  */
  assign phi_dac = n2062_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:84:8  */
  assign dac_delta_steps_thermo = n2092_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:85:8  */
  assign next_dac_delta_steps_thermo = n2081_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:143:9  */
  assign n1974_o = update_dac_strb_i ? 1'b1 : state;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:120:7  */
  assign n1976_o = state == 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:152:25  */
  assign n1977_o = ~enable_dac_i;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:152:9  */
  assign n1979_o = n1977_o ? 1'b0 : state;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:147:7  */
  assign n1981_o = state == 1'b1;
  assign n1982_o = {n1981_o, n1976_o};
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:119:5  */
  always @*
    case (n1982_o)
      2'b10: n1984_o = n1979_o;
      2'b01: n1984_o = n1974_o;
      default: n1984_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:119:5  */
  always @*
    case (n1982_o)
      2'b10: n1987_o = 1'b1;
      2'b01: n1987_o = 1'b0;
      default: n1987_o = select_dac_value;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:119:5  */
  always @*
    case (n1982_o)
      2'b10: n1989_o = dac_init_value;
      2'b01: n1989_o = 8'b01000000;
      default: n1989_o = dac_init_value;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:171:28  */
  assign n1992_o = update_dac_strb_i & direction_i;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:172:31  */
  assign n1993_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:172:31  */
  assign n1994_o = dac_counter_value + n1993_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:172:48  */
  assign n1996_o = n1994_o == 8'b01111111;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:174:34  */
  assign n1997_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:174:34  */
  assign n1998_o = dac_counter_value + n1997_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:174:51  */
  assign n2000_o = $unsigned(n1998_o) < $unsigned(8'b01111111);
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:175:55  */
  assign n2001_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:175:55  */
  assign n2002_o = dac_counter_value + n2001_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:174:9  */
  assign n2003_o = n2000_o ? n2002_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:172:9  */
  assign n2005_o = n1996_o ? 8'b01111111 : n2003_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:178:25  */
  assign n2006_o = ~direction_i;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:178:31  */
  assign n2007_o = update_dac_strb_i & n2006_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:179:30  */
  assign n2008_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:179:30  */
  assign n2009_o = $unsigned(dac_counter_value) <= $unsigned(n2008_o);
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:181:33  */
  assign n2010_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:181:33  */
  assign n2011_o = $unsigned(dac_counter_value) > $unsigned(n2010_o);
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:182:55  */
  assign n2012_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:182:55  */
  assign n2013_o = dac_counter_value - n2012_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:181:9  */
  assign n2014_o = n2011_o ? n2013_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:179:9  */
  assign n2016_o = n2009_o ? 8'b00000000 : n2014_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:178:7  */
  assign n2017_o = n2007_o ? n2016_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:178:7  */
  assign n2020_o = n2007_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:171:7  */
  assign n2021_o = n1992_o ? n2005_o : n2017_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:171:7  */
  assign n2023_o = n1992_o ? 1'b1 : n2020_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:190:16  */
  assign n2025_o = state == 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:190:42  */
  assign n2027_o = next_state == 1'b1;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:190:27  */
  assign n2028_o = n2027_o & n2025_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:190:7  */
  assign n2031_o = n2028_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:170:5  */
  assign n2032_o = select_dac_value ? n2021_o : dac_init_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:170:5  */
  assign n2033_o = select_dac_value ? n2023_o : n2031_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:204:34  */
  assign n2038_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:204:79  */
  assign n2039_o = ~dac_counter_strb;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:204:58  */
  assign n2040_o = n2039_o & n2038_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:204:5  */
  assign n2042_o = n2040_o ? 1'b0 : dac_change_in_progress;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:202:5  */
  assign n2044_o = dac_counter_strb ? 1'b1 : n2042_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:217:43  */
  assign n2048_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:217:67  */
  assign n2049_o = n2048_o | dac_counter_strb;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:220:79  */
  assign n2051_o = settling_counter_value + 3'b001;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:217:17  */
  assign n2053_o = n2049_o ? 3'b000 : n2051_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:224:57  */
  assign n2057_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:224:81  */
  assign n2058_o = dac_change_in_progress & n2057_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:224:28  */
  assign n2059_o = n2058_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:231:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(update_dac_strb_i),
    .sync_o(sync_chain_0_sync_o));
  assign n2062_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:253:24  */
  assign n2065_o = delta_steps_i == 7'b0000001;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:255:27  */
  assign n2067_o = delta_steps_i == 7'b0000010;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:257:27  */
  assign n2069_o = delta_steps_i == 7'b0000100;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:259:27  */
  assign n2071_o = delta_steps_i == 7'b0001000;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:259:7  */
  assign n2074_o = n2071_o ? 4'b0111 : 4'b1111;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:257:7  */
  assign n2076_o = n2069_o ? 4'b0011 : n2074_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:255:7  */
  assign n2078_o = n2067_o ? 4'b0001 : n2076_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:253:7  */
  assign n2080_o = n2065_o ? 4'b0000 : n2078_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:252:5  */
  assign n2081_o = update_dac_strb_i ? n2080_o : dac_delta_steps_thermo;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:270:26  */
  assign n2083_o = dac_counter_value[6:0];  // trunc
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:276:24  */
  assign n2084_o = phi_dac & enable_dac_i;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:276:41  */
  assign n2085_o = n2084_o & clear_dac_i;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2086_q <= 1'b0;
    else
      n2086_q <= next_state;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2087_q <= 1'b0;
    else
      n2087_q <= next_select_dac_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2088_q <= 8'b00000000;
    else
      n2088_q <= next_dac_init_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2089_q <= 8'b00000000;
    else
      n2089_q <= next_dac_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2090_q <= 1'b0;
    else
      n2090_q <= next_dac_change_in_progress;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2091_q <= 3'b000;
    else
      n2091_q <= next_settling_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n2092_q <= 4'b0000;
    else
      n2092_q <= next_dac_delta_steps_thermo;
endmodule

module dac_control_7_7_1_8
  (input  clock_i,
   input  reset_i,
   input  enable_dac_i,
   input  clear_dac_i,
   input  adaptive_mode_i,
   input  select_tbs_delta_steps_i,
   input  direction_i,
   input  update_dac_strb_i,
   input  [6:0] delta_steps_i,
   output [6:0] dac_counter_value_o,
   output dac_finished_strb_o,
   output phi_dac_o,
   output [3:0] dac_o);
  wire state;
  wire next_state;
  wire select_dac_value;
  wire next_select_dac_value;
  wire [7:0] dac_init_value;
  wire [7:0] next_dac_init_value;
  wire [7:0] dac_counter_value;
  wire [7:0] next_dac_counter_value;
  wire dac_counter_strb;
  wire dac_change_in_progress;
  wire next_dac_change_in_progress;
  wire [2:0] settling_counter_value;
  wire [2:0] next_settling_counter_value;
  wire dac_finished_strb;
  wire phi_dac;
  wire [3:0] dac_delta_steps_thermo;
  wire [3:0] next_dac_delta_steps_thermo;
  wire [6:0] n1817_o;
  wire [7:0] n1819_o;
  wire [7:0] n1820_o;
  wire [7:0] n1822_o;
  wire [7:0] n1824_o;
  wire n1826_o;
  wire n1828_o;
  wire n1829_o;
  wire n1831_o;
  wire n1833_o;
  wire [1:0] n1834_o;
  reg n1836_o;
  reg n1839_o;
  reg [7:0] n1840_o;
  wire n1843_o;
  wire [7:0] n1844_o;
  wire [7:0] n1845_o;
  wire n1847_o;
  wire [7:0] n1848_o;
  wire [7:0] n1849_o;
  wire n1851_o;
  wire [7:0] n1852_o;
  wire [7:0] n1853_o;
  wire [7:0] n1854_o;
  wire [7:0] n1856_o;
  wire n1857_o;
  wire n1858_o;
  wire [7:0] n1859_o;
  wire n1860_o;
  wire [7:0] n1861_o;
  wire n1862_o;
  wire [7:0] n1863_o;
  wire [7:0] n1864_o;
  wire [7:0] n1865_o;
  wire [7:0] n1867_o;
  wire [7:0] n1868_o;
  wire n1871_o;
  wire [7:0] n1872_o;
  wire n1874_o;
  wire n1876_o;
  wire n1878_o;
  wire n1879_o;
  wire n1882_o;
  wire [7:0] n1883_o;
  wire n1884_o;
  wire n1889_o;
  wire n1890_o;
  wire n1891_o;
  wire n1893_o;
  wire n1895_o;
  wire n1899_o;
  wire n1900_o;
  wire [2:0] n1902_o;
  wire [2:0] n1904_o;
  wire n1908_o;
  wire n1909_o;
  wire n1910_o;
  wire sync_chain_0_sync_o;
  wire n1913_o;
  wire n1916_o;
  wire n1918_o;
  wire n1920_o;
  wire n1922_o;
  wire [3:0] n1925_o;
  wire [3:0] n1927_o;
  wire [3:0] n1929_o;
  wire [3:0] n1931_o;
  wire [3:0] n1932_o;
  wire [6:0] n1934_o;
  wire n1935_o;
  wire n1936_o;
  reg n1937_q;
  reg n1938_q;
  reg [7:0] n1939_q;
  reg [7:0] n1940_q;
  reg n1941_q;
  reg [2:0] n1942_q;
  reg [3:0] n1943_q;
  assign dac_counter_value_o = n1934_o; //(module output)
  assign dac_finished_strb_o = dac_finished_strb; //(module output)
  assign phi_dac_o = n1936_o; //(module output)
  assign dac_o = dac_delta_steps_thermo; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:56:8  */
  assign state = n1937_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:57:8  */
  assign next_state = n1836_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:60:8  */
  assign select_dac_value = n1938_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:61:8  */
  assign next_select_dac_value = n1839_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:64:8  */
  assign dac_init_value = n1939_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:65:8  */
  assign next_dac_init_value = n1840_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:68:8  */
  assign dac_counter_value = n1940_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:69:8  */
  assign next_dac_counter_value = n1883_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:71:8  */
  assign dac_counter_strb = n1884_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:73:8  */
  assign dac_change_in_progress = n1941_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:74:8  */
  assign next_dac_change_in_progress = n1895_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:77:8  */
  assign settling_counter_value = n1942_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:78:8  */
  assign next_settling_counter_value = n1904_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:80:8  */
  assign dac_finished_strb = n1910_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:83:8  */
  assign phi_dac = n1913_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:84:8  */
  assign dac_delta_steps_thermo = n1943_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:85:8  */
  assign next_dac_delta_steps_thermo = n1932_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:130:92  */
  assign n1817_o = delta_steps_i << 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:130:90  */
  assign n1819_o = {1'b0, n1817_o};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:130:90  */
  assign n1820_o = 8'b01000000 + n1819_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:129:13  */
  assign n1822_o = select_tbs_delta_steps_i ? n1820_o : 8'b01000010;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:126:11  */
  assign n1824_o = adaptive_mode_i ? 8'b01000010 : n1822_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:143:9  */
  assign n1826_o = update_dac_strb_i ? 1'b1 : state;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:120:7  */
  assign n1828_o = state == 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:152:25  */
  assign n1829_o = ~enable_dac_i;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:152:9  */
  assign n1831_o = n1829_o ? 1'b0 : state;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:147:7  */
  assign n1833_o = state == 1'b1;
  assign n1834_o = {n1833_o, n1828_o};
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:119:5  */
  always @*
    case (n1834_o)
      2'b10: n1836_o = n1831_o;
      2'b01: n1836_o = n1826_o;
      default: n1836_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:119:5  */
  always @*
    case (n1834_o)
      2'b10: n1839_o = 1'b1;
      2'b01: n1839_o = 1'b0;
      default: n1839_o = select_dac_value;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:119:5  */
  always @*
    case (n1834_o)
      2'b10: n1840_o = dac_init_value;
      2'b01: n1840_o = n1824_o;
      default: n1840_o = dac_init_value;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:171:28  */
  assign n1843_o = update_dac_strb_i & direction_i;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:172:31  */
  assign n1844_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:172:31  */
  assign n1845_o = dac_counter_value + n1844_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:172:48  */
  assign n1847_o = n1845_o == 8'b01111111;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:174:34  */
  assign n1848_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:174:34  */
  assign n1849_o = dac_counter_value + n1848_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:174:51  */
  assign n1851_o = $unsigned(n1849_o) < $unsigned(8'b01111111);
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:175:55  */
  assign n1852_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:175:55  */
  assign n1853_o = dac_counter_value + n1852_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:174:9  */
  assign n1854_o = n1851_o ? n1853_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:172:9  */
  assign n1856_o = n1847_o ? 8'b01111111 : n1854_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:178:25  */
  assign n1857_o = ~direction_i;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:178:31  */
  assign n1858_o = update_dac_strb_i & n1857_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:179:30  */
  assign n1859_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:179:30  */
  assign n1860_o = $unsigned(dac_counter_value) <= $unsigned(n1859_o);
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:181:33  */
  assign n1861_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:181:33  */
  assign n1862_o = $unsigned(dac_counter_value) > $unsigned(n1861_o);
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:182:55  */
  assign n1863_o = {1'b0, delta_steps_i};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:182:55  */
  assign n1864_o = dac_counter_value - n1863_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:181:9  */
  assign n1865_o = n1862_o ? n1864_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:179:9  */
  assign n1867_o = n1860_o ? 8'b00000000 : n1865_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:178:7  */
  assign n1868_o = n1858_o ? n1867_o : dac_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:178:7  */
  assign n1871_o = n1858_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:171:7  */
  assign n1872_o = n1843_o ? n1856_o : n1868_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:171:7  */
  assign n1874_o = n1843_o ? 1'b1 : n1871_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:190:16  */
  assign n1876_o = state == 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:190:42  */
  assign n1878_o = next_state == 1'b1;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:190:27  */
  assign n1879_o = n1878_o & n1876_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:190:7  */
  assign n1882_o = n1879_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:170:5  */
  assign n1883_o = select_dac_value ? n1872_o : dac_init_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:170:5  */
  assign n1884_o = select_dac_value ? n1874_o : n1882_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:204:34  */
  assign n1889_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:204:79  */
  assign n1890_o = ~dac_counter_strb;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:204:58  */
  assign n1891_o = n1890_o & n1889_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:204:5  */
  assign n1893_o = n1891_o ? 1'b0 : dac_change_in_progress;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:202:5  */
  assign n1895_o = dac_counter_strb ? 1'b1 : n1893_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:217:43  */
  assign n1899_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:217:67  */
  assign n1900_o = n1899_o | dac_counter_strb;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:220:79  */
  assign n1902_o = settling_counter_value + 3'b001;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:217:17  */
  assign n1904_o = n1900_o ? 3'b000 : n1902_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:224:57  */
  assign n1908_o = settling_counter_value == 3'b111;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:224:81  */
  assign n1909_o = dac_change_in_progress & n1908_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:224:28  */
  assign n1910_o = n1909_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:231:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(update_dac_strb_i),
    .sync_o(sync_chain_0_sync_o));
  assign n1913_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:253:24  */
  assign n1916_o = delta_steps_i == 7'b0000001;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:255:27  */
  assign n1918_o = delta_steps_i == 7'b0000010;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:257:27  */
  assign n1920_o = delta_steps_i == 7'b0000100;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:259:27  */
  assign n1922_o = delta_steps_i == 7'b0001000;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:259:7  */
  assign n1925_o = n1922_o ? 4'b0111 : 4'b1111;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:257:7  */
  assign n1927_o = n1920_o ? 4'b0011 : n1925_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:255:7  */
  assign n1929_o = n1918_o ? 4'b0001 : n1927_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:253:7  */
  assign n1931_o = n1916_o ? 4'b0000 : n1929_o;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:252:5  */
  assign n1932_o = update_dac_strb_i ? n1931_o : dac_delta_steps_thermo;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:270:26  */
  assign n1934_o = dac_counter_value[6:0];  // trunc
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:276:24  */
  assign n1935_o = phi_dac & enable_dac_i;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:276:41  */
  assign n1936_o = n1935_o & clear_dac_i;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1937_q <= 1'b0;
    else
      n1937_q <= next_state;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1938_q <= 1'b0;
    else
      n1938_q <= next_select_dac_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1939_q <= 8'b00000000;
    else
      n1939_q <= next_dac_init_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1940_q <= 8'b00000000;
    else
      n1940_q <= next_dac_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1941_q <= 1'b0;
    else
      n1941_q <= next_dac_change_in_progress;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1942_q <= 3'b000;
    else
      n1942_q <= next_settling_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/dac_control/rtl/dac_control_ea.vhd:99:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1943_q <= 4'b0000;
    else
      n1943_q <= next_dac_delta_steps_thermo;
endmodule

module adaptive_threshold_control_19_18_7_7_127_0_3_2
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
   input  [6:0] max_delta_steps_i,
   output increasing_en_o,
   output decreasing_en_o,
   output direction_upper_o,
   output direction_lower_o,
   output delta_steps_upper_strb_o,
   output delta_steps_lower_strb_o,
   output [6:0] delta_steps_upper_o,
   output [6:0] delta_steps_lower_o,
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
  wire [6:0] delta_steps;
  wire [6:0] prev_delta_steps;
  wire [6:0] delta_steps_limited;
  wire [6:0] delta_steps_sum;
  wire [6:0] delta_steps_upper;
  wire [6:0] delta_steps_lower;
  wire [7:0] steps_to_upper_v;
  wire [7:0] steps_to_lower_v;
  wire [2:0] weylsd;
  wire next_adaptive_strb;
  wire next_widen_threshold_strb;
  wire next_delta_steps_strb;
  wire [7:0] next_steps_to_upper_v;
  wire [7:0] next_steps_to_lower_v;
  wire [6:0] next_delta_steps;
  wire [6:0] next_prev_delta_steps;
  wire next_is_empty_interval;
  wire [29:0] spike_shift_reg_0_spikes_o;
  wire spike_shift_reg_0_spikes_strb_o;
  wire [2:0] weyls_discrepancy_0_weylsd_o;
  wire weyls_discrepancy_0_weylsd_strb_o;
  wire n1643_o;
  wire n1645_o;
  wire n1649_o;
  wire n1651_o;
  wire n1655_o;
  wire n1656_o;
  wire n1657_o;
  wire n1658_o;
  wire n1660_o;
  wire n1661_o;
  wire n1662_o;
  wire [6:0] n1664_o;
  wire n1665_o;
  wire n1667_o;
  wire n1668_o;
  wire [6:0] n1670_o;
  wire n1673_o;
  wire [6:0] n1674_o;
  wire n1676_o;
  wire n1679_o;
  wire [6:0] n1680_o;
  wire n1682_o;
  wire n1685_o;
  wire n1689_o;
  wire [6:0] n1691_o;
  wire [6:0] n1692_o;
  wire [6:0] n1694_o;
  wire [6:0] n1696_o;
  wire [6:0] n1697_o;
  wire [6:0] n1699_o;
  wire n1701_o;
  wire [7:0] n1702_o;
  wire n1703_o;
  wire n1704_o;
  wire [6:0] n1705_o;
  wire [7:0] n1706_o;
  wire n1707_o;
  wire n1708_o;
  wire n1709_o;
  wire [6:0] n1710_o;
  wire n1712_o;
  wire n1714_o;
  wire [6:0] n1715_o;
  wire n1716_o;
  wire n1718_o;
  wire [6:0] n1719_o;
  wire n1721_o;
  wire n1723_o;
  wire [6:0] n1724_o;
  wire n1727_o;
  wire n1729_o;
  wire n1731_o;
  wire [6:0] n1732_o;
  wire [6:0] n1733_o;
  wire n1734_o;
  wire n1735_o;
  wire [6:0] n1736_o;
  wire [6:0] n1737_o;
  wire n1738_o;
  wire n1739_o;
  wire [6:0] n1740_o;
  wire [6:0] n1741_o;
  wire n1742_o;
  wire n1743_o;
  wire n1744_o;
  wire n1745_o;
  wire n1747_o;
  wire n1748_o;
  wire n1749_o;
  wire [7:0] n1751_o;
  wire [7:0] n1752_o;
  wire [7:0] n1753_o;
  wire [7:0] n1754_o;
  wire [7:0] n1755_o;
  wire [7:0] n1756_o;
  wire [7:0] n1757_o;
  wire [7:0] n1758_o;
  wire [7:0] n1759_o;
  wire [7:0] n1760_o;
  wire [7:0] n1761_o;
  wire [7:0] n1762_o;
  wire [7:0] n1764_o;
  wire [7:0] n1766_o;
  wire n1770_o;
  wire n1771_o;
  wire n1775_o;
  wire n1776_o;
  reg n1778_q;
  reg n1779_q;
  reg n1780_q;
  reg n1781_q;
  reg n1782_q;
  reg [6:0] n1783_q;
  reg [6:0] n1784_q;
  reg [7:0] n1785_q;
  reg [7:0] n1786_q;
  assign increasing_en_o = n1771_o; //(module output)
  assign decreasing_en_o = n1776_o; //(module output)
  assign direction_upper_o = direction_upper; //(module output)
  assign direction_lower_o = direction_lower; //(module output)
  assign delta_steps_upper_strb_o = delta_steps_upper_strb; //(module output)
  assign delta_steps_lower_strb_o = delta_steps_lower_strb; //(module output)
  assign delta_steps_upper_o = delta_steps_upper; //(module output)
  assign delta_steps_lower_o = delta_steps_lower; //(module output)
  assign adapt_on_overflow_strb_o = adapt_on_overflow_strb; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:65:8  */
  assign spikes = spike_shift_reg_0_spikes_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:66:8  */
  assign spikes_strb = spike_shift_reg_0_spikes_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:67:8  */
  assign weylsd_strb = weyls_discrepancy_0_weylsd_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:68:8  */
  assign reset_delta = n1721_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:69:8  */
  assign adapt_on_overflow_strb = n1656_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:70:8  */
  assign adapt_on_overflow = n1778_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:71:8  */
  assign next_adapt_on_overflow = n1651_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:72:8  */
  assign is_empty_interval = n1779_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:73:8  */
  assign start_weylsd_calc = n1658_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:74:8  */
  assign adaptive_strb = n1780_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:75:8  */
  assign adaptive_limited_strb = n1723_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:76:8  */
  assign widen_threshold_strb = n1781_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:77:8  */
  assign delta_steps_strb = n1782_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:78:8  */
  assign direction_upper = n1748_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:79:8  */
  assign direction_lower = n1749_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:81:8  */
  assign delta_steps_upper_strb = n1734_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:82:8  */
  assign delta_steps_lower_strb = n1731_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:84:8  */
  assign delta_steps = n1783_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:85:8  */
  assign prev_delta_steps = n1784_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:86:8  */
  assign delta_steps_limited = n1724_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:87:8  */
  assign delta_steps_sum = n1699_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:88:8  */
  assign delta_steps_upper = n1740_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:89:8  */
  assign delta_steps_lower = n1741_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:91:8  */
  assign steps_to_upper_v = n1785_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:92:8  */
  assign steps_to_lower_v = n1786_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:93:8  */
  assign weylsd = weyls_discrepancy_0_weylsd_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:95:8  */
  assign next_adaptive_strb = n1682_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:96:8  */
  assign next_widen_threshold_strb = n1685_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:97:8  */
  assign next_delta_steps_strb = n1689_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:98:8  */
  assign next_steps_to_upper_v = n1764_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:99:8  */
  assign next_steps_to_lower_v = n1766_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:100:8  */
  assign next_delta_steps = n1697_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:101:8  */
  assign next_prev_delta_steps = n1696_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:102:8  */
  assign next_is_empty_interval = n1645_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:133:3  */
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
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:153:3  */
  weyls_discrepancy_8_3_6 weyls_discrepancy_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .spikes_i(spikes),
    .spikes_strb_i(start_weylsd_calc),
    .weylsd_o(weyls_discrepancy_0_weylsd_o),
    .weylsd_strb_o(weyls_discrepancy_0_weylsd_strb_o));
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:177:5  */
  assign n1643_o = spike_strb_i ? 1'b0 : is_empty_interval;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:175:5  */
  assign n1645_o = overflow_strb_i ? 1'b1 : n1643_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:191:5  */
  assign n1649_o = delta_steps_strb ? 1'b0 : adapt_on_overflow;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:189:5  */
  assign n1651_o = adapt_on_overflow_strb ? 1'b1 : n1649_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:198:50  */
  assign n1655_o = delta_steps == 7'b0000001;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:198:33  */
  assign n1656_o = n1655_o ? 1'b0 : n1657_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:198:76  */
  assign n1657_o = overflow_strb_i & is_empty_interval;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:199:36  */
  assign n1658_o = spikes_strb | adapt_on_overflow_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:18  */
  assign n1660_o = $unsigned(weylsd) > $unsigned(d_max_i);
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:46  */
  assign n1661_o = $unsigned(delta_steps) < $unsigned(max_delta_steps_i);
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:29  */
  assign n1662_o = n1661_o & n1660_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:220:36  */
  assign n1664_o = delta_steps << 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:221:21  */
  assign n1665_o = $unsigned(weylsd) < $unsigned(d_min_i);
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:221:49  */
  assign n1667_o = $unsigned(delta_steps) > $unsigned(7'b0000001);
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:221:32  */
  assign n1668_o = n1667_o & n1665_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:223:36  */
  assign n1670_o = delta_steps >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:221:7  */
  assign n1673_o = n1668_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:221:7  */
  assign n1674_o = n1668_o ? n1670_o : delta_steps;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:7  */
  assign n1676_o = n1662_o ? 1'b1 : n1673_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:7  */
  assign n1679_o = n1662_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:217:7  */
  assign n1680_o = n1662_o ? n1664_o : n1674_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:213:5  */
  assign n1682_o = weylsd_strb ? n1676_o : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:213:5  */
  assign n1685_o = weylsd_strb ? n1679_o : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:213:5  */
  assign n1689_o = weylsd_strb ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:213:5  */
  assign n1691_o = weylsd_strb ? n1680_o : delta_steps;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:213:5  */
  assign n1692_o = weylsd_strb ? delta_steps : prev_delta_steps;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:227:5  */
  assign n1694_o = sync_reset_i ? 7'b0000001 : n1691_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:227:5  */
  assign n1696_o = sync_reset_i ? 7'b0000000 : n1692_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:234:5  */
  assign n1697_o = reset_delta ? prev_delta_steps : n1694_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:240:41  */
  assign n1699_o = delta_steps + prev_delta_steps;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:249:26  */
  assign n1701_o = ~adapt_on_overflow;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:30  */
  assign n1702_o = {1'b0, delta_steps};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:28  */
  assign n1703_o = $unsigned(steps_to_upper_v) < $unsigned(n1702_o);
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:72  */
  assign n1704_o = spike_i & n1703_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:252:32  */
  assign n1705_o = steps_to_upper_v[6:0];  // trunc
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:33  */
  assign n1706_o = {1'b0, delta_steps};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:31  */
  assign n1707_o = $unsigned(steps_to_lower_v) < $unsigned(n1706_o);
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:88  */
  assign n1708_o = ~spike_i;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:75  */
  assign n1709_o = n1708_o & n1707_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:257:32  */
  assign n1710_o = steps_to_lower_v[6:0];  // trunc
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:7  */
  assign n1712_o = n1709_o ? adaptive_strb : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:7  */
  assign n1714_o = n1709_o ? 1'b0 : adaptive_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:256:7  */
  assign n1715_o = n1709_o ? n1710_o : delta_steps;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:7  */
  assign n1716_o = n1704_o ? adaptive_strb : n1712_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:7  */
  assign n1718_o = n1704_o ? 1'b0 : n1714_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:251:7  */
  assign n1719_o = n1704_o ? n1705_o : n1715_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:249:5  */
  assign n1721_o = n1701_o ? n1716_o : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:249:5  */
  assign n1723_o = n1701_o ? n1718_o : adaptive_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:249:5  */
  assign n1724_o = n1701_o ? n1719_o : delta_steps;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:26  */
  assign n1727_o = ~adapt_on_overflow;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:280:11  */
  assign n1729_o = spike_i ? delta_steps_strb : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1731_o = n1743_o ? 1'b0 : delta_steps_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:287:11  */
  assign n1732_o = spike_i ? delta_steps_limited : delta_steps_sum;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:287:11  */
  assign n1733_o = spike_i ? delta_steps_sum : delta_steps_limited;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1734_o = n1742_o ? n1729_o : delta_steps_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:278:9  */
  assign n1735_o = spike_i & widen_threshold_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:278:9  */
  assign n1736_o = widen_threshold_strb ? delta_steps_limited : n1732_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:278:9  */
  assign n1737_o = widen_threshold_strb ? delta_steps_limited : n1733_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:276:7  */
  assign n1738_o = widen_threshold_strb & adaptive_limited_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:276:7  */
  assign n1739_o = n1735_o & adaptive_limited_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1740_o = n1744_o ? n1736_o : delta_steps_limited;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1741_o = n1745_o ? n1737_o : delta_steps_limited;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1742_o = n1738_o & n1727_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1743_o = n1739_o & n1727_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1744_o = adaptive_limited_strb & n1727_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:274:5  */
  assign n1745_o = adaptive_limited_strb & n1727_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:299:36  */
  assign n1747_o = ~adapt_on_overflow;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:299:31  */
  assign n1748_o = spike_i & n1747_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:300:31  */
  assign n1749_o = spike_i | adapt_on_overflow;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:314:53  */
  assign n1751_o = {1'b0, delta_steps_lower};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:314:51  */
  assign n1752_o = steps_to_lower_v + n1751_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:317:53  */
  assign n1753_o = {1'b0, delta_steps_lower};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:317:51  */
  assign n1754_o = steps_to_lower_v - n1753_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:313:7  */
  assign n1755_o = direction_lower ? n1752_o : n1754_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:312:5  */
  assign n1756_o = delta_steps_lower_strb ? n1755_o : steps_to_lower_v;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:323:53  */
  assign n1757_o = {1'b0, delta_steps_upper};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:323:51  */
  assign n1758_o = steps_to_upper_v - n1757_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:326:53  */
  assign n1759_o = {1'b0, delta_steps_upper};  //  uext
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:326:51  */
  assign n1760_o = steps_to_upper_v + n1759_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:322:7  */
  assign n1761_o = direction_upper ? n1758_o : n1760_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:321:5  */
  assign n1762_o = delta_steps_upper_strb ? n1761_o : steps_to_upper_v;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:330:5  */
  assign n1764_o = sync_reset_i ? 8'b00111101 : n1762_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:330:5  */
  assign n1766_o = sync_reset_i ? 8'b00111111 : n1756_o;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:339:48  */
  assign n1770_o = steps_to_upper_v == 8'b00000000;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:339:26  */
  assign n1771_o = n1770_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:340:48  */
  assign n1775_o = steps_to_lower_v == 8'b00000000;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:340:26  */
  assign n1776_o = n1775_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1778_q <= 1'b0;
    else
      n1778_q <= next_adapt_on_overflow;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1779_q <= 1'b0;
    else
      n1779_q <= next_is_empty_interval;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1780_q <= 1'b0;
    else
      n1780_q <= next_adaptive_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1781_q <= 1'b0;
    else
      n1781_q <= next_widen_threshold_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1782_q <= 1'b0;
    else
      n1782_q <= next_delta_steps_strb;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1783_q <= 7'b0000001;
    else
      n1783_q <= next_delta_steps;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1784_q <= 7'b0000001;
    else
      n1784_q <= next_prev_delta_steps;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1785_q <= 8'b00111101;
    else
      n1785_q <= next_steps_to_upper_v;
  /* ../../../vhdl/atbs_core_fixed_window/adaptive_threshold_control/rtl/adaptive_threshold_control_ea.vhd:118:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1786_q <= 8'b00111111;
    else
      n1786_q <= next_steps_to_lower_v;
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
  wire n1536_o;
  wire n1537_o;
  wire n1538_o;
  wire n1539_o;
  wire n1541_o;
  wire n1544_o;
  wire n1546_o;
  wire n1548_o;
  wire n1549_o;
  wire n1551_o;
  wire n1557_o;
  wire n1573_o;
  wire n1575_o;
  wire n1579_o;
  wire n1581_o;
  wire n1583_o;
  wire n1584_o;
  wire n1585_o;
  wire n1587_o;
  wire n1589_o;
  wire n1591_o;
  wire n1592_o;
  reg n1593_q;
  reg n1594_q;
  reg n1595_q;
  reg n1596_q;
  reg n1597_q;
  assign spike_o = n1591_o; //(module output)
  assign spike_strb_o = spike_strb; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:45:8  */
  assign spike = n1549_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:46:8  */
  assign hold_spike = n1593_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:47:8  */
  assign spike_strb = n1551_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:48:8  */
  assign lock_detection = n1594_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:49:8  */
  assign next_lock_detection = n1589_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:51:8  */
  assign upper_is_changing = n1595_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:52:8  */
  assign next_upper_is_changing = n1575_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:53:8  */
  assign lower_is_changing = n1596_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:54:8  */
  assign next_lower_is_changing = n1581_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:56:8  */
  assign is_changing = n1597_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:57:8  */
  assign next_is_changing = n1583_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:59:8  */
  assign is_changing_f_edge = n1585_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:84:23  */
  assign n1536_o = ~lock_detection;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:84:29  */
  assign n1537_o = detection_en_i & n1536_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:85:29  */
  assign n1538_o = increasing_en_i & comp_upper_i;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:88:32  */
  assign n1539_o = decreasing_en_i & comp_lower_i;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:88:7  */
  assign n1541_o = n1539_o ? 1'b0 : hold_spike;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:88:7  */
  assign n1544_o = n1539_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:85:7  */
  assign n1546_o = n1538_o ? 1'b1 : n1541_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:85:7  */
  assign n1548_o = n1538_o ? 1'b1 : n1544_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:84:5  */
  assign n1549_o = n1537_o ? n1546_o : hold_spike;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:84:5  */
  assign n1551_o = n1537_o ? n1548_o : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:111:9  */
  assign n1557_o = is_changing_f_edge ? 1'b0 : next_lock_detection;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:127:5  */
  assign n1573_o = stopped_changing_upper_strb_i ? 1'b0 : upper_is_changing;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:125:5  */
  assign n1575_o = change_upper_strb_i ? 1'b1 : n1573_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:140:5  */
  assign n1579_o = stopped_changing_lower_strb_i ? 1'b0 : lower_is_changing;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:138:5  */
  assign n1581_o = change_lower_strb_i ? 1'b1 : n1579_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:147:41  */
  assign n1583_o = upper_is_changing | lower_is_changing;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:148:26  */
  assign n1584_o = ~next_is_changing;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:148:48  */
  assign n1585_o = n1584_o & is_changing;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:158:25  */
  assign n1587_o = spike_strb | pause_detection_strb_i;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:158:5  */
  assign n1589_o = n1587_o ? 1'b1 : lock_detection;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:166:26  */
  assign n1591_o = spike_strb ? spike : hold_spike;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:69:17  */
  assign n1592_o = spike_strb ? spike : hold_spike;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:69:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1593_q <= 1'b0;
    else
      n1593_q <= n1592_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1594_q <= 1'b0;
    else
      n1594_q <= n1557_o;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1595_q <= 1'b0;
    else
      n1595_q <= next_upper_is_changing;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1596_q <= 1'b0;
    else
      n1596_q <= next_lower_is_changing;
  /* ../../../vhdl/atbs_core_fixed_window/spike_detector/rtl/spike_detector_ea.vhd:106:7  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1597_q <= 1'b0;
    else
      n1597_q <= next_is_changing;
endmodule

module sync_chain_2_2
  (input  clock_i,
   input  reset_i,
   input  [1:0] async_i,
   output [1:0] sync_o);
  wire [3:0] \buf ;
  wire [1:0] n1518_o;
  wire [3:0] n1519_o;
  wire [3:0] n1521_o;
  wire [1:0] n1524_o;
  reg [3:0] n1525_q;
  assign sync_o = n1524_o; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/sync_chain/rtl/sync_chain_ea.vhd:36:8  */
  assign \buf  = n1525_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/sync_chain/rtl/sync_chain_ea.vhd:49:46  */
  assign n1518_o = \buf [1:0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:81:9  */
  assign n1519_o = {n1518_o, async_i};
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:68:9  */
  assign n1521_o = {2'b00, 2'b00};
  /* ../../../vhdl/atbs_core_fixed_window/sync_chain/rtl/sync_chain_ea.vhd:56:22  */
  assign n1524_o = \buf [3:2]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/sync_chain/rtl/sync_chain_ea.vhd:47:25  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1525_q <= n1521_o;
    else
      n1525_q <= n1519_o;
endmodule

module debouncer_16_65536
  (input  clock_i,
   input  reset_i,
   input  bouncing_i,
   output debounced_o);
  wire bouncing_sync;
  wire bouncing_sync_d;
  wire bouncing_edge_r;
  wire bouncing_edge_f;
  wire reset_counter_strb;
  wire [15:0] counter_value;
  wire [15:0] next_counter_value;
  wire [1:0] state;
  wire [1:0] next_state;
  wire debounced;
  wire next_debounced;
  wire sync_chain_0_sync_o;
  wire n1436_o;
  wire n1443_o;
  wire n1444_o;
  wire n1445_o;
  wire n1446_o;
  wire n1461_o;
  wire n1462_o;
  wire [15:0] n1464_o;
  wire [15:0] n1466_o;
  wire n1471_o;
  wire [1:0] n1473_o;
  wire n1475_o;
  wire [1:0] n1477_o;
  wire n1479_o;
  wire n1481_o;
  wire n1484_o;
  wire [1:0] n1486_o;
  wire n1487_o;
  wire n1489_o;
  wire n1491_o;
  wire n1492_o;
  wire n1495_o;
  wire [1:0] n1497_o;
  wire n1498_o;
  wire n1500_o;
  wire [2:0] n1501_o;
  reg n1503_o;
  reg [1:0] n1506_o;
  reg n1507_o;
  reg n1509_q;
  reg [15:0] n1510_q;
  reg [1:0] n1511_q;
  reg n1512_q;
  assign debounced_o = debounced; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:30:8  */
  assign bouncing_sync = n1436_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:33:8  */
  assign bouncing_sync_d = n1509_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:34:8  */
  assign bouncing_edge_r = n1444_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:35:8  */
  assign bouncing_edge_f = n1446_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:38:8  */
  assign reset_counter_strb = n1503_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:39:8  */
  assign counter_value = n1510_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:40:8  */
  assign next_counter_value = n1466_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:44:8  */
  assign state = n1511_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:45:8  */
  assign next_state = n1506_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:47:8  */
  assign debounced = n1512_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:48:8  */
  assign next_debounced = n1507_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:53:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(bouncing_i),
    .sync_o(sync_chain_0_sync_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:742:34  */
  assign n1436_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:77:29  */
  assign n1443_o = ~bouncing_sync_d;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:77:50  */
  assign n1444_o = n1443_o & bouncing_sync;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:78:49  */
  assign n1445_o = ~bouncing_sync;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:78:44  */
  assign n1446_o = bouncing_sync_d & n1445_o;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:101:22  */
  assign n1461_o = counter_value == 16'b1111111111111111;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:101:42  */
  assign n1462_o = n1461_o | reset_counter_strb;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:104:61  */
  assign n1464_o = counter_value + 16'b0000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:101:5  */
  assign n1466_o = n1462_o ? 16'b0000000000000000 : n1464_o;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:124:33  */
  assign n1471_o = bouncing_edge_f ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:124:33  */
  assign n1473_o = bouncing_edge_f ? 2'b01 : state;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:121:9  */
  assign n1475_o = bouncing_edge_r ? 1'b1 : n1471_o;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:121:9  */
  assign n1477_o = bouncing_edge_r ? 2'b10 : n1473_o;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:120:25  */
  assign n1479_o = state == 2'b00;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:132:50  */
  assign n1481_o = counter_value == 16'b1111111111111111;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:133:41  */
  assign n1484_o = bouncing_sync_d ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:132:33  */
  assign n1486_o = n1481_o ? 2'b00 : state;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:132:33  */
  assign n1487_o = n1481_o ? n1484_o : debounced;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:131:25  */
  assign n1489_o = state == 2'b10;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:144:50  */
  assign n1491_o = counter_value == 16'b1111111111111111;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:145:60  */
  assign n1492_o = ~bouncing_sync_d;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:145:41  */
  assign n1495_o = n1492_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:144:33  */
  assign n1497_o = n1491_o ? 2'b00 : state;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:144:33  */
  assign n1498_o = n1491_o ? n1495_o : debounced;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:143:7  */
  assign n1500_o = state == 2'b01;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1062:9  */
  assign n1501_o = {n1500_o, n1489_o, n1479_o};
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1501_o)
      3'b100: n1503_o = 1'b0;
      3'b010: n1503_o = 1'b0;
      3'b001: n1503_o = n1475_o;
      default: n1503_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1501_o)
      3'b100: n1506_o = n1497_o;
      3'b010: n1506_o = n1486_o;
      3'b001: n1506_o = n1477_o;
      default: n1506_o = 2'b00;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:118:17  */
  always @*
    case (n1501_o)
      3'b100: n1507_o = n1498_o;
      3'b010: n1507_o = n1487_o;
      3'b001: n1507_o = debounced;
      default: n1507_o = debounced;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:72:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1509_q <= 1'b0;
    else
      n1509_q <= bouncing_sync;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1510_q <= 16'b0000000000000000;
    else
      n1510_q <= next_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1511_q <= 2'b00;
    else
      n1511_q <= next_state;
  /* ../../../vhdl/atbs_core_fixed_window/debouncer/rtl/debouncer_ea.vhd:87:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1512_q <= 1'b0;
    else
      n1512_q <= next_debounced;
endmodule

module sync_chain_2_1
  (input  clock_i,
   input  reset_i,
   input  async_i,
   output sync_o);
  wire [1:0] \buf ;
  wire n1426_o;
  wire [1:0] n1427_o;
  wire [1:0] n1429_o;
  wire n1432_o;
  reg [1:0] n1433_q;
  assign sync_o = n1432_o; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/sync_chain/rtl/sync_chain_ea.vhd:36:8  */
  assign \buf  = n1433_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/sync_chain/rtl/sync_chain_ea.vhd:49:46  */
  assign n1426_o = \buf [0]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:996:54  */
  assign n1427_o = {n1426_o, async_i};
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:972:42  */
  assign n1429_o = {1'b0, 1'b0};
  /* ../../../vhdl/atbs_core_fixed_window/sync_chain/rtl/sync_chain_ea.vhd:56:22  */
  assign n1432_o = \buf [1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/sync_chain/rtl/sync_chain_ea.vhd:47:25  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1433_q <= n1429_o;
    else
      n1433_q <= n1427_o;
endmodule

module atbs_core_fixed_window_8000000_20_800000_16_65536_2_2_127_0_2_2_3_7_18_262144_8_7_7_128_8_256_11_2048_6_19_9_417_8
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
   output phi_comp_o,
   output phi_dac_upper_o,
   output [3:0] dac_upper_o,
   output phi_dac_lower_o,
   output [3:0] dac_lower_o,
   output phi_vcm_generator_1_o,
   output phi_vcm_generator_2_o,
   output phi_bias_1_o,
   output phi_bias_2_o,
   output phi_cmfb_1_o,
   output phi_cmfb_2_o,
   output phi_res_1_o,
   output phi_res_2_o,
   output bio_amp_en_o,
   output [2:0] select_cap_o,
   output select_spdt_o,
   output idle_led_o,
   output overflow_led_o,
   output underflow_led_o,
   output spike_o,
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
  wire [6:0] tbs_delta_steps_upper;
  wire [6:0] tbs_delta_steps_lower;
  wire reset_delta_steps_strb;
  wire atbs_direction_upper;
  wire atbs_direction_lower;
  wire atbs_delta_steps_upper_strb;
  wire atbs_delta_steps_lower_strb;
  wire [6:0] atbs_delta_steps_upper;
  wire [6:0] atbs_delta_steps_lower;
  wire adapt_on_overflow_strb;
  wire clear_dac;
  wire dac_init_strb;
  wire direction_upper;
  wire update_dac_upper_strb;
  wire [6:0] dac_counter_value_upper;
  wire dac_finished_upper_strb;
  wire phi_dac_upper;
  wire [3:0] dac_upper;
  wire direction_lower;
  wire update_dac_lower_strb;
  wire [6:0] dac_counter_value_lower;
  wire dac_finished_lower_strb;
  wire phi_dac_lower;
  wire [3:0] dac_lower;
  wire delta_steps_upper_strb;
  wire delta_steps_lower_strb;
  wire [6:0] delta_steps_upper;
  wire [6:0] delta_steps_lower;
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
  wire [6:0] analog_trigger_period_adj_uart;
  wire [6:0] next_analog_trigger_period_adj_uart;
  wire sc_noc_vcm_generator_uart;
  wire next_sc_noc_vcm_generator_uart;
  wire [7:0] sc_noc_vcm_generator_period_adj_uart;
  wire [7:0] next_sc_noc_vcm_generator_period_adj_uart;
  wire [7:0] sc_noc_vcm_generator_duty_cycle_adj;
  wire [7:0] sc_noc_vcm_generator_overlap_adj;
  wire sc_noc_bias_uart;
  wire next_sc_noc_bias_uart;
  wire [7:0] sc_noc_bias_period_adj_uart;
  wire [7:0] next_sc_noc_bias_period_adj_uart;
  wire [7:0] sc_noc_bias_duty_cycle_adj;
  wire [7:0] sc_noc_bias_overlap_adj;
  wire sc_noc_cmfb_uart;
  wire next_sc_noc_cmfb_uart;
  wire [7:0] sc_noc_cmfb_period_adj_uart;
  wire [7:0] next_sc_noc_cmfb_period_adj_uart;
  wire [7:0] sc_noc_cmfb_duty_cycle_adj;
  wire [7:0] sc_noc_cmfb_overlap_adj;
  wire sc_noc_res_uart;
  wire next_sc_noc_res_uart;
  wire [10:0] sc_noc_res_period_adj_uart;
  wire [10:0] next_sc_noc_res_period_adj_uart;
  wire [10:0] sc_noc_res_duty_cycle_adj;
  wire [10:0] sc_noc_res_overlap_adj;
  wire select_cap_uart;
  wire next_select_cap_uart;
  wire [2:0] select_cap_adj_uart;
  wire [2:0] next_select_cap_adj_uart;
  wire baudrate_uart;
  wire next_baudrate_uart;
  wire [8:0] baudrate_adj_uart;
  wire [8:0] next_baudrate_adj_uart;
  wire tbs_virtual_delta_steps_uart;
  wire next_tbs_virtual_delta_steps_uart;
  wire [6:0] next_tbs_virtual_delta_steps_adj_uart;
  wire [6:0] tbs_virtual_delta_steps_adj_uart;
  wire atbs_win_length_uart;
  wire next_atbs_win_length_uart;
  wire [18:0] atbs_win_length_adj_uart;
  wire [18:0] next_atbs_win_length_adj_uart;
  wire atbs_max_delta_steps_uart;
  wire next_atbs_max_delta_steps_uart;
  wire [6:0] atbs_max_delta_steps_adj_uart;
  wire [6:0] next_atbs_max_delta_steps_adj_uart;
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
  wire phi_vcm_generator_1;
  wire phi_vcm_generator_2;
  wire phi_bias_1;
  wire phi_bias_2;
  wire phi_cmfb_1;
  wire phi_cmfb_2;
  wire phi_res_1;
  wire phi_res_2;
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
  localparam n64_o = 1'b1;
  wire n66_o;
  wire n67_o;
  wire n68_o;
  wire n69_o;
  wire n70_o;
  wire sync_chain_2_sync_o;
  wire n72_o;
  wire debouncer_0_debounced_o;
  wire debouncer_1_debounced_o;
  wire debouncer_2_debounced_o;
  wire debouncer_3_debounced_o;
  wire debouncer_4_debounced_o;
  wire debouncer_5_debounced_o;
  wire n100_o;
  wire n101_o;
  wire n102_o;
  wire n103_o;
  wire n104_o;
  wire n105_o;
  wire n106_o;
  wire n107_o;
  wire n108_o;
  wire n109_o;
  wire n110_o;
  wire n111_o;
  wire n112_o;
  wire n113_o;
  wire n114_o;
  wire n115_o;
  wire n116_o;
  wire n117_o;
  wire n118_o;
  wire n119_o;
  wire n120_o;
  wire n121_o;
  wire n123_o;
  wire n124_o;
  wire n125_o;
  wire n126_o;
  wire n127_o;
  wire n128_o;
  wire n129_o;
  wire n130_o;
  wire n131_o;
  wire n132_o;
  wire [1:0] sync_chain_1_sync_o;
  wire [1:0] n134_o;
  wire n136_o;
  wire n137_o;
  wire spike_detector_0_spike_o;
  wire spike_detector_0_spike_strb_o;
  wire adaptive_ctrl_0_increasing_en_o;
  wire adaptive_ctrl_0_decreasing_en_o;
  wire adaptive_ctrl_0_direction_upper_o;
  wire adaptive_ctrl_0_direction_lower_o;
  wire adaptive_ctrl_0_delta_steps_upper_strb_o;
  wire adaptive_ctrl_0_delta_steps_lower_strb_o;
  wire [6:0] adaptive_ctrl_0_delta_steps_upper_o;
  wire [6:0] adaptive_ctrl_0_delta_steps_lower_o;
  wire adaptive_ctrl_0_adapt_on_overflow_strb_o;
  localparam [2:0] n140_o = 3'b010;
  localparam [2:0] n141_o = 3'b010;
  wire [6:0] dac_control_0_dac_counter_value_o;
  wire dac_control_0_dac_finished_strb_o;
  wire dac_control_0_phi_dac_o;
  wire [3:0] dac_control_0_dac_o;
  wire n155_o;
  wire [6:0] dac_control_1_dac_counter_value_o;
  wire dac_control_1_dac_finished_strb_o;
  wire dac_control_1_phi_dac_o;
  wire [3:0] dac_control_1_dac_o;
  wire n160_o;
  wire [6:0] n172_o;
  wire n173_o;
  wire n175_o;
  wire n176_o;
  wire n179_o;
  wire n182_o;
  wire n184_o;
  wire n187_o;
  wire [6:0] n189_o;
  wire [6:0] n191_o;
  wire [6:0] n193_o;
  wire [6:0] n194_o;
  wire n195_o;
  wire n196_o;
  wire n197_o;
  wire n198_o;
  wire n199_o;
  wire n201_o;
  wire n202_o;
  wire analog_trigger_0_analog_trigger_o;
  localparam [6:0] n203_o = 7'b0000001;
  wire [7:0] n206_o;
  wire [7:0] n208_o;
  wire [7:0] n210_o;
  wire sc_noc_generator_0_sc_noc_1_o;
  wire sc_noc_generator_0_sc_noc_2_o;
  wire [7:0] n214_o;
  wire [7:0] n216_o;
  wire [7:0] n218_o;
  wire sc_noc_generator_1_sc_noc_1_o;
  wire sc_noc_generator_1_sc_noc_2_o;
  wire [7:0] n222_o;
  wire [7:0] n224_o;
  wire [7:0] n226_o;
  wire sc_noc_generator_2_sc_noc_1_o;
  wire sc_noc_generator_2_sc_noc_2_o;
  wire [10:0] n230_o;
  wire [10:0] n232_o;
  wire [10:0] n234_o;
  wire sc_noc_generator_3_sc_noc_1_o;
  wire sc_noc_generator_3_sc_noc_2_o;
  wire n237_o;
  wire n238_o;
  wire time_measurement_0_overflow_strb_o;
  wire [17:0] time_measurement_0_curr_time_o;
  wire [18:0] spike_encoder_0_encoded_spike_o;
  wire spike_encoder_0_encoded_spike_strb_o;
  wire n243_o;
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
  wire n263_o;
  wire n264_o;
  wire [19:0] n266_o;
  wire [19:0] n268_o;
  wire n299_o;
  wire [2:0] n302_o;
  wire n304_o;
  wire n306_o;
  wire n308_o;
  wire n310_o;
  wire n312_o;
  wire n315_o;
  wire n318_o;
  wire [2:0] n321_o;
  wire n323_o;
  wire n325_o;
  wire n327_o;
  wire n329_o;
  wire [2:0] n332_o;
  wire n334_o;
  wire n336_o;
  wire n337_o;
  wire n338_o;
  wire n339_o;
  wire n340_o;
  wire n341_o;
  wire n344_o;
  wire [2:0] n347_o;
  wire n349_o;
  wire [2:0] n351_o;
  wire n353_o;
  wire n356_o;
  wire n359_o;
  wire n361_o;
  wire [2:0] n363_o;
  wire n364_o;
  wire n366_o;
  wire n368_o;
  wire n370_o;
  wire [2:0] n373_o;
  wire n375_o;
  wire n377_o;
  wire n378_o;
  wire n379_o;
  wire n380_o;
  wire n383_o;
  wire n386_o;
  wire n389_o;
  wire [2:0] n392_o;
  wire n394_o;
  wire n396_o;
  wire n398_o;
  wire n401_o;
  wire n404_o;
  wire n406_o;
  wire n407_o;
  wire n410_o;
  wire n412_o;
  wire n413_o;
  wire n414_o;
  wire [2:0] n417_o;
  wire n419_o;
  wire n422_o;
  wire n425_o;
  wire [2:0] n427_o;
  wire n428_o;
  wire n430_o;
  wire [7:0] n431_o;
  reg n433_o;
  reg n436_o;
  reg n439_o;
  reg n442_o;
  reg n445_o;
  reg n449_o;
  reg [2:0] n453_o;
  reg n454_o;
  reg n456_o;
  reg n458_o;
  reg n461_o;
  reg n462_o;
  reg n465_o;
  reg n467_o;
  wire n549_o;
  wire n551_o;
  wire n553_o;
  wire n555_o;
  wire n557_o;
  wire [6:0] n559_o;
  wire [6:0] n561_o;
  wire [6:0] n563_o;
  wire [6:0] n565_o;
  wire [6:0] n567_o;
  wire n569_o;
  wire n571_o;
  wire n573_o;
  wire [7:0] n575_o;
  wire [7:0] n577_o;
  wire [7:0] n579_o;
  wire n581_o;
  wire n583_o;
  wire n585_o;
  wire [7:0] n587_o;
  wire [7:0] n589_o;
  wire [7:0] n591_o;
  wire n593_o;
  wire n595_o;
  wire n597_o;
  wire [7:0] n599_o;
  wire [7:0] n601_o;
  wire [7:0] n603_o;
  wire n605_o;
  wire n607_o;
  wire [10:0] n609_o;
  wire [10:0] n611_o;
  wire n613_o;
  wire n615_o;
  wire n617_o;
  wire n619_o;
  wire [2:0] n621_o;
  wire [2:0] n623_o;
  wire [2:0] n625_o;
  wire [2:0] n627_o;
  wire n629_o;
  wire n631_o;
  wire n633_o;
  wire n635_o;
  wire [8:0] n637_o;
  wire [8:0] n639_o;
  wire [8:0] n641_o;
  wire [8:0] n643_o;
  wire n645_o;
  wire n647_o;
  wire n649_o;
  wire n651_o;
  wire [6:0] n653_o;
  wire [6:0] n655_o;
  wire [6:0] n657_o;
  wire [6:0] n659_o;
  wire n661_o;
  wire n663_o;
  wire n665_o;
  wire n667_o;
  wire n669_o;
  wire n671_o;
  wire [18:0] n673_o;
  wire [18:0] n675_o;
  wire [18:0] n677_o;
  wire [18:0] n679_o;
  wire [18:0] n681_o;
  wire [18:0] n683_o;
  wire n685_o;
  wire n687_o;
  wire n689_o;
  wire n691_o;
  wire [6:0] n693_o;
  wire [6:0] n695_o;
  wire [6:0] n697_o;
  wire [6:0] n699_o;
  wire n701_o;
  wire n703_o;
  wire n705_o;
  wire n707_o;
  wire n709_o;
  wire n711_o;
  wire n713_o;
  wire n715_o;
  wire n717_o;
  wire n719_o;
  wire n721_o;
  wire n723_o;
  wire n725_o;
  wire n727_o;
  wire n729_o;
  wire n731_o;
  wire n733_o;
  wire n735_o;
  wire n737_o;
  wire n739_o;
  wire n741_o;
  wire n743_o;
  wire n745_o;
  wire n747_o;
  wire n749_o;
  wire n750_o;
  wire n752_o;
  wire n753_o;
  wire n754_o;
  wire n756_o;
  wire n757_o;
  wire n758_o;
  wire n759_o;
  wire n761_o;
  wire n762_o;
  wire n763_o;
  wire n764_o;
  wire n765_o;
  wire n767_o;
  wire n768_o;
  wire n769_o;
  wire n770_o;
  wire n771_o;
  wire n772_o;
  wire n774_o;
  wire n775_o;
  wire n776_o;
  wire n777_o;
  wire n778_o;
  wire n779_o;
  wire n780_o;
  wire n782_o;
  wire n783_o;
  wire n784_o;
  wire n785_o;
  wire n786_o;
  wire n787_o;
  wire n788_o;
  wire n789_o;
  wire n791_o;
  wire n792_o;
  wire n793_o;
  wire n794_o;
  wire n795_o;
  wire n796_o;
  wire n797_o;
  wire n798_o;
  wire n799_o;
  wire n801_o;
  wire n802_o;
  wire n803_o;
  wire n804_o;
  wire n805_o;
  wire n806_o;
  wire n807_o;
  wire n808_o;
  wire n809_o;
  wire n810_o;
  wire n813_o;
  wire n814_o;
  wire n815_o;
  wire n816_o;
  wire n817_o;
  wire n818_o;
  wire n819_o;
  wire n820_o;
  wire n821_o;
  wire n822_o;
  wire n823_o;
  wire n825_o;
  wire n826_o;
  wire n827_o;
  wire n828_o;
  wire n829_o;
  wire n830_o;
  wire n831_o;
  wire n832_o;
  wire n833_o;
  wire n834_o;
  wire n835_o;
  wire n838_o;
  wire n841_o;
  wire n843_o;
  wire n844_o;
  wire n845_o;
  wire n846_o;
  wire n847_o;
  wire n848_o;
  wire n849_o;
  wire n850_o;
  wire n851_o;
  wire n852_o;
  wire n853_o;
  wire n855_o;
  wire n857_o;
  wire n859_o;
  wire n860_o;
  wire n861_o;
  wire n862_o;
  wire n863_o;
  wire n864_o;
  wire n865_o;
  wire n866_o;
  wire n867_o;
  wire n868_o;
  wire n869_o;
  wire n871_o;
  wire n873_o;
  wire n875_o;
  wire n877_o;
  wire n878_o;
  wire n879_o;
  wire n880_o;
  wire n881_o;
  wire n882_o;
  wire n883_o;
  wire n884_o;
  wire n885_o;
  wire n886_o;
  wire n887_o;
  wire n889_o;
  wire n891_o;
  wire n893_o;
  wire n895_o;
  wire n896_o;
  wire n897_o;
  wire n898_o;
  wire n899_o;
  wire n900_o;
  wire n901_o;
  wire n902_o;
  wire n903_o;
  wire n904_o;
  wire n905_o;
  wire n907_o;
  wire n908_o;
  wire n910_o;
  wire n912_o;
  wire n914_o;
  wire n915_o;
  wire n916_o;
  wire n917_o;
  wire n918_o;
  wire n919_o;
  wire n920_o;
  wire n921_o;
  wire n922_o;
  wire n923_o;
  wire n924_o;
  wire n926_o;
  wire n927_o;
  wire n929_o;
  wire n931_o;
  wire n933_o;
  wire n934_o;
  wire n935_o;
  wire n936_o;
  wire n937_o;
  wire n938_o;
  wire n939_o;
  wire n940_o;
  wire n941_o;
  wire n942_o;
  wire n943_o;
  wire n945_o;
  wire n946_o;
  wire n947_o;
  wire n949_o;
  wire n951_o;
  wire n953_o;
  wire n954_o;
  wire n955_o;
  wire n956_o;
  wire n957_o;
  wire n958_o;
  wire n959_o;
  wire n960_o;
  wire n961_o;
  wire n962_o;
  wire n963_o;
  wire n965_o;
  wire n966_o;
  wire n967_o;
  wire n969_o;
  wire n971_o;
  wire n973_o;
  wire n974_o;
  wire n975_o;
  wire n976_o;
  wire n977_o;
  wire n978_o;
  wire n979_o;
  wire n980_o;
  wire n981_o;
  wire n982_o;
  wire n983_o;
  wire n985_o;
  wire n986_o;
  wire n987_o;
  wire n988_o;
  wire n990_o;
  wire n992_o;
  wire n994_o;
  wire n995_o;
  wire n996_o;
  wire n997_o;
  wire n998_o;
  wire n999_o;
  wire n1000_o;
  wire n1001_o;
  wire n1002_o;
  wire n1003_o;
  wire n1004_o;
  wire n1006_o;
  wire n1007_o;
  wire n1008_o;
  wire n1009_o;
  wire n1011_o;
  wire n1013_o;
  wire n1015_o;
  wire n1016_o;
  wire n1017_o;
  wire n1018_o;
  wire n1019_o;
  wire n1020_o;
  wire n1021_o;
  wire n1022_o;
  wire n1023_o;
  wire n1024_o;
  wire n1025_o;
  wire n1027_o;
  wire n1028_o;
  wire n1029_o;
  wire n1030_o;
  wire n1031_o;
  wire n1033_o;
  wire n1035_o;
  wire n1037_o;
  wire n1038_o;
  wire n1039_o;
  wire n1040_o;
  wire n1041_o;
  wire n1042_o;
  wire n1043_o;
  wire n1044_o;
  wire n1045_o;
  wire n1046_o;
  wire n1047_o;
  wire n1049_o;
  wire n1050_o;
  wire n1051_o;
  wire n1052_o;
  wire n1053_o;
  wire n1055_o;
  wire n1057_o;
  wire n1059_o;
  wire n1060_o;
  wire n1061_o;
  wire n1062_o;
  wire n1063_o;
  wire n1064_o;
  wire n1065_o;
  wire n1066_o;
  wire n1067_o;
  wire n1068_o;
  wire n1070_o;
  wire [6:0] n1071_o;
  wire n1072_o;
  wire n1073_o;
  wire n1074_o;
  wire n1075_o;
  wire n1076_o;
  wire n1078_o;
  wire n1080_o;
  wire n1082_o;
  wire n1083_o;
  wire n1084_o;
  wire n1085_o;
  wire n1086_o;
  wire n1087_o;
  wire n1088_o;
  wire n1089_o;
  wire n1090_o;
  wire n1092_o;
  wire [18:0] n1093_o;
  wire n1094_o;
  wire [6:0] n1095_o;
  wire n1096_o;
  wire n1097_o;
  wire n1098_o;
  wire n1099_o;
  wire n1100_o;
  wire n1102_o;
  wire n1104_o;
  wire n1106_o;
  wire n1107_o;
  wire n1108_o;
  wire n1109_o;
  wire n1110_o;
  wire n1111_o;
  wire n1112_o;
  wire n1113_o;
  wire n1115_o;
  wire [6:0] n1116_o;
  wire n1117_o;
  wire [18:0] n1118_o;
  wire n1119_o;
  wire [6:0] n1120_o;
  wire n1121_o;
  wire n1122_o;
  wire n1123_o;
  wire n1124_o;
  wire n1125_o;
  wire n1127_o;
  wire n1129_o;
  wire n1131_o;
  wire n1132_o;
  wire n1133_o;
  wire n1134_o;
  wire n1135_o;
  wire n1136_o;
  wire n1137_o;
  wire n1139_o;
  wire [8:0] n1140_o;
  wire n1141_o;
  wire [6:0] n1142_o;
  wire n1143_o;
  wire [18:0] n1144_o;
  wire n1145_o;
  wire [6:0] n1146_o;
  wire n1147_o;
  wire n1148_o;
  wire n1149_o;
  wire n1150_o;
  wire n1151_o;
  wire n1153_o;
  wire n1155_o;
  wire n1157_o;
  wire n1158_o;
  wire n1159_o;
  wire n1160_o;
  wire n1161_o;
  wire n1162_o;
  wire n1164_o;
  wire [2:0] n1165_o;
  wire n1166_o;
  wire [8:0] n1167_o;
  wire n1168_o;
  wire [6:0] n1169_o;
  wire n1170_o;
  wire [18:0] n1171_o;
  wire n1172_o;
  wire [6:0] n1173_o;
  wire n1174_o;
  wire n1175_o;
  wire n1176_o;
  wire n1177_o;
  wire n1178_o;
  wire n1180_o;
  wire n1182_o;
  wire n1184_o;
  wire n1185_o;
  wire n1186_o;
  wire n1187_o;
  wire n1188_o;
  wire n1190_o;
  wire [10:0] n1191_o;
  wire n1192_o;
  wire [2:0] n1193_o;
  wire n1194_o;
  wire [8:0] n1195_o;
  wire n1196_o;
  wire [6:0] n1197_o;
  wire n1198_o;
  wire [18:0] n1199_o;
  wire n1200_o;
  wire [6:0] n1201_o;
  wire n1202_o;
  wire n1203_o;
  wire n1204_o;
  wire n1205_o;
  wire n1206_o;
  wire n1208_o;
  wire n1210_o;
  wire n1212_o;
  wire n1213_o;
  wire n1214_o;
  wire n1215_o;
  wire n1217_o;
  wire [7:0] n1218_o;
  wire n1219_o;
  wire [10:0] n1220_o;
  wire n1221_o;
  wire [2:0] n1222_o;
  wire n1223_o;
  wire [8:0] n1224_o;
  wire n1225_o;
  wire [6:0] n1226_o;
  wire n1227_o;
  wire [18:0] n1228_o;
  wire n1229_o;
  wire [6:0] n1230_o;
  wire n1231_o;
  wire n1232_o;
  wire n1233_o;
  wire n1234_o;
  wire n1235_o;
  wire n1237_o;
  wire n1239_o;
  wire n1241_o;
  wire n1242_o;
  wire n1243_o;
  wire n1245_o;
  wire [7:0] n1246_o;
  wire n1247_o;
  wire [7:0] n1248_o;
  wire n1249_o;
  wire [10:0] n1250_o;
  wire n1251_o;
  wire [2:0] n1252_o;
  wire n1253_o;
  wire [8:0] n1254_o;
  wire n1255_o;
  wire [6:0] n1256_o;
  wire n1257_o;
  wire [18:0] n1258_o;
  wire n1259_o;
  wire [6:0] n1260_o;
  wire n1261_o;
  wire n1262_o;
  wire n1263_o;
  wire n1264_o;
  wire n1265_o;
  wire n1267_o;
  wire n1269_o;
  wire n1271_o;
  wire n1272_o;
  wire n1274_o;
  wire [7:0] n1275_o;
  wire n1276_o;
  wire [7:0] n1277_o;
  wire n1278_o;
  wire [7:0] n1279_o;
  wire n1280_o;
  wire [10:0] n1281_o;
  wire n1282_o;
  wire [2:0] n1283_o;
  wire n1284_o;
  wire [8:0] n1285_o;
  wire n1286_o;
  wire [6:0] n1287_o;
  wire n1288_o;
  wire [18:0] n1289_o;
  wire n1290_o;
  wire [6:0] n1291_o;
  wire n1292_o;
  wire n1293_o;
  wire n1294_o;
  wire n1295_o;
  wire n1296_o;
  wire n1298_o;
  wire n1300_o;
  wire n1302_o;
  wire n1304_o;
  wire [6:0] n1305_o;
  wire n1306_o;
  wire [7:0] n1307_o;
  wire n1308_o;
  wire [7:0] n1309_o;
  wire n1310_o;
  wire [7:0] n1311_o;
  wire n1312_o;
  wire [10:0] n1313_o;
  wire n1314_o;
  wire [2:0] n1315_o;
  wire n1316_o;
  wire [8:0] n1317_o;
  wire n1318_o;
  wire [6:0] n1319_o;
  wire n1320_o;
  wire [18:0] n1321_o;
  wire n1322_o;
  wire [6:0] n1323_o;
  wire n1324_o;
  wire n1325_o;
  wire n1326_o;
  wire n1327_o;
  wire n1328_o;
  wire n1330_o;
  wire n1332_o;
  wire n1335_o;
  wire n1337_o;
  wire n1338_o;
  wire n1339_o;
  wire [7:0] n1340_o;
  wire n1341_o;
  wire [7:0] n1342_o;
  wire n1343_o;
  wire [7:0] n1344_o;
  wire n1345_o;
  wire [10:0] n1346_o;
  wire n1347_o;
  wire [2:0] n1348_o;
  wire n1349_o;
  wire [8:0] n1350_o;
  wire n1351_o;
  wire [6:0] n1352_o;
  wire n1353_o;
  wire [18:0] n1354_o;
  wire n1355_o;
  wire [6:0] n1356_o;
  wire n1357_o;
  wire n1358_o;
  wire n1359_o;
  wire n1360_o;
  wire n1361_o;
  wire n1363_o;
  wire n1366_o;
  wire n1367_o;
  wire n1368_o;
  wire n1369_o;
  wire n1370_o;
  wire n1371_o;
  wire n1372_o;
  wire n1373_o;
  wire n1374_o;
  wire n1375_o;
  wire [2:0] n1376_o;
  wire n1378_o;
  reg n1379_q;
  reg n1380_q;
  reg n1381_q;
  reg n1382_q;
  reg n1383_q;
  reg n1384_q;
  reg n1385_q;
  reg n1386_q;
  reg n1387_q;
  reg n1388_q;
  reg n1389_q;
  reg n1390_q;
  reg n1391_q;
  reg [6:0] n1392_q;
  reg n1393_q;
  reg [7:0] n1394_q;
  reg n1395_q;
  reg [7:0] n1396_q;
  reg n1397_q;
  reg [7:0] n1398_q;
  reg n1399_q;
  reg [10:0] n1400_q;
  reg n1401_q;
  reg [2:0] n1402_q;
  reg n1403_q;
  reg [8:0] n1404_q;
  reg n1405_q;
  reg [6:0] n1406_q;
  reg n1407_q;
  reg [18:0] n1408_q;
  reg n1409_q;
  reg [6:0] n1410_q;
  reg [19:0] n1411_q;
  reg [2:0] n1412_q;
  reg n1413_q;
  reg n1414_q;
  reg n1415_q;
  reg n1416_q;
  reg n1417_q;
  reg n1418_q;
  reg n1419_q;
  reg n1420_q;
  assign phi_comp_o = analog_trigger; //(module output)
  assign phi_dac_upper_o = phi_dac_upper; //(module output)
  assign dac_upper_o = dac_upper; //(module output)
  assign phi_dac_lower_o = phi_dac_lower; //(module output)
  assign dac_lower_o = dac_lower; //(module output)
  assign phi_vcm_generator_1_o = phi_vcm_generator_1; //(module output)
  assign phi_vcm_generator_2_o = phi_vcm_generator_2; //(module output)
  assign phi_bias_1_o = phi_bias_1; //(module output)
  assign phi_bias_2_o = phi_bias_2; //(module output)
  assign phi_cmfb_1_o = phi_cmfb_1; //(module output)
  assign phi_cmfb_2_o = phi_cmfb_2; //(module output)
  assign phi_res_1_o = phi_res_1; //(module output)
  assign phi_res_2_o = phi_res_2; //(module output)
  assign bio_amp_en_o = enable_analog; //(module output)
  assign select_cap_o = n1376_o; //(module output)
  assign select_spdt_o = n1378_o; //(module output)
  assign idle_led_o = idle_led; //(module output)
  assign overflow_led_o = overflow_led; //(module output)
  assign underflow_led_o = underflow_led; //(module output)
  assign spike_o = spike; //(module output)
  assign uart_tx_o = uart_tx; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:176:8  */
  assign reset_i = n68_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:177:8  */
  assign reset_sync = n66_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:178:8  */
  assign reset_entity = n70_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:181:8  */
  assign trigger_start_sampling_sync = n72_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:184:8  */
  assign trigger_start_mode_debounced = debouncer_0_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:185:8  */
  assign adaptive_mode_debounced = debouncer_1_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:186:8  */
  assign control_mode_debounced = debouncer_2_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:187:8  */
  assign signal_select_in_debounced = debouncer_3_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:188:8  */
  assign enable_debounced = debouncer_4_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:189:8  */
  assign select_tbs_delta_steps_debounced = debouncer_5_debounced_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:192:8  */
  assign adaptive_mode_d = n1379_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:193:8  */
  assign control_mode_d = n1380_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:194:8  */
  assign signal_select_in_d = n1381_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:195:8  */
  assign select_tbs_delta_steps_d = n1382_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:196:8  */
  assign trigger_start_mode_d = n1383_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:197:8  */
  assign trigger_start_sampling_d = n1384_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:199:8  */
  assign adaptive_mode_edge_f = n107_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:200:8  */
  assign adaptive_mode_edge_r = n109_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:201:8  */
  assign control_mode_edge_f = n111_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:202:8  */
  assign control_mode_edge_r = n113_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:203:8  */
  assign select_tbs_delta_steps_edge_f = n119_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:204:8  */
  assign select_tbs_delta_steps_edge_r = n121_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:205:8  */
  assign signal_select_in_edge_f = n115_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:206:8  */
  assign signal_select_in_edge_r = n117_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:207:8  */
  assign trigger_start_mode_edge_f = n103_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:208:8  */
  assign trigger_start_mode_edge_r = n105_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:209:8  */
  assign trigger_start_sampling_edge_r = n101_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:212:8  */
  assign input_changed_strb = n132_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:213:8  */
  assign input_changed_reset_strb = n433_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:215:8  */
  assign uart_changed_strb = n1332_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:216:8  */
  assign uart_changed_reset_strb = n436_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:221:8  */
  assign comp_upper_sync = n136_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:222:8  */
  assign comp_lower_sync = n137_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:225:8  */
  assign spike = spike_detector_0_spike_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:226:8  */
  assign spike_strb = spike_detector_0_spike_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:227:8  */
  assign detection_en = n1385_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:228:8  */
  assign pause_detection_strb = n199_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:231:8  */
  assign increasing_en = n201_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:232:8  */
  assign decreasing_en = n202_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:233:8  */
  assign next_tbs_increasing_en = n179_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:234:8  */
  assign next_tbs_decreasing_en = n187_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:235:8  */
  assign tbs_increasing_en = n1386_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:236:8  */
  assign tbs_decreasing_en = n1387_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:237:8  */
  assign atbs_increasing_en = adaptive_ctrl_0_increasing_en_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:238:8  */
  assign atbs_decreasing_en = adaptive_ctrl_0_decreasing_en_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:241:8  */
  assign tbs_delta_steps_upper = n189_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:242:8  */
  assign tbs_delta_steps_lower = n191_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:245:8  */
  assign reset_delta_steps_strb = n439_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:246:8  */
  assign atbs_direction_upper = adaptive_ctrl_0_direction_upper_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:247:8  */
  assign atbs_direction_lower = adaptive_ctrl_0_direction_lower_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:248:8  */
  assign atbs_delta_steps_upper_strb = adaptive_ctrl_0_delta_steps_upper_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:249:8  */
  assign atbs_delta_steps_lower_strb = adaptive_ctrl_0_delta_steps_lower_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:250:8  */
  assign atbs_delta_steps_upper = adaptive_ctrl_0_delta_steps_upper_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:251:8  */
  assign atbs_delta_steps_lower = adaptive_ctrl_0_delta_steps_lower_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:252:8  */
  assign adapt_on_overflow_strb = adaptive_ctrl_0_adapt_on_overflow_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:255:8  */
  assign clear_dac = n1388_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:256:8  */
  assign dac_init_strb = n442_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:258:8  */
  assign direction_upper = n197_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:259:8  */
  assign update_dac_upper_strb = n155_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:260:8  */
  assign dac_counter_value_upper = dac_control_0_dac_counter_value_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:261:8  */
  assign dac_finished_upper_strb = dac_control_0_dac_finished_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:262:8  */
  assign phi_dac_upper = dac_control_0_phi_dac_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:263:8  */
  assign dac_upper = dac_control_0_dac_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:265:8  */
  assign direction_lower = n198_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:266:8  */
  assign update_dac_lower_strb = n160_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:267:8  */
  assign dac_counter_value_lower = dac_control_1_dac_counter_value_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:268:8  */
  assign dac_finished_lower_strb = dac_control_1_dac_finished_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:269:8  */
  assign phi_dac_lower = dac_control_1_phi_dac_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:270:8  */
  assign dac_lower = dac_control_1_dac_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:274:8  */
  assign delta_steps_upper_strb = n195_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:275:8  */
  assign delta_steps_lower_strb = n196_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:276:8  */
  assign delta_steps_upper = n193_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:277:8  */
  assign delta_steps_lower = n194_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:282:8  */
  assign reset_time_measurement = n238_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:283:8  */
  assign reset_time_measurement_strb = n445_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:284:8  */
  assign overflow_strb = time_measurement_0_overflow_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:285:8  */
  assign curr_time = time_measurement_0_curr_time_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:288:8  */
  assign encoded_spike = spike_encoder_0_encoded_spike_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:289:8  */
  assign encoded_spike_strb = spike_encoder_0_encoded_spike_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:292:8  */
  assign select_enable_write = n1389_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:293:8  */
  assign enable_write_mux = n243_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:296:8  */
  assign enable_read = n1390_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:297:8  */
  assign read_strb = spike_memory_0_read_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:298:8  */
  assign b_data = spike_memory_0_b_data_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:299:8  */
  assign fifo_full = spike_memory_0_fifo_full_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:300:8  */
  assign fifo_empty = spike_memory_0_fifo_empty_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:303:8  */
  assign uart_reset = n1335_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:304:8  */
  assign tx_start_strb = memory2uart_0_tx_start_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:305:8  */
  assign uart_tx_strb = uart_0_tx_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:306:8  */
  assign uart_tx = uart_0_tx_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:307:8  */
  assign tx_data = memory2uart_0_uart_data_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:308:8  */
  assign uart_rx_data_strb = uart_0_rx_data_strb_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:309:8  */
  assign uart_rx_data = uart_0_rx_data_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:314:8  */
  assign analog_trigger_uart = n1391_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:315:8  */
  assign next_analog_trigger_uart = n1337_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:316:8  */
  assign analog_trigger_period_adj_uart = n1392_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:317:8  */
  assign next_analog_trigger_period_adj_uart = n1305_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:320:8  */
  assign sc_noc_vcm_generator_uart = n1393_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:321:8  */
  assign next_sc_noc_vcm_generator_uart = n1339_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:322:8  */
  assign sc_noc_vcm_generator_period_adj_uart = n1394_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:323:8  */
  assign next_sc_noc_vcm_generator_period_adj_uart = n1340_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:324:8  */
  assign sc_noc_vcm_generator_duty_cycle_adj = n206_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:325:8  */
  assign sc_noc_vcm_generator_overlap_adj = n210_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:327:8  */
  assign sc_noc_bias_uart = n1395_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:328:8  */
  assign next_sc_noc_bias_uart = n1341_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:329:8  */
  assign sc_noc_bias_period_adj_uart = n1396_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:330:8  */
  assign next_sc_noc_bias_period_adj_uart = n1342_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:331:8  */
  assign sc_noc_bias_duty_cycle_adj = n214_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:332:8  */
  assign sc_noc_bias_overlap_adj = n218_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:334:8  */
  assign sc_noc_cmfb_uart = n1397_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:335:8  */
  assign next_sc_noc_cmfb_uart = n1343_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:336:8  */
  assign sc_noc_cmfb_period_adj_uart = n1398_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:337:8  */
  assign next_sc_noc_cmfb_period_adj_uart = n1344_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:338:8  */
  assign sc_noc_cmfb_duty_cycle_adj = n222_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:339:8  */
  assign sc_noc_cmfb_overlap_adj = n226_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:341:8  */
  assign sc_noc_res_uart = n1399_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:342:8  */
  assign next_sc_noc_res_uart = n1345_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:343:8  */
  assign sc_noc_res_period_adj_uart = n1400_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:344:8  */
  assign next_sc_noc_res_period_adj_uart = n1346_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:345:8  */
  assign sc_noc_res_duty_cycle_adj = n230_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:346:8  */
  assign sc_noc_res_overlap_adj = n234_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:349:8  */
  assign select_cap_uart = n1401_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:350:8  */
  assign next_select_cap_uart = n1347_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:351:8  */
  assign select_cap_adj_uart = n1402_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:352:8  */
  assign next_select_cap_adj_uart = n1348_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:355:8  */
  assign baudrate_uart = n1403_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:356:8  */
  assign next_baudrate_uart = n1349_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:357:8  */
  assign baudrate_adj_uart = n1404_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:358:8  */
  assign next_baudrate_adj_uart = n1350_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:361:8  */
  assign tbs_virtual_delta_steps_uart = n1405_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:362:8  */
  assign next_tbs_virtual_delta_steps_uart = n1351_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:363:8  */
  assign next_tbs_virtual_delta_steps_adj_uart = n1352_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:364:8  */
  assign tbs_virtual_delta_steps_adj_uart = n1406_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:367:8  */
  assign atbs_win_length_uart = n1407_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:368:8  */
  assign next_atbs_win_length_uart = n1353_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:369:8  */
  assign atbs_win_length_adj_uart = n1408_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:370:8  */
  assign next_atbs_win_length_adj_uart = n1354_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:373:8  */
  assign atbs_max_delta_steps_uart = n1409_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:374:8  */
  assign next_atbs_max_delta_steps_uart = n1355_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:375:8  */
  assign atbs_max_delta_steps_adj_uart = n1410_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:376:8  */
  assign next_atbs_max_delta_steps_adj_uart = n1356_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:381:8  */
  assign main_counter_value = n1411_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:382:8  */
  assign next_main_counter_value = n268_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:384:8  */
  assign reset_main_counter_strb = n449_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:388:8  */
  assign state = n1412_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:389:8  */
  assign next_state = n453_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:391:8  */
  assign next_idle_led = n454_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:392:8  */
  assign next_overflow_led = n456_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:393:8  */
  assign next_underflow_led = n458_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:394:8  */
  assign next_select_enable_write = n461_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:395:8  */
  assign next_enable_read = n462_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:396:8  */
  assign next_detection_en = n465_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:397:8  */
  assign next_clear_dac = n467_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:400:8  */
  assign idle_led = n1413_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:401:8  */
  assign overflow_led = n1414_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:402:8  */
  assign underflow_led = n1415_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:405:8  */
  assign analog_trigger = analog_trigger_0_analog_trigger_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:408:8  */
  assign phi_vcm_generator_1 = sc_noc_generator_0_sc_noc_1_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:409:8  */
  assign phi_vcm_generator_2 = sc_noc_generator_0_sc_noc_2_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:410:8  */
  assign phi_bias_1 = sc_noc_generator_1_sc_noc_1_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:411:8  */
  assign phi_bias_2 = sc_noc_generator_1_sc_noc_2_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:412:8  */
  assign phi_cmfb_1 = sc_noc_generator_2_sc_noc_1_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:413:8  */
  assign phi_cmfb_2 = sc_noc_generator_2_sc_noc_2_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:416:8  */
  assign phi_res_1 = sc_noc_generator_3_sc_noc_1_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:417:8  */
  assign phi_res_2 = sc_noc_generator_3_sc_noc_2_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:421:8  */
  assign trigger_start_mode = n1367_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:422:8  */
  assign trigger_start_mode_uart = n1416_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:423:8  */
  assign next_trigger_start_mode_uart = n1357_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:425:8  */
  assign adaptive_mode = n1369_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:426:8  */
  assign adaptive_mode_uart = n1417_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:427:8  */
  assign next_adaptive_mode_uart = n1358_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:429:8  */
  assign signal_select_in = n1371_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:430:8  */
  assign signal_select_in_uart = n1418_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:431:8  */
  assign next_signal_select_in_uart = n1359_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:433:8  */
  assign enable_analog = n1373_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:434:8  */
  assign enable_analog_uart = n1419_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:435:8  */
  assign next_enable_analog_uart = n1360_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:437:8  */
  assign select_tbs_delta_steps = n1375_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:438:8  */
  assign select_tbs_delta_steps_uart = n1420_q; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:439:8  */
  assign next_select_tbs_delta_steps_uart = n1361_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:441:8  */
  assign uart_start_sampling_strb = n1363_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:450:9  */
  sync_chain_2_1 sync_chain_0 (
    .clock_i(clock_i),
    .reset_i(reset_btn_i),
    .async_i(n64_o),
    .sync_o(sync_chain_0_sync_o));
  assign n66_o = sync_chain_0_sync_o; // extract
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:465:14  */
  assign n67_o = ~reset_sync;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:465:29  */
  assign n68_o = n67_o | uart_reset;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:466:27  */
  assign n69_o = reset_i | input_changed_reset_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:466:55  */
  assign n70_o = n69_o | uart_changed_reset_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:470:3  */
  sync_chain_2_1 sync_chain_2 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(trigger_start_sampling_i),
    .sync_o(sync_chain_2_sync_o));
  assign n72_o = sync_chain_2_sync_o; // extract
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:487:9  */
  debouncer_16_65536 debouncer_0 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(trigger_start_mode_i),
    .debounced_o(debouncer_0_debounced_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:500:3  */
  debouncer_16_65536 debouncer_1 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(adaptive_mode_i),
    .debounced_o(debouncer_1_debounced_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:513:3  */
  debouncer_16_65536 debouncer_2 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(control_mode_i),
    .debounced_o(debouncer_2_debounced_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:526:3  */
  debouncer_16_65536 debouncer_3 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(signal_select_in_i),
    .debounced_o(debouncer_3_debounced_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:539:3  */
  debouncer_16_65536 debouncer_4 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(enable_i),
    .debounced_o(debouncer_4_debounced_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:552:3  */
  debouncer_16_65536 debouncer_5 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .bouncing_i(select_tbs_delta_steps_i),
    .debounced_o(debouncer_5_debounced_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:586:37  */
  assign n100_o = ~trigger_start_sampling_d;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:586:67  */
  assign n101_o = n100_o & trigger_start_sampling_sync;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:587:58  */
  assign n102_o = ~trigger_start_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:587:53  */
  assign n103_o = trigger_start_mode_d & n102_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:588:39  */
  assign n104_o = ~trigger_start_mode_d;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:588:65  */
  assign n105_o = n104_o & trigger_start_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:589:48  */
  assign n106_o = ~adaptive_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:589:43  */
  assign n107_o = adaptive_mode_d & n106_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:590:34  */
  assign n108_o = ~adaptive_mode_d;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:590:55  */
  assign n109_o = n108_o & adaptive_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:591:46  */
  assign n110_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:591:41  */
  assign n111_o = control_mode_d & n110_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:592:33  */
  assign n112_o = ~control_mode_d;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:592:53  */
  assign n113_o = n112_o & control_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:593:54  */
  assign n114_o = ~signal_select_in_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:593:49  */
  assign n115_o = signal_select_in_d & n114_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:594:37  */
  assign n116_o = ~signal_select_in_d;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:594:61  */
  assign n117_o = n116_o & signal_select_in_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:595:66  */
  assign n118_o = ~select_tbs_delta_steps_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:595:61  */
  assign n119_o = select_tbs_delta_steps_d & n118_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:596:43  */
  assign n120_o = ~select_tbs_delta_steps_d;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:596:73  */
  assign n121_o = n120_o & select_tbs_delta_steps_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:598:67  */
  assign n123_o = trigger_start_mode_edge_f | trigger_start_mode_edge_r;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:598:102  */
  assign n124_o = n123_o | adaptive_mode_edge_f;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:599:56  */
  assign n125_o = n124_o | adaptive_mode_edge_r;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:599:86  */
  assign n126_o = n125_o | control_mode_edge_f;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:600:55  */
  assign n127_o = n126_o | control_mode_edge_r;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:600:84  */
  assign n128_o = n127_o | signal_select_in_edge_f;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:601:59  */
  assign n129_o = n128_o | signal_select_in_edge_r;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:601:92  */
  assign n130_o = n129_o | select_tbs_delta_steps_edge_f;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:602:65  */
  assign n131_o = n130_o | select_tbs_delta_steps_edge_r;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:598:29  */
  assign n132_o = n131_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:611:9  */
  sync_chain_2_2 sync_chain_1 (
    .clock_i(clock_i),
    .reset_i(reset_i),
    .async_i(n134_o),
    .sync_o(sync_chain_1_sync_o));
  assign n134_o = {comp_lower_i, comp_upper_i};
  assign n136_o = sync_chain_1_sync_o[0]; // extract
  assign n137_o = sync_chain_1_sync_o[1]; // extract
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:628:3  */
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
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:650:3  */
  adaptive_threshold_control_19_18_7_7_127_0_3_2 adaptive_ctrl_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .sync_reset_i(reset_delta_steps_strb),
    .overflow_strb_i(overflow_strb),
    .curr_time_i(curr_time),
    .spike_i(spike),
    .spike_strb_i(spike_strb),
    .d_max_i(n140_o),
    .d_min_i(n141_o),
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
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:687:9  */
  dac_control_7_7_1_8 dac_control_0 (
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
    .phi_dac_o(dac_control_0_phi_dac_o),
    .dac_o(dac_control_0_dac_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:716:51  */
  assign n155_o = delta_steps_upper_strb | dac_init_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:720:9  */
  dac_control_7_7_0_8 dac_control_1 (
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
    .phi_dac_o(dac_control_1_phi_dac_o),
    .dac_o(dac_control_1_dac_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:749:51  */
  assign n160_o = delta_steps_lower_strb | dac_init_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:777:54  */
  assign n172_o = 7'b1111111 - tbs_delta_steps_upper;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:777:33  */
  assign n173_o = $unsigned(dac_counter_value_upper) > $unsigned(n172_o);
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:777:107  */
  assign n175_o = dac_counter_value_upper == 7'b1111111;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:777:79  */
  assign n176_o = n173_o | n175_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:777:5  */
  assign n179_o = n176_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:784:109  */
  assign n182_o = dac_counter_value_lower == 7'b0000000;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:784:81  */
  assign n184_o = 1'b0 | n182_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:784:5  */
  assign n187_o = n184_o ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:795:61  */
  assign n189_o = select_tbs_delta_steps ? tbs_virtual_delta_steps_adj_uart : 7'b0000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:796:61  */
  assign n191_o = select_tbs_delta_steps ? tbs_virtual_delta_steps_adj_uart : 7'b0000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:806:47  */
  assign n193_o = adaptive_mode ? atbs_delta_steps_upper : tbs_delta_steps_upper;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:807:47  */
  assign n194_o = adaptive_mode ? atbs_delta_steps_lower : tbs_delta_steps_lower;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:812:57  */
  assign n195_o = adaptive_mode ? atbs_delta_steps_upper_strb : spike_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:813:57  */
  assign n196_o = adaptive_mode ? atbs_delta_steps_lower_strb : spike_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:818:43  */
  assign n197_o = adaptive_mode ? atbs_direction_upper : spike;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:819:43  */
  assign n198_o = adaptive_mode ? atbs_direction_lower : spike;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:822:50  */
  assign n199_o = adaptive_mode ? adapt_on_overflow_strb : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:826:39  */
  assign n201_o = adaptive_mode ? atbs_increasing_en : tbs_increasing_en;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:827:39  */
  assign n202_o = adaptive_mode ? atbs_decreasing_en : tbs_decreasing_en;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:833:9  */
  analog_trig_7 analog_trigger_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_i(enable_analog),
    .period_adj_i(analog_trigger_period_adj_uart),
    .duty_cycle_adj_i(n203_o),
    .analog_trigger_o(analog_trigger_0_analog_trigger_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:856:49  */
  assign n206_o = sc_noc_vcm_generator_period_adj_uart >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:857:46  */
  assign n208_o = sc_noc_vcm_generator_period_adj_uart >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:857:99  */
  assign n210_o = n208_o + 8'b00000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:859:3  */
  sc_noc_generator_8 sc_noc_generator_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_i(enable_analog),
    .period_adj_i(sc_noc_vcm_generator_period_adj_uart),
    .duty_cycle_adj_i(sc_noc_vcm_generator_duty_cycle_adj),
    .overlap_adj_i(sc_noc_vcm_generator_overlap_adj),
    .sc_noc_1_o(sc_noc_generator_0_sc_noc_1_o),
    .sc_noc_2_o(sc_noc_generator_0_sc_noc_2_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:876:40  */
  assign n214_o = sc_noc_bias_period_adj_uart >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:877:37  */
  assign n216_o = sc_noc_bias_period_adj_uart >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:877:81  */
  assign n218_o = n216_o + 8'b00000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:879:3  */
  sc_noc_generator_8 sc_noc_generator_1 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_i(enable_analog),
    .period_adj_i(sc_noc_bias_period_adj_uart),
    .duty_cycle_adj_i(sc_noc_bias_duty_cycle_adj),
    .overlap_adj_i(sc_noc_bias_overlap_adj),
    .sc_noc_1_o(sc_noc_generator_1_sc_noc_1_o),
    .sc_noc_2_o(sc_noc_generator_1_sc_noc_2_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:896:40  */
  assign n222_o = sc_noc_cmfb_period_adj_uart >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:897:37  */
  assign n224_o = sc_noc_cmfb_period_adj_uart >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:897:81  */
  assign n226_o = n224_o + 8'b00000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:899:3  */
  sc_noc_generator_8 sc_noc_generator_2 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_i(enable_analog),
    .period_adj_i(sc_noc_cmfb_period_adj_uart),
    .duty_cycle_adj_i(sc_noc_cmfb_duty_cycle_adj),
    .overlap_adj_i(sc_noc_cmfb_overlap_adj),
    .sc_noc_1_o(sc_noc_generator_2_sc_noc_1_o),
    .sc_noc_2_o(sc_noc_generator_2_sc_noc_2_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:916:39  */
  assign n230_o = sc_noc_res_period_adj_uart >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:917:36  */
  assign n232_o = sc_noc_res_period_adj_uart >> 31'b0000000000000000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:917:79  */
  assign n234_o = n232_o + 11'b00000000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:919:3  */
  sc_noc_generator_11 sc_noc_generator_3 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .enable_i(enable_analog),
    .period_adj_i(sc_noc_res_period_adj_uart),
    .duty_cycle_adj_i(sc_noc_res_duty_cycle_adj),
    .overlap_adj_i(sc_noc_res_overlap_adj),
    .sc_noc_1_o(sc_noc_generator_3_sc_noc_1_o),
    .sc_noc_2_o(sc_noc_generator_3_sc_noc_2_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:942:74  */
  assign n237_o = reset_time_measurement_strb & trigger_start_mode;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:942:42  */
  assign n238_o = reset_entity | n237_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:943:3  */
  time_measurement_18_262144 time_measurement_0 (
    .clock_i(clock_i),
    .reset_i(reset_time_measurement),
    .overflow_strb_o(time_measurement_0_overflow_strb_o),
    .curr_time_o(time_measurement_0_curr_time_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:958:3  */
  spike_encoder_18_19 spike_encoder_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .spike_i(spike),
    .spike_strb_i(spike_strb),
    .overflow_strb_i(overflow_strb),
    .curr_time_i(curr_time),
    .encoded_spike_o(spike_encoder_0_encoded_spike_o),
    .encoded_spike_strb_o(spike_encoder_0_encoded_spike_strb_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:977:42  */
  assign n243_o = select_enable_write ? encoded_spike_strb : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:981:3  */
  spike_memory_19_6 spike_memory_0 (
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
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1004:3  */
  memory2uart_19_8 memory2uart_0 (
    .clock_i(clock_i),
    .reset_i(reset_entity),
    .read_strb_i(read_strb),
    .tx_strb_i(uart_tx_strb),
    .memory_data_i(b_data),
    .uart_data_o(memory2uart_0_uart_data_o),
    .tx_start_strb_o(memory2uart_0_tx_start_strb_o));
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1022:3  */
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
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1067:39  */
  assign n263_o = main_counter_value == 20'b11000011010011111111;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1067:62  */
  assign n264_o = n263_o | reset_main_counter_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1070:71  */
  assign n266_o = main_counter_value + 20'b00000000000000000001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1067:17  */
  assign n268_o = n264_o ? 20'b00000000000000000000 : n266_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1122:9  */
  assign n299_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1133:9  */
  assign n302_o = enable_analog ? 3'b001 : 3'b000;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1133:9  */
  assign n304_o = enable_analog ? 1'b0 : idle_led;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1121:7  */
  assign n306_o = state == 3'b000;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1140:7  */
  assign n308_o = state == 3'b001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1160:9  */
  assign n310_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1165:31  */
  assign n312_o = main_counter_value == 20'b00010000000000001000;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1165:9  */
  assign n315_o = n312_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1165:9  */
  assign n318_o = n312_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1165:9  */
  assign n321_o = n312_o ? 3'b011 : 3'b010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1165:9  */
  assign n323_o = n312_o ? 1'b1 : clear_dac;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1159:7  */
  assign n325_o = state == 3'b010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1181:9  */
  assign n327_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1186:31  */
  assign n329_o = main_counter_value == 20'b00000000000000001000;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1186:9  */
  assign n332_o = n329_o ? 3'b100 : 3'b011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1180:7  */
  assign n334_o = state == 3'b011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1193:9  */
  assign n336_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1198:37  */
  assign n337_o = input_changed_strb | uart_changed_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1202:29  */
  assign n338_o = ~enable_analog;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1207:34  */
  assign n339_o = ~trigger_start_mode;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1207:40  */
  assign n340_o = n339_o | trigger_start_sampling_edge_r;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1207:79  */
  assign n341_o = n340_o | uart_start_sampling_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1207:9  */
  assign n344_o = n341_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1207:9  */
  assign n347_o = n341_o ? 3'b101 : 3'b100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1202:9  */
  assign n349_o = n338_o ? 1'b0 : n344_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1202:9  */
  assign n351_o = n338_o ? 3'b000 : n347_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1202:9  */
  assign n353_o = n338_o ? 1'b1 : idle_led;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1198:9  */
  assign n356_o = n337_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1198:9  */
  assign n359_o = n337_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1198:9  */
  assign n361_o = n337_o ? 1'b0 : n349_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1198:9  */
  assign n363_o = n337_o ? 3'b001 : n351_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1198:9  */
  assign n364_o = n337_o ? idle_led : n353_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1192:7  */
  assign n366_o = state == 3'b100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1218:9  */
  assign n368_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1222:31  */
  assign n370_o = main_counter_value == 20'b00010000000000000000;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1222:9  */
  assign n373_o = n370_o ? 3'b110 : 3'b101;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1217:7  */
  assign n375_o = state == 3'b101;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1229:9  */
  assign n377_o = fifo_empty ? 1'b0 : enable_read;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1234:31  */
  assign n378_o = ~trigger_start_mode;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1234:37  */
  assign n379_o = n378_o | trigger_start_sampling_edge_r;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1234:76  */
  assign n380_o = n379_o | uart_start_sampling_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1234:9  */
  assign n383_o = n380_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1234:9  */
  assign n386_o = n380_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1234:9  */
  assign n389_o = n380_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1234:9  */
  assign n392_o = n380_o ? 3'b111 : 3'b110;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1234:9  */
  assign n394_o = n380_o ? 1'b1 : select_enable_write;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1234:9  */
  assign n396_o = n380_o ? 1'b1 : detection_en;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1228:7  */
  assign n398_o = state == 3'b110;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1261:9  */
  assign n401_o = fifo_empty ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1261:9  */
  assign n404_o = fifo_empty ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1257:9  */
  assign n406_o = fifo_full ? 1'b1 : overflow_led;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1257:9  */
  assign n407_o = fifo_full ? underflow_led : n401_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1257:9  */
  assign n410_o = fifo_full ? 1'b0 : 1'b1;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1257:9  */
  assign n412_o = fifo_full ? 1'b1 : n404_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1273:37  */
  assign n413_o = input_changed_strb | uart_changed_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1277:29  */
  assign n414_o = ~enable_analog;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1277:9  */
  assign n417_o = n414_o ? 3'b000 : 3'b111;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1277:9  */
  assign n419_o = n414_o ? 1'b1 : idle_led;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1273:9  */
  assign n422_o = n413_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1273:9  */
  assign n425_o = n413_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1273:9  */
  assign n427_o = n413_o ? 3'b001 : n417_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1273:9  */
  assign n428_o = n413_o ? idle_led : n419_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1255:7  */
  assign n430_o = state == 3'b111;
  assign n431_o = {n430_o, n398_o, n375_o, n366_o, n334_o, n325_o, n308_o, n306_o};
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n433_o = n422_o;
      8'b01000000: n433_o = 1'b0;
      8'b00100000: n433_o = 1'b0;
      8'b00010000: n433_o = n356_o;
      8'b00001000: n433_o = 1'b0;
      8'b00000100: n433_o = 1'b0;
      8'b00000010: n433_o = 1'b0;
      8'b00000001: n433_o = 1'b0;
      default: n433_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n436_o = n425_o;
      8'b01000000: n436_o = 1'b0;
      8'b00100000: n436_o = 1'b0;
      8'b00010000: n436_o = n359_o;
      8'b00001000: n436_o = 1'b0;
      8'b00000100: n436_o = 1'b0;
      8'b00000010: n436_o = 1'b0;
      8'b00000001: n436_o = 1'b0;
      default: n436_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n439_o = 1'b0;
      8'b01000000: n439_o = n383_o;
      8'b00100000: n439_o = 1'b0;
      8'b00010000: n439_o = 1'b0;
      8'b00001000: n439_o = 1'b0;
      8'b00000100: n439_o = 1'b0;
      8'b00000010: n439_o = 1'b0;
      8'b00000001: n439_o = 1'b0;
      default: n439_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n442_o = 1'b0;
      8'b01000000: n442_o = 1'b0;
      8'b00100000: n442_o = 1'b0;
      8'b00010000: n442_o = 1'b0;
      8'b00001000: n442_o = 1'b0;
      8'b00000100: n442_o = n315_o;
      8'b00000010: n442_o = 1'b0;
      8'b00000001: n442_o = 1'b0;
      default: n442_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n445_o = 1'b0;
      8'b01000000: n445_o = n386_o;
      8'b00100000: n445_o = 1'b0;
      8'b00010000: n445_o = 1'b0;
      8'b00001000: n445_o = 1'b0;
      8'b00000100: n445_o = 1'b0;
      8'b00000010: n445_o = 1'b0;
      8'b00000001: n445_o = 1'b0;
      default: n445_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n449_o = 1'b0;
      8'b01000000: n449_o = n389_o;
      8'b00100000: n449_o = 1'b0;
      8'b00010000: n449_o = n361_o;
      8'b00001000: n449_o = 1'b0;
      8'b00000100: n449_o = n318_o;
      8'b00000010: n449_o = 1'b1;
      8'b00000001: n449_o = 1'b0;
      default: n449_o = 1'b0;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n453_o = n427_o;
      8'b01000000: n453_o = n392_o;
      8'b00100000: n453_o = n373_o;
      8'b00010000: n453_o = n363_o;
      8'b00001000: n453_o = n332_o;
      8'b00000100: n453_o = n321_o;
      8'b00000010: n453_o = 3'b010;
      8'b00000001: n453_o = n302_o;
      default: n453_o = 3'b000;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n454_o = n428_o;
      8'b01000000: n454_o = idle_led;
      8'b00100000: n454_o = idle_led;
      8'b00010000: n454_o = n364_o;
      8'b00001000: n454_o = idle_led;
      8'b00000100: n454_o = idle_led;
      8'b00000010: n454_o = idle_led;
      8'b00000001: n454_o = n304_o;
      default: n454_o = idle_led;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n456_o = n406_o;
      8'b01000000: n456_o = overflow_led;
      8'b00100000: n456_o = overflow_led;
      8'b00010000: n456_o = overflow_led;
      8'b00001000: n456_o = overflow_led;
      8'b00000100: n456_o = overflow_led;
      8'b00000010: n456_o = 1'b0;
      8'b00000001: n456_o = overflow_led;
      default: n456_o = overflow_led;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n458_o = n407_o;
      8'b01000000: n458_o = underflow_led;
      8'b00100000: n458_o = underflow_led;
      8'b00010000: n458_o = underflow_led;
      8'b00001000: n458_o = underflow_led;
      8'b00000100: n458_o = underflow_led;
      8'b00000010: n458_o = 1'b0;
      8'b00000001: n458_o = underflow_led;
      default: n458_o = underflow_led;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n461_o = n410_o;
      8'b01000000: n461_o = n394_o;
      8'b00100000: n461_o = select_enable_write;
      8'b00010000: n461_o = select_enable_write;
      8'b00001000: n461_o = select_enable_write;
      8'b00000100: n461_o = select_enable_write;
      8'b00000010: n461_o = 1'b0;
      8'b00000001: n461_o = 1'b0;
      default: n461_o = select_enable_write;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n462_o = n412_o;
      8'b01000000: n462_o = n377_o;
      8'b00100000: n462_o = n368_o;
      8'b00010000: n462_o = n336_o;
      8'b00001000: n462_o = n327_o;
      8'b00000100: n462_o = n310_o;
      8'b00000010: n462_o = enable_read;
      8'b00000001: n462_o = n299_o;
      default: n462_o = enable_read;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n465_o = detection_en;
      8'b01000000: n465_o = n396_o;
      8'b00100000: n465_o = detection_en;
      8'b00010000: n465_o = detection_en;
      8'b00001000: n465_o = detection_en;
      8'b00000100: n465_o = detection_en;
      8'b00000010: n465_o = 1'b0;
      8'b00000001: n465_o = 1'b0;
      default: n465_o = detection_en;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1120:5  */
  always @*
    case (n431_o)
      8'b10000000: n467_o = clear_dac;
      8'b01000000: n467_o = clear_dac;
      8'b00100000: n467_o = clear_dac;
      8'b00010000: n467_o = clear_dac;
      8'b00001000: n467_o = clear_dac;
      8'b00000100: n467_o = n323_o;
      8'b00000010: n467_o = 1'b0;
      8'b00000001: n467_o = clear_dac;
      default: n467_o = clear_dac;
    endcase
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1440:25  */
  assign n549_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1442:28  */
  assign n551_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1444:28  */
  assign n553_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1446:28  */
  assign n555_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1448:28  */
  assign n557_o = uart_rx_data == 8'b01100101;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1448:9  */
  assign n559_o = n557_o ? 7'b0000111 : analog_trigger_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1446:9  */
  assign n561_o = n555_o ? 7'b0001111 : n559_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1444:9  */
  assign n563_o = n553_o ? 7'b0011111 : n561_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1442:9  */
  assign n565_o = n551_o ? 7'b0111111 : n563_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1440:9  */
  assign n567_o = n549_o ? 7'b1111111 : n565_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1453:25  */
  assign n569_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1455:28  */
  assign n571_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1457:28  */
  assign n573_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1457:9  */
  assign n575_o = n573_o ? 8'b00111111 : sc_noc_vcm_generator_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1455:9  */
  assign n577_o = n571_o ? 8'b01111111 : n575_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1453:9  */
  assign n579_o = n569_o ? 8'b11111111 : n577_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1462:25  */
  assign n581_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1464:28  */
  assign n583_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1466:28  */
  assign n585_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1466:9  */
  assign n587_o = n585_o ? 8'b00111111 : sc_noc_bias_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1464:9  */
  assign n589_o = n583_o ? 8'b01111111 : n587_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1462:9  */
  assign n591_o = n581_o ? 8'b11111111 : n589_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1471:25  */
  assign n593_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1473:28  */
  assign n595_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1475:28  */
  assign n597_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1475:9  */
  assign n599_o = n597_o ? 8'b00111111 : sc_noc_cmfb_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1473:9  */
  assign n601_o = n595_o ? 8'b01111111 : n599_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1471:9  */
  assign n603_o = n593_o ? 8'b11111111 : n601_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1480:25  */
  assign n605_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1482:28  */
  assign n607_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1482:9  */
  assign n609_o = n607_o ? 11'b01111111111 : sc_noc_res_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1480:9  */
  assign n611_o = n605_o ? 11'b11111111111 : n609_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1487:25  */
  assign n613_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1489:28  */
  assign n615_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1491:28  */
  assign n617_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1493:28  */
  assign n619_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1493:9  */
  assign n621_o = n619_o ? 3'b000 : select_cap_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1491:9  */
  assign n623_o = n617_o ? 3'b001 : n621_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1489:9  */
  assign n625_o = n615_o ? 3'b011 : n623_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1487:9  */
  assign n627_o = n613_o ? 3'b111 : n625_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1499:25  */
  assign n629_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1501:28  */
  assign n631_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1503:28  */
  assign n633_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1505:28  */
  assign n635_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1505:9  */
  assign n637_o = n635_o ? 9'b001000101 : baudrate_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1503:9  */
  assign n639_o = n633_o ? 9'b010001011 : n637_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1501:9  */
  assign n641_o = n631_o ? 9'b011010000 : n639_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1499:9  */
  assign n643_o = n629_o ? 9'b110100001 : n641_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1510:25  */
  assign n645_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1512:28  */
  assign n647_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1514:28  */
  assign n649_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1516:28  */
  assign n651_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1516:9  */
  assign n653_o = n651_o ? 7'b0010000 : tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1514:9  */
  assign n655_o = n649_o ? 7'b0001000 : n653_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1512:9  */
  assign n657_o = n647_o ? 7'b0000100 : n655_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1510:9  */
  assign n659_o = n645_o ? 7'b0000010 : n657_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1521:25  */
  assign n661_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1523:28  */
  assign n663_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1525:28  */
  assign n665_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1527:28  */
  assign n667_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1529:28  */
  assign n669_o = uart_rx_data == 8'b01100101;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1531:28  */
  assign n671_o = uart_rx_data == 8'b01100110;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1531:9  */
  assign n673_o = n671_o ? 19'b0111110100000000000 : atbs_win_length_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1529:9  */
  assign n675_o = n669_o ? 19'b0011111010000000000 : n673_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1527:9  */
  assign n677_o = n667_o ? 19'b0001111101000000000 : n675_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1525:9  */
  assign n679_o = n665_o ? 19'b0000111110100000000 : n677_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1523:9  */
  assign n681_o = n663_o ? 19'b0000011111010000000 : n679_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1521:9  */
  assign n683_o = n661_o ? 19'b0000001111101000000 : n681_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1536:25  */
  assign n685_o = uart_rx_data == 8'b01100001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1538:28  */
  assign n687_o = uart_rx_data == 8'b01100010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1540:28  */
  assign n689_o = uart_rx_data == 8'b01100011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1542:28  */
  assign n691_o = uart_rx_data == 8'b01100100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1542:9  */
  assign n693_o = n691_o ? 7'b0010000 : atbs_max_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1540:9  */
  assign n695_o = n689_o ? 7'b0001000 : n693_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1538:9  */
  assign n697_o = n687_o ? 7'b0000100 : n695_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1536:9  */
  assign n699_o = n685_o ? 7'b0000010 : n697_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:25  */
  assign n701_o = uart_rx_data == 8'b00110000;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:28  */
  assign n703_o = uart_rx_data == 8'b00110001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:28  */
  assign n705_o = uart_rx_data == 8'b00110010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:28  */
  assign n707_o = uart_rx_data == 8'b00110011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:28  */
  assign n709_o = uart_rx_data == 8'b00110100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:28  */
  assign n711_o = uart_rx_data == 8'b00110101;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:28  */
  assign n713_o = uart_rx_data == 8'b00110110;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:28  */
  assign n715_o = uart_rx_data == 8'b00110111;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:28  */
  assign n717_o = uart_rx_data == 8'b00111000;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:28  */
  assign n719_o = uart_rx_data == 8'b00111001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:28  */
  assign n721_o = uart_rx_data == 8'b01010101;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:28  */
  assign n723_o = uart_rx_data == 8'b01010011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:28  */
  assign n725_o = uart_rx_data == 8'b01010010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:28  */
  assign n727_o = uart_rx_data == 8'b01010100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1574:28  */
  assign n729_o = uart_rx_data == 8'b01000111;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1576:28  */
  assign n731_o = uart_rx_data == 8'b01001001;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1578:28  */
  assign n733_o = uart_rx_data == 8'b01000011;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1580:28  */
  assign n735_o = uart_rx_data == 8'b01000110;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1582:28  */
  assign n737_o = uart_rx_data == 8'b01010000;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1584:28  */
  assign n739_o = uart_rx_data == 8'b01000010;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1586:28  */
  assign n741_o = uart_rx_data == 8'b01010110;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1588:28  */
  assign n743_o = uart_rx_data == 8'b01010111;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1590:28  */
  assign n745_o = uart_rx_data == 8'b01000100;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1590:9  */
  assign n747_o = n745_o ? 1'b1 : atbs_max_delta_steps_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1588:9  */
  assign n749_o = n743_o ? 1'b1 : atbs_win_length_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1588:9  */
  assign n750_o = n743_o ? atbs_max_delta_steps_uart : n747_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1586:9  */
  assign n752_o = n741_o ? 1'b1 : tbs_virtual_delta_steps_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1586:9  */
  assign n753_o = n741_o ? atbs_win_length_uart : n749_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1586:9  */
  assign n754_o = n741_o ? atbs_max_delta_steps_uart : n750_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1584:9  */
  assign n756_o = n739_o ? 1'b1 : baudrate_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1584:9  */
  assign n757_o = n739_o ? tbs_virtual_delta_steps_uart : n752_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1584:9  */
  assign n758_o = n739_o ? atbs_win_length_uart : n753_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1584:9  */
  assign n759_o = n739_o ? atbs_max_delta_steps_uart : n754_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1582:9  */
  assign n761_o = n737_o ? 1'b1 : select_cap_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1582:9  */
  assign n762_o = n737_o ? baudrate_uart : n756_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1582:9  */
  assign n763_o = n737_o ? tbs_virtual_delta_steps_uart : n757_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1582:9  */
  assign n764_o = n737_o ? atbs_win_length_uart : n758_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1582:9  */
  assign n765_o = n737_o ? atbs_max_delta_steps_uart : n759_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1580:9  */
  assign n767_o = n735_o ? 1'b1 : sc_noc_res_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1580:9  */
  assign n768_o = n735_o ? select_cap_uart : n761_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1580:9  */
  assign n769_o = n735_o ? baudrate_uart : n762_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1580:9  */
  assign n770_o = n735_o ? tbs_virtual_delta_steps_uart : n763_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1580:9  */
  assign n771_o = n735_o ? atbs_win_length_uart : n764_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1580:9  */
  assign n772_o = n735_o ? atbs_max_delta_steps_uart : n765_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1578:9  */
  assign n774_o = n733_o ? 1'b1 : sc_noc_cmfb_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1578:9  */
  assign n775_o = n733_o ? sc_noc_res_uart : n767_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1578:9  */
  assign n776_o = n733_o ? select_cap_uart : n768_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1578:9  */
  assign n777_o = n733_o ? baudrate_uart : n769_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1578:9  */
  assign n778_o = n733_o ? tbs_virtual_delta_steps_uart : n770_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1578:9  */
  assign n779_o = n733_o ? atbs_win_length_uart : n771_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1578:9  */
  assign n780_o = n733_o ? atbs_max_delta_steps_uart : n772_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1576:9  */
  assign n782_o = n731_o ? 1'b1 : sc_noc_bias_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1576:9  */
  assign n783_o = n731_o ? sc_noc_cmfb_uart : n774_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1576:9  */
  assign n784_o = n731_o ? sc_noc_res_uart : n775_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1576:9  */
  assign n785_o = n731_o ? select_cap_uart : n776_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1576:9  */
  assign n786_o = n731_o ? baudrate_uart : n777_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1576:9  */
  assign n787_o = n731_o ? tbs_virtual_delta_steps_uart : n778_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1576:9  */
  assign n788_o = n731_o ? atbs_win_length_uart : n779_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1576:9  */
  assign n789_o = n731_o ? atbs_max_delta_steps_uart : n780_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1574:9  */
  assign n791_o = n729_o ? 1'b1 : sc_noc_vcm_generator_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1574:9  */
  assign n792_o = n729_o ? sc_noc_bias_uart : n782_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1574:9  */
  assign n793_o = n729_o ? sc_noc_cmfb_uart : n783_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1574:9  */
  assign n794_o = n729_o ? sc_noc_res_uart : n784_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1574:9  */
  assign n795_o = n729_o ? select_cap_uart : n785_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1574:9  */
  assign n796_o = n729_o ? baudrate_uart : n786_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1574:9  */
  assign n797_o = n729_o ? tbs_virtual_delta_steps_uart : n787_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1574:9  */
  assign n798_o = n729_o ? atbs_win_length_uart : n788_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1574:9  */
  assign n799_o = n729_o ? atbs_max_delta_steps_uart : n789_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:9  */
  assign n801_o = n727_o ? 1'b1 : analog_trigger_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:9  */
  assign n802_o = n727_o ? sc_noc_vcm_generator_uart : n791_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:9  */
  assign n803_o = n727_o ? sc_noc_bias_uart : n792_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:9  */
  assign n804_o = n727_o ? sc_noc_cmfb_uart : n793_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:9  */
  assign n805_o = n727_o ? sc_noc_res_uart : n794_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:9  */
  assign n806_o = n727_o ? select_cap_uart : n795_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:9  */
  assign n807_o = n727_o ? baudrate_uart : n796_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:9  */
  assign n808_o = n727_o ? tbs_virtual_delta_steps_uart : n797_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:9  */
  assign n809_o = n727_o ? atbs_win_length_uart : n798_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1572:9  */
  assign n810_o = n727_o ? atbs_max_delta_steps_uart : n799_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n813_o = n725_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n814_o = n725_o ? analog_trigger_uart : n801_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n815_o = n725_o ? sc_noc_vcm_generator_uart : n802_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n816_o = n725_o ? sc_noc_bias_uart : n803_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n817_o = n725_o ? sc_noc_cmfb_uart : n804_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n818_o = n725_o ? sc_noc_res_uart : n805_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n819_o = n725_o ? select_cap_uart : n806_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n820_o = n725_o ? baudrate_uart : n807_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n821_o = n725_o ? tbs_virtual_delta_steps_uart : n808_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n822_o = n725_o ? atbs_win_length_uart : n809_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1570:9  */
  assign n823_o = n725_o ? atbs_max_delta_steps_uart : n810_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n825_o = n723_o ? 1'b0 : n813_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n826_o = n723_o ? analog_trigger_uart : n814_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n827_o = n723_o ? sc_noc_vcm_generator_uart : n815_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n828_o = n723_o ? sc_noc_bias_uart : n816_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n829_o = n723_o ? sc_noc_cmfb_uart : n817_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n830_o = n723_o ? sc_noc_res_uart : n818_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n831_o = n723_o ? select_cap_uart : n819_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n832_o = n723_o ? baudrate_uart : n820_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n833_o = n723_o ? tbs_virtual_delta_steps_uart : n821_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n834_o = n723_o ? atbs_win_length_uart : n822_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n835_o = n723_o ? atbs_max_delta_steps_uart : n823_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1568:9  */
  assign n838_o = n723_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n841_o = n721_o ? 1'b1 : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n843_o = n721_o ? 1'b0 : n825_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n844_o = n721_o ? analog_trigger_uart : n826_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n845_o = n721_o ? sc_noc_vcm_generator_uart : n827_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n846_o = n721_o ? sc_noc_bias_uart : n828_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n847_o = n721_o ? sc_noc_cmfb_uart : n829_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n848_o = n721_o ? sc_noc_res_uart : n830_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n849_o = n721_o ? select_cap_uart : n831_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n850_o = n721_o ? baudrate_uart : n832_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n851_o = n721_o ? tbs_virtual_delta_steps_uart : n833_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n852_o = n721_o ? atbs_win_length_uart : n834_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n853_o = n721_o ? atbs_max_delta_steps_uart : n835_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1566:9  */
  assign n855_o = n721_o ? 1'b0 : n838_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n857_o = n719_o ? 1'b0 : n841_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n859_o = n719_o ? 1'b0 : n843_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n860_o = n719_o ? analog_trigger_uart : n844_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n861_o = n719_o ? sc_noc_vcm_generator_uart : n845_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n862_o = n719_o ? sc_noc_bias_uart : n846_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n863_o = n719_o ? sc_noc_cmfb_uart : n847_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n864_o = n719_o ? sc_noc_res_uart : n848_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n865_o = n719_o ? select_cap_uart : n849_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n866_o = n719_o ? baudrate_uart : n850_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n867_o = n719_o ? tbs_virtual_delta_steps_uart : n851_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n868_o = n719_o ? atbs_win_length_uart : n852_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n869_o = n719_o ? atbs_max_delta_steps_uart : n853_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n871_o = n719_o ? 1'b1 : select_tbs_delta_steps_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1564:9  */
  assign n873_o = n719_o ? 1'b0 : n855_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n875_o = n717_o ? 1'b0 : n857_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n877_o = n717_o ? 1'b0 : n859_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n878_o = n717_o ? analog_trigger_uart : n860_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n879_o = n717_o ? sc_noc_vcm_generator_uart : n861_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n880_o = n717_o ? sc_noc_bias_uart : n862_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n881_o = n717_o ? sc_noc_cmfb_uart : n863_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n882_o = n717_o ? sc_noc_res_uart : n864_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n883_o = n717_o ? select_cap_uart : n865_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n884_o = n717_o ? baudrate_uart : n866_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n885_o = n717_o ? tbs_virtual_delta_steps_uart : n867_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n886_o = n717_o ? atbs_win_length_uart : n868_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n887_o = n717_o ? atbs_max_delta_steps_uart : n869_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n889_o = n717_o ? 1'b0 : n871_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1562:9  */
  assign n891_o = n717_o ? 1'b0 : n873_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n893_o = n715_o ? 1'b0 : n875_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n895_o = n715_o ? 1'b0 : n877_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n896_o = n715_o ? analog_trigger_uart : n878_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n897_o = n715_o ? sc_noc_vcm_generator_uart : n879_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n898_o = n715_o ? sc_noc_bias_uart : n880_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n899_o = n715_o ? sc_noc_cmfb_uart : n881_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n900_o = n715_o ? sc_noc_res_uart : n882_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n901_o = n715_o ? select_cap_uart : n883_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n902_o = n715_o ? baudrate_uart : n884_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n903_o = n715_o ? tbs_virtual_delta_steps_uart : n885_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n904_o = n715_o ? atbs_win_length_uart : n886_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n905_o = n715_o ? atbs_max_delta_steps_uart : n887_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n907_o = n715_o ? 1'b1 : enable_analog_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n908_o = n715_o ? select_tbs_delta_steps_uart : n889_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1560:9  */
  assign n910_o = n715_o ? 1'b0 : n891_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n912_o = n713_o ? 1'b0 : n893_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n914_o = n713_o ? 1'b0 : n895_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n915_o = n713_o ? analog_trigger_uart : n896_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n916_o = n713_o ? sc_noc_vcm_generator_uart : n897_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n917_o = n713_o ? sc_noc_bias_uart : n898_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n918_o = n713_o ? sc_noc_cmfb_uart : n899_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n919_o = n713_o ? sc_noc_res_uart : n900_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n920_o = n713_o ? select_cap_uart : n901_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n921_o = n713_o ? baudrate_uart : n902_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n922_o = n713_o ? tbs_virtual_delta_steps_uart : n903_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n923_o = n713_o ? atbs_win_length_uart : n904_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n924_o = n713_o ? atbs_max_delta_steps_uart : n905_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n926_o = n713_o ? 1'b0 : n907_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n927_o = n713_o ? select_tbs_delta_steps_uart : n908_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1558:9  */
  assign n929_o = n713_o ? 1'b0 : n910_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n931_o = n711_o ? 1'b0 : n912_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n933_o = n711_o ? 1'b0 : n914_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n934_o = n711_o ? analog_trigger_uart : n915_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n935_o = n711_o ? sc_noc_vcm_generator_uart : n916_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n936_o = n711_o ? sc_noc_bias_uart : n917_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n937_o = n711_o ? sc_noc_cmfb_uart : n918_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n938_o = n711_o ? sc_noc_res_uart : n919_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n939_o = n711_o ? select_cap_uart : n920_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n940_o = n711_o ? baudrate_uart : n921_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n941_o = n711_o ? tbs_virtual_delta_steps_uart : n922_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n942_o = n711_o ? atbs_win_length_uart : n923_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n943_o = n711_o ? atbs_max_delta_steps_uart : n924_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n945_o = n711_o ? 1'b1 : signal_select_in_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n946_o = n711_o ? enable_analog_uart : n926_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n947_o = n711_o ? select_tbs_delta_steps_uart : n927_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1556:9  */
  assign n949_o = n711_o ? 1'b0 : n929_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n951_o = n709_o ? 1'b0 : n931_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n953_o = n709_o ? 1'b0 : n933_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n954_o = n709_o ? analog_trigger_uart : n934_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n955_o = n709_o ? sc_noc_vcm_generator_uart : n935_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n956_o = n709_o ? sc_noc_bias_uart : n936_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n957_o = n709_o ? sc_noc_cmfb_uart : n937_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n958_o = n709_o ? sc_noc_res_uart : n938_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n959_o = n709_o ? select_cap_uart : n939_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n960_o = n709_o ? baudrate_uart : n940_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n961_o = n709_o ? tbs_virtual_delta_steps_uart : n941_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n962_o = n709_o ? atbs_win_length_uart : n942_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n963_o = n709_o ? atbs_max_delta_steps_uart : n943_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n965_o = n709_o ? 1'b0 : n945_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n966_o = n709_o ? enable_analog_uart : n946_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n967_o = n709_o ? select_tbs_delta_steps_uart : n947_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1554:9  */
  assign n969_o = n709_o ? 1'b0 : n949_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n971_o = n707_o ? 1'b0 : n951_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n973_o = n707_o ? 1'b0 : n953_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n974_o = n707_o ? analog_trigger_uart : n954_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n975_o = n707_o ? sc_noc_vcm_generator_uart : n955_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n976_o = n707_o ? sc_noc_bias_uart : n956_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n977_o = n707_o ? sc_noc_cmfb_uart : n957_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n978_o = n707_o ? sc_noc_res_uart : n958_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n979_o = n707_o ? select_cap_uart : n959_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n980_o = n707_o ? baudrate_uart : n960_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n981_o = n707_o ? tbs_virtual_delta_steps_uart : n961_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n982_o = n707_o ? atbs_win_length_uart : n962_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n983_o = n707_o ? atbs_max_delta_steps_uart : n963_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n985_o = n707_o ? 1'b1 : adaptive_mode_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n986_o = n707_o ? signal_select_in_uart : n965_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n987_o = n707_o ? enable_analog_uart : n966_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n988_o = n707_o ? select_tbs_delta_steps_uart : n967_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1552:9  */
  assign n990_o = n707_o ? 1'b0 : n969_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n992_o = n705_o ? 1'b0 : n971_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n994_o = n705_o ? 1'b0 : n973_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n995_o = n705_o ? analog_trigger_uart : n974_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n996_o = n705_o ? sc_noc_vcm_generator_uart : n975_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n997_o = n705_o ? sc_noc_bias_uart : n976_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n998_o = n705_o ? sc_noc_cmfb_uart : n977_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n999_o = n705_o ? sc_noc_res_uart : n978_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n1000_o = n705_o ? select_cap_uart : n979_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n1001_o = n705_o ? baudrate_uart : n980_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n1002_o = n705_o ? tbs_virtual_delta_steps_uart : n981_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n1003_o = n705_o ? atbs_win_length_uart : n982_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n1004_o = n705_o ? atbs_max_delta_steps_uart : n983_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n1006_o = n705_o ? 1'b0 : n985_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n1007_o = n705_o ? signal_select_in_uart : n986_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n1008_o = n705_o ? enable_analog_uart : n987_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n1009_o = n705_o ? select_tbs_delta_steps_uart : n988_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1550:9  */
  assign n1011_o = n705_o ? 1'b0 : n990_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1013_o = n703_o ? 1'b0 : n992_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1015_o = n703_o ? 1'b0 : n994_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1016_o = n703_o ? analog_trigger_uart : n995_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1017_o = n703_o ? sc_noc_vcm_generator_uart : n996_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1018_o = n703_o ? sc_noc_bias_uart : n997_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1019_o = n703_o ? sc_noc_cmfb_uart : n998_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1020_o = n703_o ? sc_noc_res_uart : n999_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1021_o = n703_o ? select_cap_uart : n1000_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1022_o = n703_o ? baudrate_uart : n1001_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1023_o = n703_o ? tbs_virtual_delta_steps_uart : n1002_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1024_o = n703_o ? atbs_win_length_uart : n1003_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1025_o = n703_o ? atbs_max_delta_steps_uart : n1004_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1027_o = n703_o ? 1'b1 : trigger_start_mode_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1028_o = n703_o ? adaptive_mode_uart : n1006_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1029_o = n703_o ? signal_select_in_uart : n1007_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1030_o = n703_o ? enable_analog_uart : n1008_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1031_o = n703_o ? select_tbs_delta_steps_uart : n1009_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1548:9  */
  assign n1033_o = n703_o ? 1'b0 : n1011_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1035_o = n701_o ? 1'b0 : n1013_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1037_o = n701_o ? 1'b0 : n1015_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1038_o = n701_o ? analog_trigger_uart : n1016_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1039_o = n701_o ? sc_noc_vcm_generator_uart : n1017_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1040_o = n701_o ? sc_noc_bias_uart : n1018_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1041_o = n701_o ? sc_noc_cmfb_uart : n1019_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1042_o = n701_o ? sc_noc_res_uart : n1020_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1043_o = n701_o ? select_cap_uart : n1021_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1044_o = n701_o ? baudrate_uart : n1022_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1045_o = n701_o ? tbs_virtual_delta_steps_uart : n1023_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1046_o = n701_o ? atbs_win_length_uart : n1024_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1047_o = n701_o ? atbs_max_delta_steps_uart : n1025_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1049_o = n701_o ? 1'b0 : n1027_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1050_o = n701_o ? adaptive_mode_uart : n1028_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1051_o = n701_o ? signal_select_in_uart : n1029_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1052_o = n701_o ? enable_analog_uart : n1030_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1053_o = n701_o ? select_tbs_delta_steps_uart : n1031_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1546:9  */
  assign n1055_o = n701_o ? 1'b0 : n1033_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1057_o = atbs_max_delta_steps_uart ? 1'b0 : n1035_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1059_o = atbs_max_delta_steps_uart ? 1'b0 : n1037_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1060_o = atbs_max_delta_steps_uart ? analog_trigger_uart : n1038_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1061_o = atbs_max_delta_steps_uart ? sc_noc_vcm_generator_uart : n1039_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1062_o = atbs_max_delta_steps_uart ? sc_noc_bias_uart : n1040_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1063_o = atbs_max_delta_steps_uart ? sc_noc_cmfb_uart : n1041_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1064_o = atbs_max_delta_steps_uart ? sc_noc_res_uart : n1042_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1065_o = atbs_max_delta_steps_uart ? select_cap_uart : n1043_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1066_o = atbs_max_delta_steps_uart ? baudrate_uart : n1044_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1067_o = atbs_max_delta_steps_uart ? tbs_virtual_delta_steps_uart : n1045_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1068_o = atbs_max_delta_steps_uart ? atbs_win_length_uart : n1046_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1070_o = atbs_max_delta_steps_uart ? 1'b0 : n1047_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1071_o = atbs_max_delta_steps_uart ? n699_o : atbs_max_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1072_o = atbs_max_delta_steps_uart ? trigger_start_mode_uart : n1049_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1073_o = atbs_max_delta_steps_uart ? adaptive_mode_uart : n1050_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1074_o = atbs_max_delta_steps_uart ? signal_select_in_uart : n1051_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1075_o = atbs_max_delta_steps_uart ? enable_analog_uart : n1052_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1076_o = atbs_max_delta_steps_uart ? select_tbs_delta_steps_uart : n1053_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1534:7  */
  assign n1078_o = atbs_max_delta_steps_uart ? 1'b0 : n1055_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1080_o = atbs_win_length_uart ? 1'b0 : n1057_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1082_o = atbs_win_length_uart ? 1'b0 : n1059_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1083_o = atbs_win_length_uart ? analog_trigger_uart : n1060_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1084_o = atbs_win_length_uart ? sc_noc_vcm_generator_uart : n1061_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1085_o = atbs_win_length_uart ? sc_noc_bias_uart : n1062_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1086_o = atbs_win_length_uart ? sc_noc_cmfb_uart : n1063_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1087_o = atbs_win_length_uart ? sc_noc_res_uart : n1064_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1088_o = atbs_win_length_uart ? select_cap_uart : n1065_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1089_o = atbs_win_length_uart ? baudrate_uart : n1066_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1090_o = atbs_win_length_uart ? tbs_virtual_delta_steps_uart : n1067_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1092_o = atbs_win_length_uart ? 1'b0 : n1068_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1093_o = atbs_win_length_uart ? n683_o : atbs_win_length_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1094_o = atbs_win_length_uart ? atbs_max_delta_steps_uart : n1070_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1095_o = atbs_win_length_uart ? atbs_max_delta_steps_adj_uart : n1071_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1096_o = atbs_win_length_uart ? trigger_start_mode_uart : n1072_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1097_o = atbs_win_length_uart ? adaptive_mode_uart : n1073_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1098_o = atbs_win_length_uart ? signal_select_in_uart : n1074_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1099_o = atbs_win_length_uart ? enable_analog_uart : n1075_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1100_o = atbs_win_length_uart ? select_tbs_delta_steps_uart : n1076_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1519:7  */
  assign n1102_o = atbs_win_length_uart ? 1'b0 : n1078_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1104_o = tbs_virtual_delta_steps_uart ? 1'b0 : n1080_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1106_o = tbs_virtual_delta_steps_uart ? 1'b0 : n1082_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1107_o = tbs_virtual_delta_steps_uart ? analog_trigger_uart : n1083_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1108_o = tbs_virtual_delta_steps_uart ? sc_noc_vcm_generator_uart : n1084_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1109_o = tbs_virtual_delta_steps_uart ? sc_noc_bias_uart : n1085_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1110_o = tbs_virtual_delta_steps_uart ? sc_noc_cmfb_uart : n1086_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1111_o = tbs_virtual_delta_steps_uart ? sc_noc_res_uart : n1087_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1112_o = tbs_virtual_delta_steps_uart ? select_cap_uart : n1088_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1113_o = tbs_virtual_delta_steps_uart ? baudrate_uart : n1089_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1115_o = tbs_virtual_delta_steps_uart ? 1'b0 : n1090_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1116_o = tbs_virtual_delta_steps_uart ? n659_o : tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1117_o = tbs_virtual_delta_steps_uart ? atbs_win_length_uart : n1092_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1118_o = tbs_virtual_delta_steps_uart ? atbs_win_length_adj_uart : n1093_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1119_o = tbs_virtual_delta_steps_uart ? atbs_max_delta_steps_uart : n1094_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1120_o = tbs_virtual_delta_steps_uart ? atbs_max_delta_steps_adj_uart : n1095_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1121_o = tbs_virtual_delta_steps_uart ? trigger_start_mode_uart : n1096_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1122_o = tbs_virtual_delta_steps_uart ? adaptive_mode_uart : n1097_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1123_o = tbs_virtual_delta_steps_uart ? signal_select_in_uart : n1098_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1124_o = tbs_virtual_delta_steps_uart ? enable_analog_uart : n1099_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1125_o = tbs_virtual_delta_steps_uart ? select_tbs_delta_steps_uart : n1100_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1508:7  */
  assign n1127_o = tbs_virtual_delta_steps_uart ? 1'b0 : n1102_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1129_o = baudrate_uart ? 1'b1 : n1104_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1131_o = baudrate_uart ? 1'b0 : n1106_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1132_o = baudrate_uart ? analog_trigger_uart : n1107_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1133_o = baudrate_uart ? sc_noc_vcm_generator_uart : n1108_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1134_o = baudrate_uart ? sc_noc_bias_uart : n1109_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1135_o = baudrate_uart ? sc_noc_cmfb_uart : n1110_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1136_o = baudrate_uart ? sc_noc_res_uart : n1111_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1137_o = baudrate_uart ? select_cap_uart : n1112_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1139_o = baudrate_uart ? 1'b0 : n1113_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1140_o = baudrate_uart ? n643_o : baudrate_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1141_o = baudrate_uart ? tbs_virtual_delta_steps_uart : n1115_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1142_o = baudrate_uart ? tbs_virtual_delta_steps_adj_uart : n1116_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1143_o = baudrate_uart ? atbs_win_length_uart : n1117_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1144_o = baudrate_uart ? atbs_win_length_adj_uart : n1118_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1145_o = baudrate_uart ? atbs_max_delta_steps_uart : n1119_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1146_o = baudrate_uart ? atbs_max_delta_steps_adj_uart : n1120_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1147_o = baudrate_uart ? trigger_start_mode_uart : n1121_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1148_o = baudrate_uart ? adaptive_mode_uart : n1122_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1149_o = baudrate_uart ? signal_select_in_uart : n1123_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1150_o = baudrate_uart ? enable_analog_uart : n1124_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1151_o = baudrate_uart ? select_tbs_delta_steps_uart : n1125_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1496:7  */
  assign n1153_o = baudrate_uart ? 1'b0 : n1127_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1155_o = select_cap_uart ? 1'b0 : n1129_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1157_o = select_cap_uart ? 1'b0 : n1131_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1158_o = select_cap_uart ? analog_trigger_uart : n1132_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1159_o = select_cap_uart ? sc_noc_vcm_generator_uart : n1133_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1160_o = select_cap_uart ? sc_noc_bias_uart : n1134_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1161_o = select_cap_uart ? sc_noc_cmfb_uart : n1135_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1162_o = select_cap_uart ? sc_noc_res_uart : n1136_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1164_o = select_cap_uart ? 1'b0 : n1137_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1165_o = select_cap_uart ? n627_o : select_cap_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1166_o = select_cap_uart ? baudrate_uart : n1139_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1167_o = select_cap_uart ? baudrate_adj_uart : n1140_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1168_o = select_cap_uart ? tbs_virtual_delta_steps_uart : n1141_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1169_o = select_cap_uart ? tbs_virtual_delta_steps_adj_uart : n1142_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1170_o = select_cap_uart ? atbs_win_length_uart : n1143_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1171_o = select_cap_uart ? atbs_win_length_adj_uart : n1144_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1172_o = select_cap_uart ? atbs_max_delta_steps_uart : n1145_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1173_o = select_cap_uart ? atbs_max_delta_steps_adj_uart : n1146_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1174_o = select_cap_uart ? trigger_start_mode_uart : n1147_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1175_o = select_cap_uart ? adaptive_mode_uart : n1148_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1176_o = select_cap_uart ? signal_select_in_uart : n1149_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1177_o = select_cap_uart ? enable_analog_uart : n1150_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1178_o = select_cap_uart ? select_tbs_delta_steps_uart : n1151_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1485:7  */
  assign n1180_o = select_cap_uart ? 1'b0 : n1153_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1182_o = sc_noc_res_uart ? 1'b0 : n1155_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1184_o = sc_noc_res_uart ? 1'b0 : n1157_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1185_o = sc_noc_res_uart ? analog_trigger_uart : n1158_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1186_o = sc_noc_res_uart ? sc_noc_vcm_generator_uart : n1159_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1187_o = sc_noc_res_uart ? sc_noc_bias_uart : n1160_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1188_o = sc_noc_res_uart ? sc_noc_cmfb_uart : n1161_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1190_o = sc_noc_res_uart ? 1'b0 : n1162_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1191_o = sc_noc_res_uart ? n611_o : sc_noc_res_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1192_o = sc_noc_res_uart ? select_cap_uart : n1164_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1193_o = sc_noc_res_uart ? select_cap_adj_uart : n1165_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1194_o = sc_noc_res_uart ? baudrate_uart : n1166_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1195_o = sc_noc_res_uart ? baudrate_adj_uart : n1167_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1196_o = sc_noc_res_uart ? tbs_virtual_delta_steps_uart : n1168_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1197_o = sc_noc_res_uart ? tbs_virtual_delta_steps_adj_uart : n1169_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1198_o = sc_noc_res_uart ? atbs_win_length_uart : n1170_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1199_o = sc_noc_res_uart ? atbs_win_length_adj_uart : n1171_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1200_o = sc_noc_res_uart ? atbs_max_delta_steps_uart : n1172_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1201_o = sc_noc_res_uart ? atbs_max_delta_steps_adj_uart : n1173_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1202_o = sc_noc_res_uart ? trigger_start_mode_uart : n1174_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1203_o = sc_noc_res_uart ? adaptive_mode_uart : n1175_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1204_o = sc_noc_res_uart ? signal_select_in_uart : n1176_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1205_o = sc_noc_res_uart ? enable_analog_uart : n1177_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1206_o = sc_noc_res_uart ? select_tbs_delta_steps_uart : n1178_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1478:7  */
  assign n1208_o = sc_noc_res_uart ? 1'b0 : n1180_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1210_o = sc_noc_cmfb_uart ? 1'b0 : n1182_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1212_o = sc_noc_cmfb_uart ? 1'b0 : n1184_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1213_o = sc_noc_cmfb_uart ? analog_trigger_uart : n1185_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1214_o = sc_noc_cmfb_uart ? sc_noc_vcm_generator_uart : n1186_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1215_o = sc_noc_cmfb_uart ? sc_noc_bias_uart : n1187_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1217_o = sc_noc_cmfb_uart ? 1'b0 : n1188_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1218_o = sc_noc_cmfb_uart ? n603_o : sc_noc_cmfb_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1219_o = sc_noc_cmfb_uart ? sc_noc_res_uart : n1190_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1220_o = sc_noc_cmfb_uart ? sc_noc_res_period_adj_uart : n1191_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1221_o = sc_noc_cmfb_uart ? select_cap_uart : n1192_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1222_o = sc_noc_cmfb_uart ? select_cap_adj_uart : n1193_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1223_o = sc_noc_cmfb_uart ? baudrate_uart : n1194_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1224_o = sc_noc_cmfb_uart ? baudrate_adj_uart : n1195_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1225_o = sc_noc_cmfb_uart ? tbs_virtual_delta_steps_uart : n1196_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1226_o = sc_noc_cmfb_uart ? tbs_virtual_delta_steps_adj_uart : n1197_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1227_o = sc_noc_cmfb_uart ? atbs_win_length_uart : n1198_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1228_o = sc_noc_cmfb_uart ? atbs_win_length_adj_uart : n1199_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1229_o = sc_noc_cmfb_uart ? atbs_max_delta_steps_uart : n1200_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1230_o = sc_noc_cmfb_uart ? atbs_max_delta_steps_adj_uart : n1201_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1231_o = sc_noc_cmfb_uart ? trigger_start_mode_uart : n1202_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1232_o = sc_noc_cmfb_uart ? adaptive_mode_uart : n1203_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1233_o = sc_noc_cmfb_uart ? signal_select_in_uart : n1204_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1234_o = sc_noc_cmfb_uart ? enable_analog_uart : n1205_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1235_o = sc_noc_cmfb_uart ? select_tbs_delta_steps_uart : n1206_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1469:7  */
  assign n1237_o = sc_noc_cmfb_uart ? 1'b0 : n1208_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1239_o = sc_noc_bias_uart ? 1'b0 : n1210_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1241_o = sc_noc_bias_uart ? 1'b0 : n1212_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1242_o = sc_noc_bias_uart ? analog_trigger_uart : n1213_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1243_o = sc_noc_bias_uart ? sc_noc_vcm_generator_uart : n1214_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1245_o = sc_noc_bias_uart ? 1'b0 : n1215_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1246_o = sc_noc_bias_uart ? n591_o : sc_noc_bias_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1247_o = sc_noc_bias_uart ? sc_noc_cmfb_uart : n1217_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1248_o = sc_noc_bias_uart ? sc_noc_cmfb_period_adj_uart : n1218_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1249_o = sc_noc_bias_uart ? sc_noc_res_uart : n1219_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1250_o = sc_noc_bias_uart ? sc_noc_res_period_adj_uart : n1220_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1251_o = sc_noc_bias_uart ? select_cap_uart : n1221_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1252_o = sc_noc_bias_uart ? select_cap_adj_uart : n1222_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1253_o = sc_noc_bias_uart ? baudrate_uart : n1223_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1254_o = sc_noc_bias_uart ? baudrate_adj_uart : n1224_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1255_o = sc_noc_bias_uart ? tbs_virtual_delta_steps_uart : n1225_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1256_o = sc_noc_bias_uart ? tbs_virtual_delta_steps_adj_uart : n1226_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1257_o = sc_noc_bias_uart ? atbs_win_length_uart : n1227_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1258_o = sc_noc_bias_uart ? atbs_win_length_adj_uart : n1228_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1259_o = sc_noc_bias_uart ? atbs_max_delta_steps_uart : n1229_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1260_o = sc_noc_bias_uart ? atbs_max_delta_steps_adj_uart : n1230_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1261_o = sc_noc_bias_uart ? trigger_start_mode_uart : n1231_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1262_o = sc_noc_bias_uart ? adaptive_mode_uart : n1232_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1263_o = sc_noc_bias_uart ? signal_select_in_uart : n1233_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1264_o = sc_noc_bias_uart ? enable_analog_uart : n1234_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1265_o = sc_noc_bias_uart ? select_tbs_delta_steps_uart : n1235_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1460:7  */
  assign n1267_o = sc_noc_bias_uart ? 1'b0 : n1237_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1269_o = sc_noc_vcm_generator_uart ? 1'b0 : n1239_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1271_o = sc_noc_vcm_generator_uart ? 1'b0 : n1241_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1272_o = sc_noc_vcm_generator_uart ? analog_trigger_uart : n1242_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1274_o = sc_noc_vcm_generator_uart ? 1'b0 : n1243_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1275_o = sc_noc_vcm_generator_uart ? n579_o : sc_noc_vcm_generator_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1276_o = sc_noc_vcm_generator_uart ? sc_noc_bias_uart : n1245_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1277_o = sc_noc_vcm_generator_uart ? sc_noc_bias_period_adj_uart : n1246_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1278_o = sc_noc_vcm_generator_uart ? sc_noc_cmfb_uart : n1247_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1279_o = sc_noc_vcm_generator_uart ? sc_noc_cmfb_period_adj_uart : n1248_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1280_o = sc_noc_vcm_generator_uart ? sc_noc_res_uart : n1249_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1281_o = sc_noc_vcm_generator_uart ? sc_noc_res_period_adj_uart : n1250_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1282_o = sc_noc_vcm_generator_uart ? select_cap_uart : n1251_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1283_o = sc_noc_vcm_generator_uart ? select_cap_adj_uart : n1252_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1284_o = sc_noc_vcm_generator_uart ? baudrate_uart : n1253_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1285_o = sc_noc_vcm_generator_uart ? baudrate_adj_uart : n1254_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1286_o = sc_noc_vcm_generator_uart ? tbs_virtual_delta_steps_uart : n1255_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1287_o = sc_noc_vcm_generator_uart ? tbs_virtual_delta_steps_adj_uart : n1256_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1288_o = sc_noc_vcm_generator_uart ? atbs_win_length_uart : n1257_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1289_o = sc_noc_vcm_generator_uart ? atbs_win_length_adj_uart : n1258_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1290_o = sc_noc_vcm_generator_uart ? atbs_max_delta_steps_uart : n1259_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1291_o = sc_noc_vcm_generator_uart ? atbs_max_delta_steps_adj_uart : n1260_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1292_o = sc_noc_vcm_generator_uart ? trigger_start_mode_uart : n1261_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1293_o = sc_noc_vcm_generator_uart ? adaptive_mode_uart : n1262_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1294_o = sc_noc_vcm_generator_uart ? signal_select_in_uart : n1263_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1295_o = sc_noc_vcm_generator_uart ? enable_analog_uart : n1264_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1296_o = sc_noc_vcm_generator_uart ? select_tbs_delta_steps_uart : n1265_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1451:7  */
  assign n1298_o = sc_noc_vcm_generator_uart ? 1'b0 : n1267_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1300_o = analog_trigger_uart ? 1'b0 : n1269_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1302_o = analog_trigger_uart ? 1'b0 : n1271_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1304_o = analog_trigger_uart ? 1'b0 : n1272_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1305_o = n1338_o ? n567_o : analog_trigger_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1306_o = analog_trigger_uart ? sc_noc_vcm_generator_uart : n1274_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1307_o = analog_trigger_uart ? sc_noc_vcm_generator_period_adj_uart : n1275_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1308_o = analog_trigger_uart ? sc_noc_bias_uart : n1276_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1309_o = analog_trigger_uart ? sc_noc_bias_period_adj_uart : n1277_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1310_o = analog_trigger_uart ? sc_noc_cmfb_uart : n1278_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1311_o = analog_trigger_uart ? sc_noc_cmfb_period_adj_uart : n1279_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1312_o = analog_trigger_uart ? sc_noc_res_uart : n1280_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1313_o = analog_trigger_uart ? sc_noc_res_period_adj_uart : n1281_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1314_o = analog_trigger_uart ? select_cap_uart : n1282_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1315_o = analog_trigger_uart ? select_cap_adj_uart : n1283_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1316_o = analog_trigger_uart ? baudrate_uart : n1284_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1317_o = analog_trigger_uart ? baudrate_adj_uart : n1285_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1318_o = analog_trigger_uart ? tbs_virtual_delta_steps_uart : n1286_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1319_o = analog_trigger_uart ? tbs_virtual_delta_steps_adj_uart : n1287_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1320_o = analog_trigger_uart ? atbs_win_length_uart : n1288_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1321_o = analog_trigger_uart ? atbs_win_length_adj_uart : n1289_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1322_o = analog_trigger_uart ? atbs_max_delta_steps_uart : n1290_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1323_o = analog_trigger_uart ? atbs_max_delta_steps_adj_uart : n1291_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1324_o = analog_trigger_uart ? trigger_start_mode_uart : n1292_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1325_o = analog_trigger_uart ? adaptive_mode_uart : n1293_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1326_o = analog_trigger_uart ? signal_select_in_uart : n1294_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1327_o = analog_trigger_uart ? enable_analog_uart : n1295_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1328_o = analog_trigger_uart ? select_tbs_delta_steps_uart : n1296_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1438:7  */
  assign n1330_o = analog_trigger_uart ? 1'b0 : n1298_o;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1332_o = uart_rx_data_strb ? n1300_o : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1335_o = uart_rx_data_strb ? n1302_o : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1337_o = uart_rx_data_strb ? n1304_o : analog_trigger_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1338_o = analog_trigger_uart & uart_rx_data_strb;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1339_o = uart_rx_data_strb ? n1306_o : sc_noc_vcm_generator_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1340_o = uart_rx_data_strb ? n1307_o : sc_noc_vcm_generator_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1341_o = uart_rx_data_strb ? n1308_o : sc_noc_bias_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1342_o = uart_rx_data_strb ? n1309_o : sc_noc_bias_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1343_o = uart_rx_data_strb ? n1310_o : sc_noc_cmfb_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1344_o = uart_rx_data_strb ? n1311_o : sc_noc_cmfb_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1345_o = uart_rx_data_strb ? n1312_o : sc_noc_res_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1346_o = uart_rx_data_strb ? n1313_o : sc_noc_res_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1347_o = uart_rx_data_strb ? n1314_o : select_cap_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1348_o = uart_rx_data_strb ? n1315_o : select_cap_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1349_o = uart_rx_data_strb ? n1316_o : baudrate_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1350_o = uart_rx_data_strb ? n1317_o : baudrate_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1351_o = uart_rx_data_strb ? n1318_o : tbs_virtual_delta_steps_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1352_o = uart_rx_data_strb ? n1319_o : tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1353_o = uart_rx_data_strb ? n1320_o : atbs_win_length_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1354_o = uart_rx_data_strb ? n1321_o : atbs_win_length_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1355_o = uart_rx_data_strb ? n1322_o : atbs_max_delta_steps_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1356_o = uart_rx_data_strb ? n1323_o : atbs_max_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1357_o = uart_rx_data_strb ? n1324_o : trigger_start_mode_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1358_o = uart_rx_data_strb ? n1325_o : adaptive_mode_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1359_o = uart_rx_data_strb ? n1326_o : signal_select_in_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1360_o = uart_rx_data_strb ? n1327_o : enable_analog_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1361_o = uart_rx_data_strb ? n1328_o : select_tbs_delta_steps_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1437:5  */
  assign n1363_o = uart_rx_data_strb ? n1330_o : 1'b0;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1604:82  */
  assign n1366_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1604:54  */
  assign n1367_o = n1366_o ? trigger_start_mode_debounced : trigger_start_mode_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1605:72  */
  assign n1368_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1605:44  */
  assign n1369_o = n1368_o ? adaptive_mode_debounced : adaptive_mode_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1606:78  */
  assign n1370_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1606:50  */
  assign n1371_o = n1370_o ? signal_select_in_debounced : signal_select_in_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1607:65  */
  assign n1372_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1607:37  */
  assign n1373_o = n1372_o ? enable_debounced : enable_analog_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1608:90  */
  assign n1374_o = ~control_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1608:62  */
  assign n1375_o = n1374_o ? select_tbs_delta_steps_debounced : select_tbs_delta_steps_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1640:39  */
  assign n1376_o = enable_analog ? select_cap_adj_uart : 3'b000;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1643:20  */
  assign n1378_o = ~signal_select_in;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:576:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1379_q <= 1'b0;
    else
      n1379_q <= adaptive_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:576:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1380_q <= 1'b0;
    else
      n1380_q <= control_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:576:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1381_q <= 1'b0;
    else
      n1381_q <= signal_select_in_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:576:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1382_q <= 1'b0;
    else
      n1382_q <= select_tbs_delta_steps_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:576:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1383_q <= 1'b0;
    else
      n1383_q <= trigger_start_mode_debounced;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:576:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1384_q <= 1'b0;
    else
      n1384_q <= trigger_start_sampling_sync;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1087:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1385_q <= 1'b0;
    else
      n1385_q <= next_detection_en;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:764:17  */
  always @(posedge clock_i or posedge reset_entity)
    if (reset_entity)
      n1386_q <= 1'b0;
    else
      n1386_q <= next_tbs_increasing_en;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:764:17  */
  always @(posedge clock_i or posedge reset_entity)
    if (reset_entity)
      n1387_q <= 1'b0;
    else
      n1387_q <= next_tbs_decreasing_en;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1087:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1388_q <= 1'b0;
    else
      n1388_q <= next_clear_dac;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1087:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1389_q <= 1'b0;
    else
      n1389_q <= next_select_enable_write;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1087:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1390_q <= 1'b0;
    else
      n1390_q <= next_enable_read;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1391_q <= 1'b0;
    else
      n1391_q <= next_analog_trigger_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1392_q <= 7'b0000111;
    else
      n1392_q <= next_analog_trigger_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1393_q <= 1'b0;
    else
      n1393_q <= next_sc_noc_vcm_generator_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1394_q <= 8'b01111111;
    else
      n1394_q <= next_sc_noc_vcm_generator_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1395_q <= 1'b0;
    else
      n1395_q <= next_sc_noc_bias_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1396_q <= 8'b01111111;
    else
      n1396_q <= next_sc_noc_bias_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1397_q <= 1'b0;
    else
      n1397_q <= next_sc_noc_cmfb_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1398_q <= 8'b01111111;
    else
      n1398_q <= next_sc_noc_cmfb_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1399_q <= 1'b0;
    else
      n1399_q <= next_sc_noc_res_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1400_q <= 11'b01111111111;
    else
      n1400_q <= next_sc_noc_res_period_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1401_q <= 1'b0;
    else
      n1401_q <= next_select_cap_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1402_q <= 3'b111;
    else
      n1402_q <= next_select_cap_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1403_q <= 1'b0;
    else
      n1403_q <= next_baudrate_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1404_q <= 9'b001000101;
    else
      n1404_q <= next_baudrate_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1405_q <= 1'b0;
    else
      n1405_q <= next_tbs_virtual_delta_steps_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1406_q <= 7'b0000100;
    else
      n1406_q <= next_tbs_virtual_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1407_q <= 1'b0;
    else
      n1407_q <= next_atbs_win_length_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1408_q <= 19'b0000111110100000000;
    else
      n1408_q <= next_atbs_win_length_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1409_q <= 1'b0;
    else
      n1409_q <= next_atbs_max_delta_steps_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1410_q <= 7'b0010000;
    else
      n1410_q <= next_atbs_max_delta_steps_adj_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1056:17  */
  always @(posedge clock_i or posedge reset_entity)
    if (reset_entity)
      n1411_q <= 20'b00000000000000000000;
    else
      n1411_q <= next_main_counter_value;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1087:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1412_q <= 3'b001;
    else
      n1412_q <= next_state;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1087:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1413_q <= 1'b0;
    else
      n1413_q <= next_idle_led;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1087:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1414_q <= 1'b0;
    else
      n1414_q <= next_overflow_led;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1087:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1415_q <= 1'b0;
    else
      n1415_q <= next_underflow_led;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1416_q <= 1'b1;
    else
      n1416_q <= next_trigger_start_mode_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1417_q <= 1'b0;
    else
      n1417_q <= next_adaptive_mode_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1418_q <= 1'b1;
    else
      n1418_q <= next_signal_select_in_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1419_q <= 1'b1;
    else
      n1419_q <= next_enable_analog_uart;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_ea.vhd:1334:17  */
  always @(posedge clock_i or posedge reset_i)
    if (reset_i)
      n1420_q <= 1'b1;
    else
      n1420_q <= next_select_tbs_delta_steps_uart;
endmodule

module atbs_core_fixed_window_board
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
   output phi_comp_o,
   output phi_dac_upper_o,
   output [3:0] dac_upper_o,
   output phi_dac_lower_o,
   output [3:0] dac_lower_o,
   output phi_vcm_generator_1_o,
   output phi_vcm_generator_2_o,
   output phi_bias_1_o,
   output phi_bias_2_o,
   output phi_cmfb_1_o,
   output phi_cmfb_2_o,
   output phi_res_1_o,
   output phi_res_2_o,
   output bio_amp_en_o,
   output [2:0] select_cap_o,
   output select_spdt_o,
   output idle_led_o,
   output overflow_led_o,
   output underflow_led_o,
   output spike_o,
   output uart_tx_o);
  wire reset;
  wire n21_o;
  wire atbs_core_0_phi_comp_o;
  wire atbs_core_0_phi_dac_upper_o;
  wire [3:0] atbs_core_0_dac_upper_o;
  wire atbs_core_0_phi_dac_lower_o;
  wire [3:0] atbs_core_0_dac_lower_o;
  wire atbs_core_0_phi_vcm_generator_1_o;
  wire atbs_core_0_phi_vcm_generator_2_o;
  wire atbs_core_0_phi_bias_1_o;
  wire atbs_core_0_phi_bias_2_o;
  wire atbs_core_0_phi_cmfb_1_o;
  wire atbs_core_0_phi_cmfb_2_o;
  wire atbs_core_0_phi_res_1_o;
  wire atbs_core_0_phi_res_2_o;
  wire atbs_core_0_bio_amp_en_o;
  wire [2:0] atbs_core_0_select_cap_o;
  wire atbs_core_0_select_spdt_o;
  wire atbs_core_0_idle_led_o;
  wire atbs_core_0_overflow_led_o;
  wire atbs_core_0_underflow_led_o;
  wire atbs_core_0_spike_o;
  wire atbs_core_0_uart_tx_o;
  assign phi_comp_o = atbs_core_0_phi_comp_o; //(module output)
  assign phi_dac_upper_o = atbs_core_0_phi_dac_upper_o; //(module output)
  assign dac_upper_o = atbs_core_0_dac_upper_o; //(module output)
  assign phi_dac_lower_o = atbs_core_0_phi_dac_lower_o; //(module output)
  assign dac_lower_o = atbs_core_0_dac_lower_o; //(module output)
  assign phi_vcm_generator_1_o = atbs_core_0_phi_vcm_generator_1_o; //(module output)
  assign phi_vcm_generator_2_o = atbs_core_0_phi_vcm_generator_2_o; //(module output)
  assign phi_bias_1_o = atbs_core_0_phi_bias_1_o; //(module output)
  assign phi_bias_2_o = atbs_core_0_phi_bias_2_o; //(module output)
  assign phi_cmfb_1_o = atbs_core_0_phi_cmfb_1_o; //(module output)
  assign phi_cmfb_2_o = atbs_core_0_phi_cmfb_2_o; //(module output)
  assign phi_res_1_o = atbs_core_0_phi_res_1_o; //(module output)
  assign phi_res_2_o = atbs_core_0_phi_res_2_o; //(module output)
  assign bio_amp_en_o = atbs_core_0_bio_amp_en_o; //(module output)
  assign select_cap_o = atbs_core_0_select_cap_o; //(module output)
  assign select_spdt_o = atbs_core_0_select_spdt_o; //(module output)
  assign idle_led_o = atbs_core_0_idle_led_o; //(module output)
  assign overflow_led_o = atbs_core_0_overflow_led_o; //(module output)
  assign underflow_led_o = atbs_core_0_underflow_led_o; //(module output)
  assign spike_o = atbs_core_0_spike_o; //(module output)
  assign uart_tx_o = atbs_core_0_uart_tx_o; //(module output)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_board.vhd:87:8  */
  assign reset = n21_o; // (signal)
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_board.vhd:91:18  */
  assign n21_o = ~reset_n_i;
  /* ../../../vhdl/atbs_core_fixed_window/rtl/atbs_core_fixed_window_board.vhd:94:9  */
  atbs_core_fixed_window_8000000_20_800000_16_65536_2_2_127_0_2_2_3_7_18_262144_8_7_7_128_8_256_11_2048_6_19_9_417_8 atbs_core_0 (
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
    .phi_comp_o(atbs_core_0_phi_comp_o),
    .phi_dac_upper_o(atbs_core_0_phi_dac_upper_o),
    .dac_upper_o(atbs_core_0_dac_upper_o),
    .phi_dac_lower_o(atbs_core_0_phi_dac_lower_o),
    .dac_lower_o(atbs_core_0_dac_lower_o),
    .phi_vcm_generator_1_o(atbs_core_0_phi_vcm_generator_1_o),
    .phi_vcm_generator_2_o(atbs_core_0_phi_vcm_generator_2_o),
    .phi_bias_1_o(atbs_core_0_phi_bias_1_o),
    .phi_bias_2_o(atbs_core_0_phi_bias_2_o),
    .phi_cmfb_1_o(atbs_core_0_phi_cmfb_1_o),
    .phi_cmfb_2_o(atbs_core_0_phi_cmfb_2_o),
    .phi_res_1_o(atbs_core_0_phi_res_1_o),
    .phi_res_2_o(atbs_core_0_phi_res_2_o),
    .bio_amp_en_o(atbs_core_0_bio_amp_en_o),
    .select_cap_o(atbs_core_0_select_cap_o),
    .select_spdt_o(atbs_core_0_select_spdt_o),
    .idle_led_o(atbs_core_0_idle_led_o),
    .overflow_led_o(atbs_core_0_overflow_led_o),
    .underflow_led_o(atbs_core_0_underflow_led_o),
    .spike_o(atbs_core_0_spike_o),
    .uart_tx_o(atbs_core_0_uart_tx_o));
endmodule

