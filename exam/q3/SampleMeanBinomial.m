function S = SampleMeanBinomial()
%SAMPLEMEANBINOMIAL Generate sample mean from Binomial RV
    samples = zeros(1,100);
    for i = 1:100
        samples(i) = BinomialRV();
    end
    
    S = sum(samples)/length(samples);
    
end

