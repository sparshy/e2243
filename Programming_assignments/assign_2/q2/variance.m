function var = variance(data)
%VARIANCE Summary of this function goes here
%   Detailed explanation goes here
% https://stats.stackexchange.com/questions/100041/how-exactly-did-statisticians-agree-to-using-n-1-as-the-unbiased-estimator-for
    var = sum(( data - avg(data)).^2) / (length(data)) ;
end

