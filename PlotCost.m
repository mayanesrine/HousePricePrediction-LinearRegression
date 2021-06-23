function PlotCost(j)

figure;
plot(1:numel(j), j, '-r', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

end