clear all;
close all;
clc;
%% ########################################################
% Guião 8 : Ex. 1
% Métodos Probabilísticos para Engenharia Informática
% Vasco Ramos, 88931, LEI
%% ########################################################

% Um aluno do primeiro ano de um curso de Engenharia tem todas as semanas
% 2 aulas TP de uma Unidade Curricular X as 9:00, as quartas e sextas.
% Todos os dias que tem aulas desta UC, decide se vai a aula ou nao da seguinte forma:
% -> se tiver estado presente na aula anterior a probabilidade de ir a aula e 70 %
% -> se faltou a anterior, a probabilidade de ir e 80 %.

%% Matriz de Estados

%       NF      F
% NF    0.7     0.8
% F     0.3     0.2

T = [0.7 0.8; 0.3 0.2];

%% (a) Se estiver presente na aula de quarta numa determinada semana
% qual a probabilidade de estar presente na aula de quarta da semana seguinte ?
fprintf(1,'Alinea (a):\n');

x0 = [1 0]';

% tendo em conta que tem aulas às quartas e sextas, então, entre quarta de
% uma semana e quarta da semana seguinte houve 2 transicoes.
x2 = T^2*x0;
fprintf(1,'A probabilidade de [Não Faltar | Não Faltar] é: %.3f\n',x2(1));

%% (b) Se nao estiver presente na aula de quarta numa determinada semana,
% qual a probabilidade de estar presente na aula de quarta da semana seguinte ?
fprintf(1,'\nAlinea (b):\n');

x0 = [0 1]';

% tendo em conta que tem aulas às quartas e sextas, então, entre quarta de
% uma semana e quarta da semana seguinte houve 2 transicoes.
x2 = T^2*x0;
fprintf(1,'A probabilidade de [Faltar | Não Faltar] é: %.3f\n',x2(1));

%% (b) Sabendo que esteve presente na primeira aula,
% qual a probabilidade de estar na ultima aula,
% assumindo que o semestre tem exactamente 15 semanas de aulas e nao existem feriados?
fprintf(1,'\nAlinea (c):\n');

x0 = [1 0]';

% tendo em conta que tem aulas às quartas e sextas, então, entre a primeira
% e ultima aula (houve 30 aulas) existiram 29 transicoes.

x29 = T^29*x0;
fprintf(1,'A probabilidade de [Não Faltar na ultima | Não Faltar na primeira] é: %.3f\n',x29(1));

%% (d) Represente num gra?co a probabilidade de faltar a cada uma das 30 aulas,
% assumindo que a probabilidade de estar presente na primeira aula e de 85 %.

x0 = [0.85 0.15]';
probabilidades = [];
for k = 0:29
    Xn = T^k*x0
    probabilidades = [probabilidades Xn(2)];
end
plot(probabilidades)