clear all;
close all;
clc;
%% ########################################################
% Guião 8 : Ex. 6
% Métodos Probabilísticos para Engenharia Informática
% Vasco Ramos, 88931, LEI
%% ########################################################

%% (a) Escreva a matriz de transicao H 

%       1       2       3       4
% 1     0.8     0       0.3     0
% 2     0.2     0.9     0.2     0
% 3     0       0.1     0.4     0
% 4     0       0       0.1     1

H_original = [0.8 0 0.3 0; 0.2 0.9 0.2 0; 0 0.1 0.4 0; 0 0 0.1 1];
H_modificada = [0.8 0 0.99 0; 0.2 0.9 0 0; 0 0.1 0 0; 0 0 0.01 1];


%% (b) Qual a probabilidade de comecando na pagina 1 ao ?m de 1000 passos
% estar na pagina 2?
% Estava a espera deste valor?
fprintf(1, 'Alinea (b):\n');

x0 = [1 0 0 0]';
x1000 = H_original^1000*x0;
fprintf(1, 'Probab de comecando na pagina 1 ao fim de 1000 passos estar na pagina 2: %f\n',x1000(2));


%% (c) Determine a probabilidade de chegar a pagina j a partir da pagina i, em 1,2,10 e 100 passos

% como nao se especifica o estado i e o j então para termos todos os
% valores basta calcular as potencias 1, 2, 10 e 100 da matriz de
% transicao!

T1 = H_original; % em 1 passo
T2 = H_original^2; % em 2 passos
T10 = H_original^10; % em 10 passos
T100 = H_original^100; % em 100 passos


%% (d) Determine a matriz Q

Q = H_modificada(1:3,1:3)


%% (e) Determine a matriz fundamental F.

F = inv(eye(3)-Q)


%% (f) Qual a media (valor esperado) do numero de passos necessarios para
fprintf(1, '\nAlinea (f):\n');
mediaPassos = sum(F);
%   (i) atingir a pagina 4 comecando na pagina 1?
fprintf(1,'Media (valor esperado) do numero de passos necessarios para atingir a pagina 4 comecando na pagina 1: %.2f\n',mediaPassos(1));
%   (ii) e se comecarmos na pagina 2? 
fprintf(1,'Media (valor esperado) do numero de passos necessarios para atingir a pagina 4 comecando na pagina 2: %.2f\n',mediaPassos(2));
%   (iiI) e se iniciarmos na pagina 3?
fprintf(1,'Media (valor esperado) do numero de passos necessarios para atingir a pagina 4 comecando na pagina 3: %.2f\n',mediaPassos(3));


%% (g) Qual o tempo ate a absorcao das paginas 1 a 3?
fprintf(1, '\nAlinea (g):\n');
tempoAbsorcao = F'*ones(3,1);
fprintf(1,'Tempo ate a absorcao da pagina 1: %.2f\n',tempoAbsorcao(1));
fprintf(1,'Tempo ate a absorcao da pagina 2: %.2f\n',tempoAbsorcao(2));
fprintf(1,'Tempo ate a absorcao da pagina 3: %.2f\n',tempoAbsorcao(3));