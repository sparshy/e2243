x = [100 -100 -100 100];
y = [100 100 -100 -100];
w = x+y;
fill3(x,y,w,'y')

u = { 30 50 80};
v = { 20 60 80};

hold on
quiver3(0,0,0,u{:})
quiver3(0,0,0,v{:})
w = num2cell([u{:}] + [v{:}]);
quiver3(0,0,0,w{:})
grid on