% Num processo industrial de fabrico de chips, alguns aparecem defeituosos
% tornando-os inapropriados para comercializacao. E sabido que em media por
% cada mil chips ha um defeituoso.
% Determine a probabilidade de numa amostra de 8000 aparecerem 7 defeituosos.

% X: "Num de chips defeituosos (em 8000)"
% Queremos calcular p[X = 7]
% Usando Distribuicao Binomial
% pBinomial = 0.139638
n = 8000;
k = 7;
p = 1/1000;
combinacoes = prod(n:-1:n-k+1)/prod(1:k);
pBinomial = combinacoes*p^k*(1-p)^(n-k)

% Usando Lei de Poisson
% Y: "Num de chips defeituosos (em 1000)"
media = n*p;
pPoisson = media^k*exp(-media)/factorial(k)

Binomial = zeros(1,101);
for k = 0:100
    combinacoes = prod(n:-1:n-k+1)/prod(1:k);
    pBinomial(k+1) = combinacoes*p^k*(1-p)^(n-k);
end
stem(0:100,pBinomial,'r')

media = n*p;
Poisson = zeros(1,101);
for k = 0:100
    pPoisson(k+1) = media^k*exp(-media)/factorial(k);
end
stem(0:100,pPoisson,'b')
hold on;