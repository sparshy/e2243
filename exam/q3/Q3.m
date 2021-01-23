%% Part a

% Generate and print Uniform RV
valueUni = UniformRV()

% Geneertate and print Bernoulli RV
vlaueBernoulli = BernoulliRV()

% Generate and print Binomial RV
valueBinomial = BinomialRV()

%% Call Sample Mean 
count = 1e3 % please change this to 1e5
M = zeros(1,count);
for i=1:count
    M(i) = SampleMeanBinomial();
end

%% part f
m = sum(M)/length(M)
sd = std(M)

% Plotting gaussian
x = [0:0.01:20];
y = normpdf(x,m,sd);
plot(x,y);
xlabel("x")
ylabel("Probability")
title("Gaussian distribution with mean m and standard deviation s^2")

hold on;
histogram(M);
xlabel('Sample Value')
ylabel('Number of occurences')
title('Histogram for M')

%% part g


