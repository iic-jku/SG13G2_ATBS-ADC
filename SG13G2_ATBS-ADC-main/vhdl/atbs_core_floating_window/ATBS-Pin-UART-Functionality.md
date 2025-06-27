## Adaptive Threshold Based Sampling

#### ASIC: Ideal Single-Ended Adaptive Floating-Window Event-Based ADC

| Type         | Func                       | Description                                                 |
| ------------ | -------------------------- | ----------------------------------------------------------- |
| Button       | reset                      | reset                                                       |
| AWG / Button | trigger_start_sampling     | manual sampling trigger (optional, instead of AWG trigger)  |
| Switch       | trigger_start_mode         | '1' Start sampling on trigger - '0' Start sampling directly |
| Switch       | adaptive_mode              | '1' ATBS - '0' TBS                                          |
| Switch       | control_mode               | '1' UART - '0' Switches                                     |
| Switch       | signal_select_in           | '1' BNC - '0' ECG                                           |
| Switch       | enable                     | '1' Enable - '0' Disable                                    |
| Switch       | select_tbs_delta_steps     | '1' "virtual" DAC resolution - '0' full DAC resolution      |
| UART         | trigger_start_mode         | '1' Start sampling on trigger - '0' Start sampling directly |
| UART         | adaptive_mode              | '3' ATBS - '2' TBS                                          |
| UART         | signal_select_in           | '5' BNC - '4' ECG                                           |
| UART         | enable                     | '7' Enable - '6' Disable                                    |
| UART         | select_tbs_delta_steps     | '9' "virtual" DAC resolution - '8' full DAC resolution      |
| UART         | update config.             | 'U'                                                         |
| UART         | start sampling             | 'S' (enter 2x)                                              |
| UART         | reset                      | 'R'                                                         |
| UART         | analog trigger settings    | 'T' and 'a' to 'f'                                          |
| UART         | SC NOC generator settings  | 'C' and 'a' to 'c'                                          |
| UART         | UART baudrate              | 'B' and 'a' to 'd'                                          |
| UART         | TBS virtual delta steps    | 'V' and 'a' to 'e'                                          |
| UART         | ATBS win_length / time_win | 'W' and 'a' to 'f'                                          |
| UART         | ATBS deltasteps_max        | 'D' and 'a' to 'e'                                          |
| LED          | idle                       | '1'... Lights up, if Main FSM is in idle state!             |
| LED          | overflow                   | '1'... Lights up, if FIFO is full!                          |
| LED          | underflow                  | '1'... Lights up, if FIFO is empty!                         |
