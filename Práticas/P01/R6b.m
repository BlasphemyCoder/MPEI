% Lancam-se dois dados e toma-se nota da soma de pontos obtida
% Calcule a probabilidade de se obter a soma 9
N = 1e5;
n = 2;
k = 9;

lancamentos = randi([1,6],n,N);
sucessos = sum(lancamentos) == k; % SUCESSOS = "a soma dar 9"
probSim = sum(sucessos) / N