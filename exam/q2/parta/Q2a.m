w = [0:0.01:1];
n = [2 3 10 100];
f1 = figure(1)
subplot(3,1,1)
hold on
for i=1:length(n)
    X_n = zeros(1,length(w));
    for j=1:length(w)
        X_n(j) = Xn(w(j),n(i));
    end
    plot(w,X_n)
end
legend('n=2','n=3','n=10','n=100')
xlabel('$\omega$','interpreter','latex')
ylabel('$X_n(\omega)$', 'interpreter','latex')
axis([0 1 0 1])
title('$\omega$ vs $X_n(\omega)$', 'interpreter','latex')
%% part 2
x= [0:0.001:1];
subplot(3,1,2)
hold on
for i=1:length(n)
    F_x = zeros(length(n),length(x));
    for j=1:length(x)
        F_x(i,j) = Fx(x(j),n(i));
    end
    plot(x,F_x(i,:))
end
legend('n=2','n=3','n=10','n=100')
xlabel('$x$','interpreter','latex')
ylabel('$F(x)$', 'interpreter','latex')
title('CDF of x')

%% part 3
x= [-3:0.01:3];
subplot(3,1,3)
hold on
F_y = zeros(1,length(x));
for j=1:length(x)
    F_y(j) = Fy(x(j));
end
plot(x,F_y)

xlabel('$y$','interpreter','latex')
ylabel('$F(y)$', 'interpreter','latex')
axis([-3 3 0 1])
title('CDF of y')

%% part 5
fprintf("Yes the function F_x converges in distribution to zero RV distribution as can be verified from the polt")
