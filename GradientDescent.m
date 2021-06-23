function [theta, j] = GradientDescent(x, y, theta, alpha, num_iters)

m = length(y);
j = zeros(num_iters, 1);

for iter = 1:num_iters
    for k = 1:m;
        j1 = (1 / m) * sum(Hypothesis(x, theta, k) - y(k));
        j2 = ((1 / m) * sum(Hypothesis(x, theta, k) - y(k))) * (x(k,2));
        theta(1) = theta(1) - alpha * j1;
        theta(2) = theta(2) - alpha * j2;
        
        % Sauvegarder le cost à chaque itération
        j(iter) = Cost(x, y, theta);
    end
end

end