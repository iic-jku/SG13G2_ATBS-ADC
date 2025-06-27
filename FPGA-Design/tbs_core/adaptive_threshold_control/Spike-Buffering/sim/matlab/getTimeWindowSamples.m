function [timestamps_reg_content, spike_reg_content, fill_cnt, abs_timestamps] = getTimeWindowSamples(f_clk, abs_t, time_stamps, buf_size, cnt_bits, win_length)
% Simulation of time window over send on delta samples

% INPUT
% f_clk         ... clock frequency in Hz
% abs_t         ... array of absolute time at spike/overflow since start of sampling
% time_stamps   ... hardware counter stamps at spike/overflow
% cnt_bits      ... bitwidth of harware counter
% win_length    ... length of time window in seconds

% OUTPUT
% spike_reg_content ... register content from all time windows
% fill_cnt          ... fill count of each window (number of samples)

% get clocks of overall sampling process
time_cnt = abs_t(end)*f_clk;
tmax = 2^cnt_bits;

% HW SIMULATION
spike_buf = zeros(1,buf_size);
overflow_marker = zeros(1,buf_size);
data_idx = 1;
spike_reg_content = {};
timestamps_reg_content = {};

fill_cnt = [];
abs_timestamps = [];
spike_reg_content{1}= spike_buf;
timestamps_reg_content{1} = spike_buf;

for t = 1:time_cnt
   
    if (t == time_cnt)
        continue
    end
    
   % modulo for freerunning cnt
   cnt = mod(t,2^cnt_bits);
   
   % mark buffer content when detecting overflow 
   % HW: overflow strobe
   if  cnt == 0
       overflow_marker = ones(1,buf_size);
   end
   
   % detect spike (SW: compare timestamps, HW: strb signal)
   if cnt == abs(time_stamps(data_idx))
       % HW: save spike and timestamp separatly
       % shift and add new spike
       if cnt ~= 0 % no overflow
           spike_buf(2:end) = spike_buf(1:end-1);
           overflow_marker(2:end) = overflow_marker(1:end-1);
           spike_buf(1) = time_stamps(data_idx);
           overflow_marker(1) = 0;
       end
       data_idx = data_idx + 1;
       
   else
   
       % continously check if window length is exceeded and remove spike
       % HW: parallel
       for i = 1:buf_size
           % HW: resize to cnt_bits + 1
           % necessary to prevend overflow in addition
           win_end = mod(abs(spike_buf(i)) + win_length,2*tmax);
           if overflow_marker(i) == 1
               % recalculate win_end if current time overflow occured
               win_end = mod(win_end - tmax,2*tmax);
           end
           if cnt >= win_end
              spike_buf(i) = 0;
           end
       end
   end
   
    % add spike reg content if changed
    if ~isequal(timestamps_reg_content{end},abs(spike_buf))
        fill_cnt(end+1) = length(nonzeros(spike_buf));
        spike_reg_content{end+1} = sign(spike_buf);
        timestamps_reg_content{end+1} = abs(spike_buf);
        abs_timestamps(end+1) = t;
    end
    
end
% remove init state of reg_content (not considered in hw)
spike_reg_content = spike_reg_content(2:end);
timestamps_reg_content = timestamps_reg_content(2:end);

end

