function [t1,t2] = EstimateX(Y,H)
%ESTIMATEX Estimates the input X given the Channel Matrix H and
%   the output Y

    % start the timer for direct estimation
    timerVal1 = tic;
    % calculate Xhat1 and print
    Xhat1 = inv(H) * Y
    % final evaluation time
    t1 = toc(timerVal1)
    
    % Start the timer for estimation using QR
    timerVal2 = tic;
    [Q , R] = QRFact(H);
    Xhat2 = inv(R) * Q' * Y
    t2 = toc(timerVal2)
end

