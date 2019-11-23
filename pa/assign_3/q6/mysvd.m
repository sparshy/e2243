function [u, sigma, v] = mysvd(A)
%MYSVD Summary of this function goes here
%   Detailed explanation goes here
    [m,n] = size(A);
    [ evec, eval ] = eig(A'*A);
    v = evec;
    sigma = [ sqrt(eval) zeros(n,n-m); zeros( m-n, n) zeros(m-n,n-m) ];
    
    u = zeros(m,m);
    
    for i=1:size(eval)
        u(:,i) = 1/sigma(i,i) * A * v(:,i);   
    end
    %[u, ~] = eig(A*A');
    
end

