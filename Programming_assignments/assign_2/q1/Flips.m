function outcomes = Flips(n, p)
%FLIPS Summary of this function goes here
%   Detailed explanation goes here
    outcomes = [];
    for i = 1:n
        outcomes = [outcomes , FlipCoin(p)];
    end
end

