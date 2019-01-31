% Seja A: "ter 2 filhos rapazes" e b: "ter um filho rapaz"
% p(A|B) = p(AB)/p(B)

% para calcular p (AB) � estimar a situa��o de que os 2 filhos sao rapazes
% para calcular p(B) � estimar a situa��o de que pelo menos um filho �
% rapaz

N = 1e5;    % numero de experiencias realizadas
n = 2;      % numero de filhos
p = 0.5;    % probabilidade de nascer rapaz (ou rapariga)
k = 1;      % "ter pelo menos um filho"

% Probabilidade de Simula��o
% p(AB) ->
filhos = rand(n, N) < p;
sucessos = sum(filhos) == n;
probSim = sum(sucessos)/N;

% p(B) ->
sucessos1 = sum(filhos) >= k;
probSim1 = sum(sucessos1)/N;

probSimFinal = probSim/probSim1

% Probabilidade Te�rica
probB =0;
for k = 1 : 2
    probB = probB + factorial(n)/ (factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k);
end
probAB =  factorial(n)/ (factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k);
probT = probAB / probB