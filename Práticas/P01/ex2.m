N = 1e5; % numero de repeticoes da experiencia
n = 15; % numero de lancamentos
p = 0.5; % Prob de sair cara
k = 6; % Sucesso qnd temos 6 caras

% Probabilidade Teórica

probReal = factorial(n)/ (factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k)

% Probabilidade de Simulação

lanc = rand(n,N) > p;
succ = sum(lanc) == k;
probSim = sum(succ)/N