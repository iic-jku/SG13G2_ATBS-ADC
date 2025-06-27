function [amp, valid_spikes, t, phantom_spikes, phantom_t] = reconstruction_TBS(data_s16, delta_v, abs_t, offset)
    % Author: Anna Werzi
    % Last Modified: 26.07.2024
    % Description: This function converts the signed 16-Bit data without overflow zeros to 
    % the corresponding spikes and TBS reconstructed signal.

    % INPUT:
    % data_s16      ... 16 bit signed data without overflow zeros
    % delta_v       ... delta voltage between spikes (threshold)
    % abs_t         ... absolut time in s corresponding to data samples
    % offset        ... offset voltage for asymetric supply

    % OUTPUT:
    % amp           ... reconstructed signal amplitude
    % valid_spikes  ... spikes triggered by input signal
    % t             ... absolute time stamps coressponding to valid_spikes
    % phantom_spikes... spikes which are not representing sample points (triggered after reference refreshing)
    % phantom_t     ... absolute time stamps coressponding to phantom_spikes

    spikes = sign(data_s16);
    v_init = offset + delta_v; % virtual last sample, "v_lower = offset" and "v_upper = offset + 2 * delta_v" after init

    amp = [];
    curr_amp = v_init;
    t = [];
    phantom_t = [];
    valid_spikes = [];
    phantom_spikes = [];
    spikes_valid = 1;
    prev_sign = 0;

    for i = 1:length(spikes)
        % amplitude tracking
        curr_amp = curr_amp + delta_v * (spikes(i));
        
        if prev_sign ~= spikes(i)   % check for a sign change
            spikes_valid = 1;       % signal is now captured
        end
        
        if spikes_valid == 0
            % discard datapoint of phantom spikes
            phantom_spikes(end + 1) = spikes(i);
            phantom_t(end + 1) = abs_t(i);
        else
            % valid signal sample
            amp(end + 1) = curr_amp;
            t(end + 1) = abs_t(i);
            valid_spikes(end + 1) = spikes(i);
        end

        prev_sign = spikes(i);  % update the previous sign
    end
end