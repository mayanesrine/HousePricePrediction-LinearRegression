% Load the dataset from the Input1.txt and Output.txt files
load('Input1.txt');
load('Output.txt');

% Store the dataset values in two separate matrices
x = Input1(:, 1);
y = Output(:, 1);

% Plot the x and y data points
% x refers to the size of a house and y refers to its price

% Open a new figure window
figure;

plot(x, y, 'rx');
title('Housing Prices');
xlabel('Size');
ylabel('Price');

m = length(y);

% Define the values of the gradient descent function settings
% alpha (learning rate) = 0.01
alpha = 0.025;
% Number of iterations = 100
num_iters = 10000;

% Add a column of 1s to the x matrix
x = [ones(m, 1), x];

% Set theta adjustment parameters to 0
theta = zeros(2, 1);

% Calculate the gradient descent
[theta, j] = GradientDescent(x, y, theta, alpha, num_iters);

hold on; % Keep the last figure visible

% Plot the h(x) graph
PlotHypothesis(x, x * theta);

hold off;

% Plot the convergence graph 
PlotCost(j);

% Display theta values calculated by the gradient descent function
fprintf('Theta values : \n');
fprintf(' %f \n', theta);