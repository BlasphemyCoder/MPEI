N = 1e5; % numero de repeticoes da experiencia
n = 15; % numero de lancamentos
p = 0.5; % Prob de sair cara
k = 6; % Sucesso qnd temos 6 caras

% Probabilidade de Simulação
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) >= k;
probabilidade = sum(sucessos)/ N

% Probablidade Teórica
probT = 0;
for k = 6 : n
    probT = probT + (factorial(n)/ (factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k));
end
probT