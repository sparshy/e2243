function [PX, PY] = Marginals(P)
%MARGINALS Returns the marginal distributions of X and Y

% NOTE PX and PY are row vectors
    PX = sum(P);
    PY = sum(P,2)';
end

