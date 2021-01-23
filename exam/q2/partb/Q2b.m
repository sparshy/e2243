clc
close all

X = [ -2:2]';
Y = [ -2:2]';

% Test probability distributions
P_invalid = rand(5,5);
P_valid = [
    0.12 0.28;
    0.18 0.42
];
P_invalid2 = rand(3,3);

P = P_valid;

isValid = CheckDist(P);

if isValid
    fprintf("P is a valid Joint Probability Distribution. \n");
    
    [PX, PY] = Marginals(P);
    
    % Print PX and PY
    PX
    PY
    
    isIndep = CheckIndep(P, PX, PY);
    
    if isIndep
        fprintf("X and Y are independent. \n")
    else
        fprintf("X and Y are not independent. \n")
    end
    
else
    fprintf("P is an invalid Joint Probability Distribution. \n");
end
