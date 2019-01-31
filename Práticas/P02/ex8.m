 % Seja uma linguagem com apenas 3 palavras{“um”, “dois”, “trˆes”}
 % que permite sequencias de 2 palavras.
 % Se todas as frases forem equiprovaveis
 % e as duas palavras na frase puderem ser iguais, calcule:
 N = 1e5;
 m = 3;
 n = 2;
 
 frases = randi([1,m],n,N);

% a) probabilidade da sequencia “um dois"
pA = sum(frases(1,:)==1 & frases(2,:)==2)/N

% b) probabilidade de aparecer "um" pelo menos 1 vez
pB = sum(sum(frases==1)>0)/N

% c) probabilidade de ocorrer "um" ou "dois"
%pC =  ????????????????????

% d) P[“sequencia incluir a palavra um”| “sequencia inclui palavra dois”]
% pD = p("um" & "dois")/p("dois")
p2 = pB;
p1e2 = sum(sum(frases==1)==1 & sum(frases==2)==1)/N;
pD = p1e2/p2

% e)
N=1e5;
m = 10;
n=5;
pE=probCondicionada8(n,m,N)

