N = 1e5;    % numero de experiencias realizadas
n = 2;      % numero de filhos
p = 0.5;    % probabilidade de nascer rapaz (ou rapariga)
k = 1;      % "ter pelo menos um filho"

% Probabilidade de Simulação
filhos = rand(n, N) < p; % 1 -> filho ; 0 -> filha
sucessos = sum(filhos) >= k;
probSim = sum(sucessos)/N

% Probabilidade Teórica
probT = 0;
for k = 1 : n
    probT = probT + (factorial(n)/ (factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k));
end
probT