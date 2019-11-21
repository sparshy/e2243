H = [
    2, 2+1i, 4;
    2-1i, 3, 1i;
    4,-1i, 1
];

[v, ve] = eig(H);

rank(v)