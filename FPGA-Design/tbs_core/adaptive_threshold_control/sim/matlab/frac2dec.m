function dec = frac2dec(fracstring)
%   B = length(fracstring);
%   BitVec = fracstring - '0'; % converts into bitvector
%   weights = [-1 2.^(-(1:(B-1)))];
%   dec = BitVec*weights.';

    [m,n] = size(fracstring);
    
    dec = zeros(m,1);
    for i = 1:m
        parts = strsplit(fracstring(i,:),'.');
        B1 = length(parts{1});
        B2 = length(parts{2});
        BitVec1 = parts{1} - '0';
        BitVec2 = parts{2} - '0';
        dec(i) = BitVec1*[-2.^(B1-1) 2.^(((B1-2):-1:0))].' + BitVec2*[2.^(-(1:(B2)))].';
    end
end 