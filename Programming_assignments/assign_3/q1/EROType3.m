function A = EROType3(A, alpha, i)
%EROTYPE3 Summary of this function goes here
%   Detailed explanation goes here
    [m,~] = size(A);
    if i > m 
        error("The row index exceeds that actual matrix dimensions.")
    end
    
    A(i,:) = alpha * A(i,:);
end