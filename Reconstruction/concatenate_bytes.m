function data_signed = concatenate_bytes(data_u8, nbytes, bigendian)
    % Author: Anna Werzi
    % Last Modified: 26.07.2024
    % Description:  Concatenate 8-Bit unsigned data to (8*nbytes)-Bit signed data
    %               data_u8... received 8-Bit unsigned data
    %               nbytes... bytes per data / sample
    %               bigendian... '1' most significant byte first
    
    N = length(data_u8) / nbytes; % data_u8 length
    unsigned = zeros(N, 1);
    
    if bigendian == 1
        for b = 1:nbytes 
            unsigned = unsigned + data_u8(b:nbytes:end) * 2^(8*(nbytes-b));
        end
    else
        for b = 1:nbytes 
            unsigned = unsigned + data_u8(b:nbytes:end) * 2^(8*b);
        end
    end
      
    msb = 8 * nbytes;
    isNegative = bitget(unsigned, msb);
    
    % signed
    data_signed = bitset(unsigned, msb, 0) + (-2^(msb-1)) .* isNegative;
end