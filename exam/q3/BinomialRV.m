function out = BinomialRV()
%BINOMIALRV Generate a binomial RV
    p = 0.7;
    n = 20;
    outcomes = zeros(1,n);
    for i=1:20
        outcomes(i) = BernoulliRV(p);
    end
    
    out = sum(outcomes);
end

