function A = EROType1(A,i,j)
%ER0TYPE1 Summary of this function goes here
%   Detailed explanation goes here
    [m,~] = size(A);
    if i > m || j > m
        error("The row exceed the actual number of rows")
    end
    
    temp = A(i,:);
    A(i,:) = A(j,:);
    A(j,:) = temp;
end

