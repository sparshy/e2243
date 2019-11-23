clc
close all

% channel matrix
H = [ 3 1 3; 3 1 -1 ; 6 -7 8];

% Output
Y = [ 1 2 -2]';

[t1, t2] = EstimateX(Y,H);

fprintf("The direct estimation takes %0.5f seconds \n", t1)
fprintf("The direct estimation takes %0.5f seconds \n", t2)

if (t1 > t2)
    fprint("The time taken by direct estimation is less compared to QR Factorization \n")
end