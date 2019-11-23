function A = EROType2(A, alpha, i, j)
%EROTYPE2 Summary of this function goes here
%   Detailed explanation goes here
    [m,~] = size(A);
    if i > m || j > m
        error("The row exceeds the actual dimension of the matrix")
    end
    A(i,:) = A(i,:) + alpha * A(j,:);
end

