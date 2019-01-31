p = 15;
n = 1;
media = p*n; % media = ro

%% a)
%  probabilidade de o computador nao receber nenhuma mensagem num segundo
k = 0;
pA = media^k*exp(-media)/factorial(k)

%% b)
pSum = 0;
for k=0:10
    pSum = pSum + media^k*exp(-media)/factorial(k);
end
pB = 1 - pSum