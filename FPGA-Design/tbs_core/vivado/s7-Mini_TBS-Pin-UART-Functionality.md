## Adaptive Threshold Based Sampling

#### Xilinx Spartan-7 XC7S25-1FTGB196C (s7-Mini FPGA Board)

| Type   | Name | Func                       | Description                                                 |
| ------ | ---- | -------------------------- | ----------------------------------------------------------- |
| Button | S2   | reset                      | reset                                                       |
| Button | S3   | trigger_start_sampling     | manual sampling trigger (optional, instead of AWG trigger)  |
| Switch | S1_1 | trigger_start_mode         | '1' Start sampling on trigger - '0' Start sampling directly |
| Switch | S1_2 | adaptive_mode              | '1' ATBS - '0' TBS                                          |
| Switch | S1_3 | control_mode               | '1' UART - '0' Switches                                     |
| Switch | S1_4 | select_tbs_delta_steps     | '1' "virtual" DAC resolution - '0' full DAC resolution      |
| UART   | -    | trigger_start_mode         | '1' Start sampling on trigger - '0' Start sampling directly |
| UART   | -    | adaptive_mode              | '3' ATBS - '2' TBS                                          |
| UART   | -    | signal_select_in           | '5' BNC - '4' ECG                                           |
| UART   | -    | enable                     | '7' Enable - '6' Disable                                    |
| UART   | -    | select_tbs_delta_steps     | '9' "virtual" DAC resolution - '8' full DAC resolution      |
| UART   | -    | update config.             | 'U'                                                         |
| UART   | -    | start sampling             | 'S' (enter 2x)                                              |
| UART   | -    | reset                      | 'R'                                                         |
| UART   | -    | analog trigger settings    | 'T' and 'a' to 'f'                                          |
| UART   | -    | SC NOC generator settings  | 'C' and 'a' to 'c'                                          |
| UART   | -    | UART baudrate              | 'B' and 'a' to 'd'                                          |
| UART   | -    | TBS virtual delta steps    | 'V' and 'a' to 'e'                                          |
| UART   | -    | ATBS win_length / time_win | 'W' and 'a' to 'f'                                          |
| UART   | -    | ATBS deltasteps_max        | 'D' and 'a' to 'e'                                          |
| LED    | D1   | idle                       | '1'... Lights up, if Main FSM is in idle state!             |
| LED    | D2   | overflow                   | '1'... Lights up, if FIFO is full!                          |
| LED    | D3   | underflow                  | '1'... Lights up, if FIFO is empty!                         |
| LED    | D4   | ecg                        | '1'... Lights up, if ECG electrodes are connected!          |





