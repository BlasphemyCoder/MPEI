m = 5;
N = 1e6;
n = 2;

% D: "soma dar 7"
% E: "modulo da diferenca da 1"
% F: "o segundo lancamento e maior que o primeiro"

dados = randi([1,m],n,N);
pD = sum(sum(dados)==7)/N
pE = sum(abs(dados(1,:) - dados(2,:))==1)/N
pF = sum(dados(2,:) > dados(1,:))/N

pEF = sum(abs(dados(1,:) - dados(2,:))==1 & dados(2,:) > dados(1,:))/N
pE_F=pE*pF % E e F n sao indiependentes