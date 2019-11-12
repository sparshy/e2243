Scores = [ 6, 8, 2, 7, 8, 1, 8, 5, 4, 9, 2, 10, 6, 7, 8, 4, 6, 2, 10, 8, 9, 8, 10, 8, 2, 7, 7, 8, 4,10];
freq = [];
x = 0:10;
for i = 0:10
    freq = [ freq, Freq(Scores,i) ];
end

nf = NormFreq(freq);

if sum(nf) ~= 1
    error("Sum of normalizaed frequency should be 1")
end

stem(x, nf)

%% Expected Value, Variance and Standard deviation
e_x = sum( x .* nf);

if abs(e_x - avg(Scores )) < 1e-6 && abs(e_x - mean(Scores)) < 1e-6
    display("Mean, OK.")
end

v_x = sum( x.^2 .* nf) - e_x^2;
v_x = sum( (x - e_x).^2 .* nf );
% Variance if way off when using n-1 in variance.m

std_x = sqrt(v_x);
