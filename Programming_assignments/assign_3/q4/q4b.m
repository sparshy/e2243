q4;
v = rand(1) * x + rand(1) * z;
t = rank([A v])

% Yes we can conclude that v is not in the subspace spanned by x and y 
% because if did the rank of [A v] should be 2