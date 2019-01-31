% Um conjunto de 50 pecas contem 8 pecas defeituosas.
% Escolhem-se aleatoriamente 10 pecas.
% Qual a probabilidade de encontrar 3 defeituosas?
n = 10;
p = 8/50;
k = 3;
N = 1e5;

probSim = calcProbSim(p, n, k, N)

probT = calcProbT(p,n,k)