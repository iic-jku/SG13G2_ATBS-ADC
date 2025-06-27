function [amp, valid_spikes, t, phantom_spikes, phantom_t, thlist] = reconstruction_ATBS(data, thmin, thmax, ...
                                                                     dmin, dmax, abs_t, time_win, offset, ...
                                                                     buffer_size, vmax, mode)
    % Author: Anna Werzi
    % Last Modified: 26.07.2024
    % Description: This function converts the signed 16-Bit data with overflow zeros to 
    % the corresponding spikes and ATBS reconstructed signal.
    
    % INPUT:
    % data          ... 16-Bit signed data with overflow zeros
    % thmin         ... minimum voltage delta between subsequent spikes (threshold)
    % thmin         ... maximum voltage delta between subsequent spikes (threshold)
    % dmin          ... minimum Weyl's discrepancy for adaption algorithm
    % dmax          ... maximum Weyl's discrepancy for adaption algorithm
    % abs_t         ... absolut time in s corresponding to data samples
    % time_win      ... time window in which local Weyl's discrepancy is evaluated
    % offset        ... offset voltage for asymetric supply
    % buffer_size   ... estimated upper boundary for number of spike within the
    %                   chosen time window
    % vmax          ... voltage limit (restricted to remain below the supply range)
    % mode          ... '1' - adapt on overflow and spike, '0' - solely adapt on spike

    % OUTPUT:
    % amp           ... reconstructed signal amplitude
    % valid_spikes  ... spikes triggered by input signal
    % t             ... absolute time stamps coressponding to valid_spikes
    % phantom_spikes... spikes which are not representing sample points (triggered after overflow adaption)
    % phantom_t     ... absolute time stamps coressponding to phantom_spikes
    % thlist        ... list of adapted thresholds during sampling

    spikes = sign(nonzeros(data));
    v_init = offset + thmin; % virtual last sample, v_lower = offset and v_upper = offset + 2*thmin after init

    amp = [];
    t = [];
    phantom_t = [];
    valid_spikes = [];
    phantom_spikes = [];
    thlist = [];
    
    spikes_valid = 1;
    prev_sign = 0;
    curr_amp = v_init;
    th = thmin;
    i = 0; % spike index
    phantomspikes = 0;
    vmax = vmax + offset;

    start = find(data ~= 0, 1);

    for j = start : length(data) % data index
  
        adapt_on_spike = (data(j) ~= 0);
        adapt_on_overflow = (mode == 1) && (th ~= thmin && data(j) == 0 && data(j-1) == 0);

        if adapt_on_overflow 
            phantomspikes = log2(th / thmin); % maximal phantom spikes (if th is reduced (>>2) until thmin)
            th = th/2;
            % signal level (midpoint between DAC levels; curr_amp) does not change at overflow adaption
        end

        if adapt_on_spike % real or phantomspike
        
            i = i + 1;
            
            if prev_sign ~= spikes(i) % check for a sign change
                spikes_valid = 1; % signal is now captured
            end
            
            % amplitude and threshold tracking
            curr_amp = curr_amp + th * (spikes(i));
            
            % calculate weyls discrepancy over time window
            idx = i;
            spikereg = [];
            while (idx >= 1) && (abs_t(i) - abs_t(idx) <= time_win)
                if length(spikereg) < buffer_size
                    spikereg(end + 1) = spikes(idx); 
                    idx = idx - 1;
                else
                    disp(length(spikereg));
                    break
                end
            end
            csum = cumsum(spikereg);
            w = max(0, max(csum)) - min(0, min(csum));
            
            prevth = th;
            
            % adapt threshold
            if w > dmax && th < thmax
                th = th*2;
            elseif w < dmin && th > thmin
                th = th/2;
            end
            
            % remove phantomspikes caused by adaption at timer overflow
            if phantomspikes ~= 0
            
                if i ~= length(spikes) && spikes(i) ~= spikes(i+1) % direction change on next spike
                    phantomspikes = 0;
                elseif prevth == th % no th reduction
                    phantomspikes = 0; % future spikes are correct
                else
                    phantomspikes = phantomspikes - 1;
                end
            
                % keep track of dicarded spikes
                phantom_spikes(end+1) = spikes(i);
                phantom_t(end+1) = abs_t(i);
                
            % remove phantomspikes
            elseif spikes_valid == 0
                % keep track of dicarded spikes
                phantom_spikes(end+1) = spikes(i);
                phantom_t(end+1) = abs_t(i);
            else
                % valid signal sample
                amp(end+1) = curr_amp;
                thlist(end+1) = prevth;
                valid_spikes(end+1) = spikes(i);
                t(end+1) = abs_t(i);
            end
            
            % clipping
            if abs(curr_amp + spikes(i) * th) > vmax % check in both directions
                sprintf("curr_amp = %.3f, th = %.3f, prevth = %.3f", curr_amp, th, prevth);
                th = prevth; % shift window instead of adaption
                curr_amp = curr_amp + spikes(i) * (vmax - th - abs(curr_amp)); % adjust center of threshold window
                sprintf("curr_amp = %.3f and curr_amp + th = %.3f", curr_amp, curr_amp + sign(curr_amp) * th);
            end
        end
    end
end