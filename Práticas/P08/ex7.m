clear all;
close all;
clc;
%% ########################################################
% Guião 8 : Ex. 7
% Métodos Probabilísticos para Engenharia Informática
% Vasco Ramos, 88931, LEI
%% ########################################################

% Tres amigos: Ana, Bernardo e Catarina, resolveram trocar dinheiro entre si
% uma vez por dia durante um ano da seguinte maneira:
% -> A Ana da 20% do que tem ao Bernardo e ?ca com o resto para si.
% -> O Bernardo da 10% do que tem a Ana, da 30% do que tem a Catarina e ?ca com o resto para si
% -> ACatarina da 5% do que tem a Ana, da 20% do que tem ao Bernardo e ?ca com o resto para si.

% O dinheiro e transferido electronicamente, sem arredondamento, as 23h59m
% de cada dia e e creditado na conta de cada um no inicio do dia seguinte.

%% MATRIZ DE TRANSICAO
T = [0.8 0.1 0.05; 0.2 0.6 0.2; 0 0.3 0.75];

% Sabe-se que as 12h do dia 1 de Janeiro de 2015:
% -> a Ana tinha 100 euros
% -> o Bernardo tinha 200 euros
% -> a Catarina tinha 30 euros

%% ESTADO INICIAL
valores = [100 200 30];
x0 = valores'/sum(valores);

%% (a) As 12h do dia 4 de Janeiro, quanto dinheiro tinha cada um dos amigos?
x3 = T^3*x0;
fprintf(1,'Alinea (a):\n');
valoresA = x3*sum(valores);
fprintf(1,'\nAna: %.3f\nBenardo: %.3f\nCatarina: %.3f\n', valoresA(1), valoresA(2), valoresA(3));


%% (b) Logo depois da passagem de ano para o ano de 2016, com quanto dinheiro vai ?car cada um dos amigos?
% logo depois da passagem de ano para o ano de 2016 -> 1 de janeiro
% logo 1 de janeiro de 2016 é como se fosse o dia 366 de 2015 logo houve
% 366-1 = 365 transicoes nos estados!!

x365 = T^365*x0;
fprintf(1,'\nAlinea (b):\n');
valoresB = x365*sum(valores);
fprintf(1,'\nAna: %.3f\nBenardo: %.3f\nCatarina: %.3f\n', valoresB(1), valoresB(2), valoresB(3));



%% (c) Em que dia, no formato dia e mes, passa a Catarina a ter mais de 130 euros?
k = 0;
while(true)
    Xk = T^k*x0;
    Xk(3)*sum(valores)
    if (Xk(3)*sum(valores) > 130)
        break;
    end
    k = k+1;
end
k
fprintf(1, 'A Catarina passa a ter mais de 130 euros no dia 10 de Janeiro.\n');