function [V, Q] = GramSchmidt(B)
%GRAMSCHMIDT Summary of this function goes here
%   Detailed explanation goes here
    [~,n ] = size(B);
    V = zeros(size(B)); % orthogonal
    Q = zeros(size(B)); % orthonormal
    for j = 1 : n
        V(:,j) = B(:,j);
        for k = 1:j-1
            V(:,j) = V(:,j) - (Q(:,k)' * B(:,j) )* Q(:,k);
        end
    Q(:,j) = V(:,j)/norm(V(:,j));
    end
    
end

