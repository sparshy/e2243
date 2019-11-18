
M = [ 100, 1000, 10000];
cells = cell(1,3);
% can do it just once 10k times and use data from it
for i=1:length(M)
    count_n = zeros(1,M(i));
    for j = 1:M(i)
        count_n(j) = sum( Flips(50,0.5)=='H');
    end
    cells{i} = count_n;
end

%% Plot distributions for each
for k = 1:length(cells)
    subplot(1,3,k)
    data = cells{k};
    head = 0:50;
    nf = zeros(1,51);
    for i = 0:50
        nf(i+1) = NormFreq(data,i);
    end
    plot(head, nf)
    hold on
    plotnd()
end
