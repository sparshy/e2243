function plotnd()
%PLOTND Summary of this function goes here
%   Detailed explanation goes here
    % Plot normal distribution
    n = 50;
    p = 0.5;
    y = normpdf( [0:50], n*p , sqrt(n*p*(1-p)));
    plot([0:50], y)
end

