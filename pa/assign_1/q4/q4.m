n = [100 1e3 1e5];

for i=1:length(n)
    figure 
    x = 1:n(i);
    %f = (x.^2 + 2) ./ (2 * x.^2 + 3);
    % b. Converges to 5
    % e. Yes
    
    %f = (2*x.^2 - 2*x + sin(x)) ./(5 * x.^2);
    % b. Converges to 0.4
    % e. Yes
    
    %f = (-1).^x ./ x;
    % b. converges to 0
    % e. Yes
    
    %f = piecewise(x);
    % b. Does not converge
    % e. Yes
    
    %f = sin( x * pi) + cos(x* pi);
    % b. Does not converge
    % e. Yes
    
    
    f = sin(x * pi/ 2) + cos(x* pi /2);
    % b. Does not converge
    % e. Yes
    
    stem(x,f)
    
    % glb lub
    lub = max(f);
    glb = min(f);
    
    % N(psi) calculatoins
    % Note n values are different as final values are different for n = 1e2
    % 1e3 1e4
    final = f(end);
    psi = 1e-4;
    c = 1;
    while abs(f(c) - final) > psi
        c = c+1;
    end
    fprintf("For n = %d the error is less than 1e-4 \n",c)
end