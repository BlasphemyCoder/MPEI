clear all;
close all;
clc;
%% ########################################################
% Guião 8 : Ex. 2
% Métodos Probabilísticos para Engenharia Informática
% Vasco Ramos, 88931, LEI
%% ########################################################

% Considere a seguinte “danca” de grupos:
% Divide-se uma turma em 3 grupos (A, B e C) no inicio do semestre e
% no ?nal de cada aula efectuam-se os seguintes movimentos:
% -> 1/3 do grupo A vai para o grupo B e outro 1/3 do grupo A vai para o grupo C
% -> 1/4 do grupo B vai para A e 1/5 de B vai para C
% -> Metade do grupo C vai para o grupo B; a outra mantem-se no grupo C.

%% (a)
fprintf(1, 'Alinea (a):\n');
%% Matriz de Transicao:

%       A       B       C
% A     1/3     1/4     0
% B     1/3     11/20   1/2
% C     1/3     1/5     1/2

T = [1/3 1/4 0; 1/3 11/20 1/2; 1/3 1/5 1/2];

%% Verificar se matriz T estocastica:

if (sum(sum(T)) == 3 & sum(sum(T >= 0)) == 3*3)
    fprintf(1,'ESTOCASTICA!!!\n');
end

%% (b) Crie o vector relativo ao estado inicial considerando que no total temos 90 alunos,
% -> o grupo A tem o dobro da soma dos outros dois
% -> os grupos B e C tem o mesmo numero de alunos.

x0 = [60; 15; 15]/90;

%% (c) Quantos elementos integrarao cada grupo no ?m da aula 30,
% considerando como estado inicial o de?nido na alinea anterior?
fprintf(1, '\nAlinea (c):\n');

% entre a aula 1 e a aula 30 houve 29 transicoes
x29 = T^29*x0;
fprintf(1, 'Numero de alunos na aula 30:\nA: %f\nB: %f\nC: %f\n', x29(1)*90,x29(2)*90,x29(3)*90);

%% (d) Quantos elementos integrarao cada grupo no ?m da aula 30,
% considerando que inicialmente se distribuiram os 90 alunos equitativamente pelos 3 grupos?
fprintf(1, '\nAlinea (d):\n');

x0 = [1/3 1/3 1/3]';

% entre a aula 1 e a aula 30 houve 29 transicoes
x29 = T^29*x0;
fprintf(1, 'Numero de alunos na aula 30:\nA: %.0f\nB: %.0f\nC: %.0f\n', x29(1)*90,x29(2)*90,x29(3)*90);