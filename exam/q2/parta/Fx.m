function y = Fx(x,n)
%FX Summary of this function goes here
%   Detailed explanation goes here
    if x == 0 
        y = 0;
    elseif x > 0 && x < 1
        %y = (2 * x + n)/ n;
        y = (n + 2*x - 2)/n;
    else
        y = 1;
    end
end