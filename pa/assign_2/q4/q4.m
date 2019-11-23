HeadCount = zeros(1,104);

for i=1:104
    HeadCount(i) = sum( Flips(50, 0.7) == 'H');
end

x =0:50;
nf = zeros(1,length(x));
for i=0:length(x)-1
    nf(i+1) = NormFreq(HeadCount, i);
end

subplot(1,2,1)
plot(x,nf)
xlabel('No. of heads/success')
ylabel('Probability')

subplot(1,2,2)
heads = 0:50;
y = binopdf(heads,50,0.7);
stem(heads, y)
xlabel('Number of heads')
ylabel('Probability')

hold on
y1 = normpdf( heads, 50*.7, sqrt(50*.7*.3));
plot(heads, y1)
