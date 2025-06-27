## Adaptive Threshold Based Sampling

#### ASIC: Fully-Differential Adaptive Fixed-Window Event-Based ADC

| Type         | Func                                            | Description                                                 |
| ------------ | ----------------------------------------------- | ----------------------------------------------------------- |
| Button       | reset                                           | reset                                                       |
| AWG / Button | trigger_start_sampling                          | manual sampling trigger (optional, instead of AWG trigger)  |
| Switch       | trigger_start_mode                              | '1' Start sampling on trigger - '0' Start sampling directly |
| Switch       | adaptive_mode                                   | '1' ATBS - '0' TBS                                          |
| Switch       | control_mode                                    | '1' UART - '0' Switches                                     |
| Switch       | signal_select_in                                | '1' BNC - '0' ECG                                           |
| Switch       | enable                                          | '1' Enable - '0' Disable                                    |
| Switch       | select_tbs_delta_steps                          | '1' "virtual" DAC resolution - '0' full DAC resolution      |
| UART         | trigger_start_mode                              | '1' Start sampling on trigger - '0' Start sampling directly |
| UART         | adaptive_mode                                   | '3' ATBS - '2' TBS                                          |
| UART         | signal_select_in                                | '5' BNC - '4' ECG                                           |
| UART         | enable                                          | '7' Enable - '6' Disable                                    |
| UART         | select_tbs_delta_steps                          | '9' "virtual" DAC resolution - '8' full DAC resolution      |
| UART         | update config.                                  | 'U'                                                         |
| UART         | start sampling                                  | 'S' (enter 2x)                                              |
| UART         | reset                                           | 'R'                                                         |
| UART         | analog trigger settings                         | 'T' and 'a' to 'e'                                          |
| UART         | SC NOC generator 1 (Vcm Generator) settings     | 'G' and 'a' to 'c'                                          |
| UART         | SC NOC generator 1 (Bias Circuit) settings      | 'I' and 'a' to 'c'                                          |
| UART         | SC NOC generator 1 (CMFB) settings              | 'C' and 'a' to 'c'                                          |
| UART         | SC NOC generator 2 (Feedback Resistor) settings | 'F' and 'a' to 'b'                                          |
| UART         | Capacitor C1 select                             | 'P' and 'a' to 'd'                                          |
| UART         | UART baudrate                                   | 'B' and 'a' to 'd'                                          |
| UART         | TBS virtual delta steps                         | 'V' and 'a' to 'd'                                          |
| UART         | ATBS win_length / time_win                      | 'W' and 'a' to 'f'                                          |
| UART         | ATBS deltasteps_max                             | 'D' and 'a' to 'd'                                          |
| LED          | idle                                            | '1'... Lights up, if Main FSM is in idle state!             |
| LED          | overflow                                        | '1'... Lights up, if FIFO is full!                          |
| LED          | underflow                                       | '1'... Lights up, if FIFO is empty!                         |
