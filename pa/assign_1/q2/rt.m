function y = rt(t,T)
%RT Summary of this function goes here
%   Detailed explanation goes here
    if  t >= -T && t <= T
        y = (t + T )/ ( 2 * T);
    elseif t > T
        y = 1;
    else 
        y = 0;
    end
end

