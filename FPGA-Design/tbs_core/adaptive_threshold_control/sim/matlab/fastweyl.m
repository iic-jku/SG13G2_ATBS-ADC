function w = fastweyl(x)

%about factor 8 faster than below

if isempty(x)
  w = 0;
else
  c = cumsum(x);
  w = max(0,max(c))-min(0,min(c));
end

% m = prod(size(x));

% themax = 0; %init avoids second max calculation
% themin = 0; %init avoids second min calculation
% for i=1:m
  % currentsum = sum(x(1:i));
  % if currentsum > themax
    % themax = currentsum;
  % end
  
  % if currentsum < themin
    % themin = currentsum;
  % end
% end

% w = themax-themin;