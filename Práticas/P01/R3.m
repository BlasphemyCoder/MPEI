% por calculos cheguei a conclusao de que a probabilidade de acertar
% todas as n respostas, escolhendo-as com igual probabilidade teorica de
% acertar/errar corresponde a expressao p("100%") = 0.5^n
% VAMOS CONFIRMAR
p = 0.5;
prompt = 'Quantas perguntas tem o teste (introduza o valor de n)? ';
n = input(prompt);

% Probabilidade Te�rica
probT = p^n

% Probabilidade de Simula��o
probSim = calcP(p,n,n,1e6)