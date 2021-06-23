function [j] = Cost(x, y, theta)

m = length(y);
j = 0;

for i = 1:size(x, 1)    
    j = j + (Hypothesis(x, theta, i) - y(i))^2;  
end;

j = j * (1 / (2 * m));

end