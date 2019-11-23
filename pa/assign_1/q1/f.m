function y = f(x)
%F Summary of this function goes here
%   Detailed explanation goes here
    if x >= -4 && x < 0
        y = - x + 2;
    elseif x >= 0 && x <= 2
        y = 3 * x + 2;
    else
        y = 0;
    end
end