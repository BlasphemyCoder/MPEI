clear all;
close all;
clc;
%% ########################################################
% Guião 8 : Ex. 5
% Métodos Probabilísticos para Engenharia Informática
% Vasco Ramos, 88931, LEI
%% ########################################################

%% (a) De?na a correspondente matriz de transicao

T = [0.7 0.2 0.1; 0.2 0.3 0.5; 0.3 0.3 0.4]';

%% (b) Assumindo que a observacao inicial (digamos no dia 0) e de sol,
% qual a probabilidade do dia 2 ser de chuva ?
fprintf(1,'Alinea (b):\n');

x0 = [1 0 0]';

%% entre o dia 0 e o dia 2 houve 2 transicoes
x2 = T^2*x0;
fprintf(1,'Prob de no dia 2 estar chuva, estando sol no dia 0: %.3f\n',x2(3));


%% (c) Calcule as n primeiras potencias de T (n=20) e apresente num gra?co
% a evolucao dos varios elementos da matriz em funcao de n
n = 20;
M = [];
for k = 1: n
    Tn = T^k;
    M = [M Tn(:)];
end
figure(1);
plot(1:20,M,'.-');

%% (d) Repita o processo da al?nea anterior parando-o assim
% que o maximo do modulo da diferenca entre os valores dos elementos da matriz
% em duas iteracoes consecutivas nao exceda 10^-4
n = 20;
M = [];
for k = 1: n
    Tn = T^k;
    if (k > 1 & max(max(abs(Tn-T^(k-1)))) <= 10^-4)
        break;
    end
    M = [M Tn(:)];
end
figure(2);
plot(1:(k-1),M,'.-');
