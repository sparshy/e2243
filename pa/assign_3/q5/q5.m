H = [
    2, 2+1i, 4;
    2-1i, 3, 1i;
    4,-1i, 1
];
I = eye(size(H));
syms x

f = det(H - x*I);


[vec, val] = eig(H);