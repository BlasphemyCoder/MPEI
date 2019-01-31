N = 1e7;
n = 11;
k = 10;
p = 0.5;

% Probabilidade de Simulação
 % sabendo que nos primeiros 10 lancamentos saiu cara qual a prob de sair
 % cara no 11º
lancamentos = rand(n, N) < p;
% b -> nos primeiros 10 lancamentos saiu cara
sum_b = sum(sum(lancamentos(1:10,:))==10);

% ab -> sair cara nos 11 lancamentos
sum_ab = sum(sum(lancamentos) ==11);

probSimFinal = sum_ab/sum_b

