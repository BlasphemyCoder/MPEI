% Assumindo queo numero de erros tipogra?cos numa pagina de um livro tem 
% uma distribuicao de Poisson com ? = 1, calcule a probabilidade de que
% exista pelo menos um erro numa determinada pagina

% ? = 1 (erros por pagina)

p = 1;
n = 1;
media = n*p; % media = ? = 1

% prob de existir pelo menos um erros numa pagina (pPM1E)
% pM1E = 1 - p0E

% p0E = px(k=0)
k=0;
p0E = media^k*exp(-media)/factorial(k);
pPM1E = 1 - p0E