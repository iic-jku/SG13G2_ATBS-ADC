function [y, time] = ethernet_data_receive(PAYLOAD_SIZE, RECEIVE_PORT, RECEIVE_IP, N)
    % Author: Manuel Feindert
    % Last Modified: 26.07.2024
    % Description: Read spikes via Ethernet.

    % Create the receiver for the ethernet
    udp_receive = dsp.UDPReceiver('LocalIPPort', RECEIVE_PORT, 'RemoteIPAddress', RECEIVE_IP, 'MaximumMessageLength', PAYLOAD_SIZE);
    
    setup(udp_receive);
    
    % Start measuring the time
    tic;

    % Receive everything
    y = [];
    for i = 1 : N
        abort = 0;
        frame = udp_receive().';
        while (isempty(frame))
            frame = udp_receive().';
            abort = abort + 1;
            
            if abort >= 10e6
                fprintf("ERROR! TIMEOUT!\r\n");
                return
            end
        end
        y = [y frame];
    end

    % Stop the time measurement
    time = toc;
    
    % Release the ethernet objects 
    release(udp_receive);
end