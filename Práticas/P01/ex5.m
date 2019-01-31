n = 5;
p = 0.3;
k = 3;
N = 1e5;

fprintf(1, 'ALINEA A)')
% Probablidade de Simula��o
pecas = rand(n,N) < p;
defeitos= sum(pecas)==k;
probSim = sum(defeitos)/N

% Probabilidade Te�rica
probT = factorial(n)/ ( factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)


% ALINEA B
fprintf(1, '\n\nALINEA B)\n')
n = 5;
p = 0.3;
k = 2;
N = 1e5;
% Probablidade de Simula��o
lancamentos = rand(n,N) < p;
sucessos= sum(lancamentos)<=k;
probSim = sum(sucessos)/N

% Probabilidade Te�rica
probT = 0;
for k = 0: 2
    probT = probT + factorial(n)/ ( factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
end
probT


% ALINEA C
fprintf(1, '\n\nALINEA B)\n')
n = 5;
p = 0.3;
k = 2;
N = 1e5;
% Probablidade de Simula��o

for k = 0 : n
    prob(k+1) = calcP(p,n,k,N);
     fprintf(1,'P(%d pe�as defeituosas em %d pe�as e: %.4f\n',k,n,  prob(k+1));
end
figure(1);
bar(1:6,prob, 'b')

figure(2);
hist(prob,5)
