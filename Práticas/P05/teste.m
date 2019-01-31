% alfabeto simples 
% completar com outros caracteres 
alpha = ['a':'z' 'A':'Z' ];  

%  ficheiros a serem processados (do projecto Gutemberg
ficheiros={'pg21209.txt','pg26017.txt'};

% obter função massa de probabilidade (pmf em Inglês)
pmfPT=pmfLetrasPT(ficheiros,alpha)

%  visualizar função massa de probabilidade
stem(pmfPT)