function [Q, R] = QRFact(B)
%QR Calculates the QR factorization
%   Q is orthonormal and R is uppter triangular

    % use gram schmidt for orthogonalizatoin
    [V, Q] = GramSchmidt(B);
    [m, n] = size(B);
    R = zeros(m,n);
    
    % Calculate R
    for i = 1:m
        for j = 1:n
            if i > j 
                R(i,j) = 0;
            else 
                R(i,j) = dot(B(:,j) , V(:,i)) / norm(V(:,i));
            end
        end
    end
    
    % Print matrices Q and R
    Q
    R
    
end