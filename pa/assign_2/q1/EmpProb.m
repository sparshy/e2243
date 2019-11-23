function prob = EmpProb(face,n)
%EMP Summary of this function goes here
%   Detailed explanation goes here
    prob = count( Flips(n, 0.7), face) / n;
end

