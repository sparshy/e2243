function isit = IsLinearCombination(A, x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    B = myRREF([A x]);
    [m,~] = size(A);
    
    row = m;
    while norm(B(row,:)) == 0 
        row = row - 1;
    end
    
    % row has non zero entries
    % need to check 
    if max(B(row,1:end-1)) == 0 && B(row,end) ~= 0
        isit = 0;
    else
        isit = 1;
    end
end