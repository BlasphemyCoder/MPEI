% Seja A: "ter 2 filhos rapazes" e b: "ter um filho rapaz"
% p(A|B) = p(AB)/p(B)

% para calcular p (AB) é estimar a situação de que os 2 filhos sao rapazes
% para calcular p(B) é estimar a situação de que pelo menos um filho é
% rapaz

N = 1e5;    % numero de experiencias realizadas
n = 2;      % numero de filhos
p = 0.5;    % probabilidade de nascer rapaz (ou rapariga)
k = 1;      % "ter pelo menos um filho"

% Probabilidade de Simulação
% p(AB) ->
filhos = rand(n, N) < p;
sucessos = sum(filhos) == n;
probSim = sum(sucessos)/N;

% p(B) ->
sucessos1 = sum(filhos) >= k;
probSim1 = sum(sucessos1)/N;

probSimFinal = probSim/probSim1

% Probabilidade Teórica
probB =0;
for k = 1 : 2
    probB = probB + factorial(n)/ (factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k);
end
probAB =  factorial(n)/ (factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k);
probT = probAB / probB