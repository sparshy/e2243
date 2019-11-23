probs = [];
x = 10:10:10000;
for i = 1: length(x)  
    probs  = [ probs, EmpProb('H', i)];
end

plot(x, probs);