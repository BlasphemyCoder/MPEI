% Seja A: "ter pelo menos 3 filhos rapazes" e b: "ter um filho rapaz"
% p(A|B) = p(AB)/p(B)

% para calcular p (AB) � estimar a situa��o de que os 2 filhos sao rapazes
% para calcular p(B) � estimar a situa��o de que pelo menos um filho �
% rapaz

N = 1e5;    % numero de experiencias realizadas
n = 5;      % numero de filhos
p = 0.5;    % probabilidade de nascer rapaz (ou rapariga)
k = 1;      % "ter pelo menos um filho"

% Probabilidade de Simula��o
% p(AB) ->
filhos = rand(n, N) < p;
sucessos = sum(filhos) >= 2;
probSim = sum(sucessos)/N;
% p(B) ->
sucessos1 = sum(filhos) >= k;
probSim1 = sum(sucessos1)/N;

probSimFinal = probSim/probSim1