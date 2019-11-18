function A = myRREF(A)
%MYRREF Summary of this function goes here
%   Detailed explanation goes here
    [m,n] = size(A);
    if m ~= n 
        error("The matrix a should be a square matrix")
    end
    
    if rank(A) ~= m
        error("The matrix A should be full rank")
    end
    % convert to upper triangular matrix
    for i=1:m-1
        for j=i+1:m
            A(j,:) = A(j,:) - A(j,i) * A(i,:) / A(i,i);
        end
    end
end

