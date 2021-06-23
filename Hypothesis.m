function [h] = Hypothesis(x, theta, i)

h = theta(1) * x(i, 1) + theta(2) * x(i, 2);

end