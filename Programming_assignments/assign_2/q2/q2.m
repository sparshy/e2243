Scores = [ 6, 8, 2, 7, 8, 1, 8, 5, 4, 9, 2, 10, 6, 7, 8, 4, 6, 2, 10, 8, 9, 8, 10, 8, 2, 7, 7, 8, 4,10];
x = 0:10;

freq = zeros(1,length(x));
for i = 0:10
    freq(i+1) = Freq(Scores,i);
end

nf = zeros(1, length(x));
for i= 0:10
    nf(i+1) = NormFreq(Scores,i);
end

if sum(nf) ~= 1
    error("Sum of normalizaed frequency should be 1")
end

stem(x, nf)

%% Expected Value, Variance and Standard deviation
e_x = sum( x .* nf);

if abs(e_x - avg(Scores )) < 1e-6 && abs(e_x - mean(Scores)) < 1e-6
    disp("Mean, OK.")
end

v_x = sum( x.^2 .* nf) - e_x^2;
v_x = sum( (x - e_x).^2 .* nf );
% Variance if way off when using n-1 in variance.m

std_x = sqrt(v_x);
