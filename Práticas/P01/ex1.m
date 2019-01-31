% Probabilidade Teórica
% p = n!/((n-k)!k!)*p^k(1-p)^(n-k)

p = 0.5;
k = 2;
n = 3;
prob = factorial(n)/ (factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k)  % aplicacao da formula teorica

% Probabilidade de simulacao
N = 1e5;  %%==1*10^5 mumero de experiencias
n = 3;    %% numero de lancamentos por experiencia
p = 0.5;  %% probabilidade de sair cara
k = 2;    %% Tenho sucesso na exp. qnd o numero de caras que sair for == 2

lancamentos = rand(n,N) > p ; % se for >0.5 da 1 -> saiu cara, caso contrário saiu coroa
sucessos = sum(lancamentos) == k ; % da-nos o numero de sucessos (ou seja, que sairam 2 caras)
probSim = sum(sucessos)/N