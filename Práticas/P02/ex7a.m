m = 5;
N = 1e6;
n = 2;

% A: "soma dar 10"
% B: "sair pelo menos um 5"
% C: "sair pelo menos um 1"

dados = randi([1,m],n,N);
pA = sum(sum(dados == 5)==2)/N
pB = sum(sum(dados == 5) > 0)/N
pC = sum(sum(dados == 1) > 0)/N

pAB = sum(sum(dados==5)==2)/N
pA_B = pA * pB % A e B n sao indiependentes

pAC = sum(sum(dados==5)==2 & sum(dados==1)>0)/N
pA_C = pA * pC % A e C n sao indiependentes