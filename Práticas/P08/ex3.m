clear all;
close all;
clc;
%% ########################################################
% Guião 8 : Ex. 3
% Métodos Probabilísticos para Engenharia Informática
% Vasco Ramos, 88931, LEI
%% ########################################################

% Crie uma matriz de transicao para uma cadeia de 20 estados,
% gerando os elementos dessa matriz com a ajuda da funcao rand().

%% Matriz de Transicao:

n = 20; % numero de estados
T = rand(n);
T = T./sum(T);

%% Verificar matriz T estocastica:
if (sum(sum(T)) == n & sum(sum(T >= 0)) == n*n)
    fprintf(1, 'ESTOCASTICA!!!\n');
end

%% (a) Qual a probabilidade de o sistema fazer uma transicao
% entre o primeiro e o ultimo estado em 20 transicoes?

x0 = [1; zeros(n-1,1)];

x20 = T^20*x0;
fprintf(1, 'Prob do sistema transitar do primeiro para o ultimo estado em 20 transicoes: %f\n',x20(n));

%% (b) E em 40?

x40 = T^40*x0;
fprintf(1, 'Prob do sistema transitar do primeiro para o ultimo estado em 40 transicoes: %f\n',x40(n));

%% (c) E em 100?

x100 = T^100*x0;
fprintf(1, 'Prob do sistema transitar do primeiro para o ultimo estado em 100 transicoes: %f\n',x100(n));