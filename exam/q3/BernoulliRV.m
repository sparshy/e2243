function out = BernoulliRV(p)
%BERNOULLIRV Summary of this function goes here
%   Detailed explanation goes here
    if nargin < 1
        p = 0.7;
    end
    
    r = rand();
    
    if r < p 
        out = 1;
    else
        out = 0;
    end
    
end

