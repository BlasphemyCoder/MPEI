N = 1e5;
n = 10;
k = 10;
p = 0.5;

% Probabilidade de Simula��o
lancamentos = rand(n, N) < p;
sucessos = sum(lancamentos) == k;
probSim = sum(sucessos)/N

% Probabilidade Te�rica
probT = factorial(n)/ (factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k)