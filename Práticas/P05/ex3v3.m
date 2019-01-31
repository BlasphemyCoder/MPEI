% nr string = 1000;
% fator de carga = 0.8 -> 1000/N
% N é um número primo -> N = 1259 neste caso
n = 1000;
f = 0.8;
N = n/f;
array = zeros(1, N);
letras = ['A':'Z' 'a':'z'];
ficheiros={'pg21209.txt','pg26017.txt'};
pmfPT=pmfLetrasPT(ficheiros,letras);
for i = 1 : n
    string = stringGenerator_v2(pmfPT,letras);
    hash = myHashv2(string, N) + 1;
    array(hash) = array(hash) + 1;
end
figure(1)
subplot(2,1,2)
xbins=0:max(array);
[colisoes indices] = hist(array,xbins);
hist(array,xbins)
title('Histograma do num de strings que foram mapeadas pela hash function para cada pos');
subplot(2,1,1)
stem(array)
title('Num de strings que foram mapeadas pela hash function para cada pos');


%%Exercicio 4
%%num de colisoes = num listas ligadas
pColisoes = colisoes/N;
figure(2)
stem(pColisoes)
dist = cumsum(pColisoes)
E = [0:max(array)]*pColisoes'
Var = (([0:max(array)]-E).^2)*pColisoes'