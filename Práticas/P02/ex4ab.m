n = 20;
m = 100;
N = 1e5;

% Simulacao
[pA,pB] = dardos(n,m,N);
pA
pB

% Teorica

pATeorica = 1;
for i=0:n-1
    pATeorica = pATeorica * (m-i)/m;
end
pATeorica
pBTeorica = 1 - pATeorica