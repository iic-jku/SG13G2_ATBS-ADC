function [w, n] = GetWeylWindow(y, y_idx, windowsize)

nWindows = ceil(max(y_idx)/windowsize);

w = zeros(nWindows,1);
n = zeros(nWindows,1);
  for i = 1:nWindows
    ilow = (i-1)*windowsize;
    ihigh = i*windowsize;
    
    y_slice = y( (y_idx>ilow) & (y_idx < ihigh) );
    if isempty(y_slice)
      w(i) = 0;
      n(i) = 0;
    else
      w(i) = fastweyl(y_slice);
      n(i) = length(y_slice);
    end
  end

end