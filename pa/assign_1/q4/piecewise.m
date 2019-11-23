function y = piecewise(x)
%PIECEWISE Summary of this function goes here
%   Detailed explanation goes here
    y = zeros(1,length(x));
    for i=1:length(x)
        if rem(x(i),2) == 0 % even
            y(i) = 1 - 1/( x(i) + 1);
        else 
            y(i) = 1/(x(i) + 1);
        end
    end
end

