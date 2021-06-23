% Charger le jeu de données depuis les 2 fichiers Input1.txt et Output.txt
load('Input1.txt');
load('Output.txt');

% Stocker les valeurs du jeu de données dans des matrices séparées x et y
x = Input1(:, 1);
y = Output(:, 1);

% Tracer les points de données x et y dans une nouvelle figure
% J'ai pris l'exemple du cours : x fait référence à la taille d'une maison
% et y fait référence à son prix

% Ouvrir une nouvelle fenêtre de figure
figure;

plot(x, y, 'rx');
title('Housing Prices');
xlabel('Size');
ylabel('Price');

m = length(y);

% Définir les valeurs des réglages de la fonction du gradient descent 
% alpha (taux d'apprentissage) = 0.01
alpha = 0.025;
% Nombre d'itérations = 100
num_iters = 10000;

% Ajouter une colonne de 1s à la matrice x
x = [ones(m, 1), x];

% Initialiser les paramètres d'ajustement théta à 0
theta = zeros(2, 1);

% Calculer le gradient descent
[theta, j] = GradientDescent(x, y, theta, alpha, num_iters);

hold on; % Garder la dernière figure visible

% Tracer le graphe de h(x)
PlotHypothesis(x, x * theta);

hold off;

% Tracer le graphe de convergence 
PlotCost(j);

% Affichier les valeurs de théta calculées par la fonction du gradient descent
fprintf('Valeurs de théta : \n');
fprintf(' %f \n', theta);