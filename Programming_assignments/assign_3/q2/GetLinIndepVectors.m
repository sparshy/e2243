function B = GetLinIndepVectors(A)
%GETLINEAR Summary of this function goes here
%   Detailed explanation goes here
    B = [ A(:,1) ];
    [~, n ] = size(A);
    
    for i=2:n
        if ~IsLinearCombination(B,A(:,i))
            B = [B A(:,i)] ;
        end
    end
end

