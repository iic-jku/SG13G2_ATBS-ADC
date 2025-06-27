function [xq, OC]=quantSFIXED(x,BInt, BFrac, TMode, SMode)
% tow's complement quantizer, BFrac has to be a negative number!!!!
% x     : input signal
% B     : word length (% of bits)
% TMode : truncation mode 
%         - truncation (rounding towards minus inifinity) 'f' 
%         - rounding to neares quantization level 'r' (round)
% xq    : quantized signal
 OC = 0;
 LSB = 2^(BFrac);
  % quantizer
  if (TMode == 0)
    xq = floor(x/LSB)*LSB;
  else
    %xq = nearest(x/LSB)*LSB;  
    xq = round(x/LSB)*LSB;  
  end

  xq_before = xq;
  % clipping (saturation)       
  if (SMode == 0)
    xq = min(2^BInt-LSB,xq);
    xq = max(-2^BInt,xq);
  else
    xqinLSB = (xq+2^BInt)/LSB; % has to be an integer number, do wrap in unsinged
    ModComp = 2^(BInt-BFrac+1);
    xqinLSB = mod(xqinLSB,ModComp);    
    xq = xqinLSB*LSB;
    xq = xq - 2^BInt;
  end
    

  if (xq ~= xq_before)
    OC = 1;
  end

end
