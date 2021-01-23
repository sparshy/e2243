function y = Xn(w,n)
%XN give the values of Random Variable

    if w < 1/n
        y = - n * w + 1;
    elseif w > (n-1)/n
        y = w * n - n + 1;
    else
        y = 0;
    end
end

