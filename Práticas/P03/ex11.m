%% X: "classificacoes dos alunos de um determinado curso"
%  X: N(14,4)
%  X pertence a [0,...,20]
N = 1e5;
media = 14;
sigma = 2;
notas = media + sigma*randn(1,N);

%% a) prob de  um aluno do curso ter uma classi?cacao entre 12 e 16

pA = sum(notas >= 12 & notas <=16)/N

%% b) prob de os alunos terem classi?cacoes entre 10 e 18

pB = sum(notas >= 10 & notas <= 18)/N

%% c) prob de um aluno passar (ter classi?cacao maior ou igual a 10)

pC = sum(notas > 10)/N