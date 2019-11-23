clc
close all
t = -40:0.1:40;
T = [ 1 5 10];
y = zeros(3,length(t));
for i = 1:length(T)
    for j = 1:length(t)
        y(i,j) = rt(t(j), T(i));
    end
end
for i = 1:length(T)
    subplot(3,2,i*2 - 1)
    plot(t,y(i,:))
    xlabel('t')
    ylabel(sprintf('$R_{%d}$',T(i)),'interpreter','latex')
    axis([-(T(i)+10) (T(i)+10) -1 2])
end
for i = 1:length(T)
    for j = 1:length(t)
        y(i,j) = rt(t(j) + T(i), T(i)) - rt(t(j) - T(i), T(i));
    end
end
for i = 1:length(T)
    subplot(3,2,i*2)
    plot(t,y(i,:))
    xlabel('t')
    ylabel(sprintf('$g_{%d}$',T(i)),'interpreter','latex')
    axis([-(T(i)+10) (T(i)+10) -1 2])
end
