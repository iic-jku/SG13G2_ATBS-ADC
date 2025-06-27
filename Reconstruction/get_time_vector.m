function t = get_time_vector(spikes, time_counter_bitwidth)
    % Author: Günther Lindorfer, Anna Werzi
    % Last Modified: 26.07.2024
    % Description: Calculates the time vector for a given spike sequence.
    %              The absolute value of the spikes, give the current timer value. 
    %              A zero marks a timer overflow.

    amount_timer_ovf = 0; % amount of time overflows

    time_counter_max = 2^time_counter_bitwidth; 

    t = [];
    for i = 1:length(spikes) 
        if spikes(i) == 0 % increase timer overflows
            amount_timer_ovf = amount_timer_ovf + 1;
        else              % calculate next timestamp
            t(end+1) = amount_timer_ovf * time_counter_max + abs(spikes(i));
        end 
    end
end