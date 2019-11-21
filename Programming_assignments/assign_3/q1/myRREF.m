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
    for i=1:min(m,n)
        % Check if pivot element is zero
        if A(i,i) < 1e-8
            [~, index] = max(A(i:end,i));
            A = EROType1(A,i-1+index,i);
        end
        
        if A(i,i) >= 1e-8
            for j=1:m
                if i ~= j
                    A = EROType2(A, - A(j,i)/ A(i,i),j,i);
                end
            end        
            A = EROType3(A, 1/A(i,i), i);
        else
            A(i,i) = 0;
        end
    end
end