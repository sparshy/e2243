clc
close all
clear all
x = -7:0.01:7;
y = cell(1,5);
for i = 1:length(x)
    y{1}(i) = f(x(i));
    y{2}(i) = f(x(i)+2);
    y{3}(i) = f(5/4*x(i));
    y{4}(i) = f(2 * x(i) - 4);
    y{5}(i) = f( 2- x(i));
end
for i = 1:5
    subplot(3,2,i+1)
    plot(x,y{i})
end