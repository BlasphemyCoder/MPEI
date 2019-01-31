N = 1e5;    % numero de experiencias realizadas
n = 2;      % numero de filhos
p = 0.5;    % probabilidade de nascer rapaz (ou rapariga)
k = 1;      % "ter pelo menos um filho"

% Pobabilidade de Similução

% Seja A: "ter 2º filho rapaz" e B: "o 1º filho ser rapaz"
% p(A|B) = p(AB)/p(B)
filhos = rand(n, N) < p;
% p(AB) -->
ind_1 = find(filhos(1,:)==1); % numB
sucessos = sum(filhos(:,ind_1)) == n; %numAB
numAB = sum(sucessos);
% p(B) -->
numB = sum(sum(filhos(1,:)==1));
% prob final
probSim = numAB/numB