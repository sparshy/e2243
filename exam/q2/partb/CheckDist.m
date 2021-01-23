function isValid = CheckDist(P)
%CHECKDIST Takes the joing PDF P and verifies if it is valid or not
% Will work with any dimensions of P
    % Calucluate the sum of vetical columns
    sum1 = sum(P);
    total1 = sum(sum1);
    sum2 = sum(P,2);
    total2 = sum(sum2);
    if total1 == 1 && total2 == 1
        isValid = 1;
    else
        isValid = 0;
    end

end

