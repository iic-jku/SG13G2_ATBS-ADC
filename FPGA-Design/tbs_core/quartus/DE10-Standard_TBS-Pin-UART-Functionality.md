## Adaptive Threshold Based Sampling

#### Cyclone V: 5CSXFC6D6F31C6 (DE10-Standard FPGA Board)

| Type   | Name  | Func                       | Description                                                 |
| ------ | ----- | -------------------------- | ----------------------------------------------------------- |
| Button | KEY0  | reset                      | reset                                                       |
| Button | KEY1  | trigger_start_sampling     | manual sampling trigger (optional, instead of AWG trigger)  |
| Switch | SW0   | trigger_start_mode         | '1' Start sampling on trigger - '0' Start sampling directly |
| Switch | SW1   | adaptive_mode              | '1' ATBS - '0' TBS                                          |
| Switch | SW2   | control_mode               | '1' UART - '0' Switches                                     |
| Switch | SW3   | signal_select_in           | '1' BNC - '0' ECG                                           |
| Switch | SW4   | enable                     | '1' Enable - '0' Disable                                    |
| Switch | SW5   | select_tbs_delta_steps     | '1' "virtual" DAC resolution - '0' full DAC resolution      |
| Switch | SW6   | select_comparator_type     | '1' Modeling DT comparator - '0' Modeling CT comparator     |
| UART   | -     | trigger_start_mode         | '1' Start sampling on trigger - '0' Start sampling directly |
| UART   | -     | adaptive_mode              | '3' ATBS - '2' TBS                                          |
| UART   | -     | signal_select_in           | '5' BNC - '4' ECG                                           |
| UART   | -     | enable                     | '7' Enable - '6' Disable                                    |
| UART   | -     | select_tbs_delta_steps     | '9' "virtual" DAC resolution - '8' full DAC resolution      |
| UART   | -     | update config.             | 'U'                                                         |
| UART   | -     | start sampling             | 'S' (enter 2x)                                              |
| UART   | -     | reset                      | 'R'                                                         |
| UART   | -     | analog trigger settings    | 'T' and 'a' to 'f'                                          |
| UART   | -     | SC NOC generator settings  | 'C' and 'a' to 'c'                                          |
| UART   | -     | UART baudrate              | 'B' and 'a' to 'd'                                          |
| UART   | -     | TBS virtual delta steps    | 'V' and 'a' to 'e'                                          |
| UART   | -     | ATBS win_length / time_win | 'W' and 'a' to 'd'                                          |
| UART   | -     | ATBS deltasteps_max        | 'D' and 'a' to 'e'                                          |
| LED    | LEDR0 | idle                       | '1'... Lights up, if Main FSM is in idle state!             |
| LED    | LEDR1 | overflow                   | '1'... Lights up, if FIFO is full!                          |
| LED    | LEDR2 | underflow                  | '1'... Lights up, if FIFO is empty!                         |
| LED    | LEDR3 | ecg                        | '1'... Lights up, if ECG electrodes are connected!          |
