function x = normalize(x,p)
% normalize x such that its p norm is one
% if no p is given: p = 1

  if ~exist('p')
    p = 1;
  end

  x = x/norm(x,p);
end