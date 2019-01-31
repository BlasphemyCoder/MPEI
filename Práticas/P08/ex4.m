clear all;
clc;
%% ########################################################
% Guião 8 : Ex. 4
% Métodos Probabilísticos para Engenharia Informática
% Vasco Ramos, 88931, LEI
%% ########################################################

%% (a) De?na a matriz de transicao T. Assuma p = 0,4 e q = 0,6;

%       A           B       C       D
% A     p^2         0       0       q^2
% B     (1-p)^2     0       0       q(1-q) 
% C     p(1-p)      0       0       q(1-q)
% D     p(1-p)      1       1       (1-q)^2

p = 0.4;
q = 0.6;
T = [p^2 0 0 q^2; (1-p)^2 0 0 q*(1-q); p*(1-p) 0 0 q*(1-q); p*(1-p) 1 1 (1-q)^2];

if (sum(sum(T)) == 4 & sum(sum(T >= 0)) == 4*4)
    fprintf(1, 'ESTOCASTICA!!!\n');
end

%% (b) Qual a probabilidade de o sistema chegar ao estado B
% apos 10 transicoes adicionais caso inicialmente se encontre no estado A ?
fprintf(1,'\nAlinea (b):\n');

x0 = [1 0 0 0]';

x10 = T^10*x0;

fprintf(1,'Prob de comecando em A chegar a A apos 10 transicoes: %f\n', x10(1));
fprintf(1,'Prob de comecando em A chegar a B apos 10 transicoes: %f\n', x10(2));
fprintf(1,'Prob de comecando em A chegar a C apos 10 transicoes: %f\n', x10(3));
fprintf(1,'Prob de comecando em A chegar a D apos 10 transicoes: %f\n', x10(4));