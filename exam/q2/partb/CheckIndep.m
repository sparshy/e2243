function isIndep = CheckIndep(P,X,Y)
%CHECKINDEP Check if the RV are independent
    product = Y'* X;
    
    isIndep = 1;
    [m,n] = size(product);
    
    for i = 1:m
        for j = 1:n
            if abs(P(i,j) - product(i,j) ) > 1e-16
                isIndep = 0;
            end
        end
    end
end

