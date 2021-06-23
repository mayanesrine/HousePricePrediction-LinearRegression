function PlotCost(j)

figure;
plot(1:numel(j), j, '-r', 'LineWidth', 2);
xlabel('Nombre d''itérations');
ylabel('Cost J');

end