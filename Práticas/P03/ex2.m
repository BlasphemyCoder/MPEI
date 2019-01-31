%%  a)
%   Y: 'retirar uma nota da caixa'
%   Sx = {1,2,3,4,...,100}
%   Px(X = xi) = 1/100, com xi = 1,2,3,...,100

%%  b) & c)
%   X: 'valor da nota retirada'
Sx = [5 50 100];
Px = [90/100 9/100 1/100];
stem(Sx,Px);
title('Função Massa de Probabilidade de X');
xlabel('Sx');
ylabel('Px');
axis([0 110 0 0.95]);