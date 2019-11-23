function outcome = FlipCoin(p)
%FLIPCOIN Summary of this function goes here
%   Detailed explanation goes here
    if nargin < 1
        p = 0.5;
    end
    r = rand();
    if r < p 
        outcome = 'H';
    else 
        outcome = 'T';
    end
end

