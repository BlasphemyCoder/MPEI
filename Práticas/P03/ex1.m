% X: "face que fica visivel no lancamento de 1 dado"
% Sx = {1,2,3,4,5,6}
% Px(X = xi) = 1/6, com xi = 1,2,3,4,5,6

%% a)
Sx = 1:6;
Px = ones(1,6)/6;
subplot(2,1,1);
stem(Sx,Px);
title('Função Massa de Probabilidade');
xlabel('Sx');
ylabel('Px');
axis([0 7 0 0.2]);

%% b)
x = -1:9;
Fx = [0 0 cumsum(Px) 0 0 0];
subplot(2,1,2);
stairs(x,Fx);
title('Função de Distribuição Acumulada');
xlabel('x');
ylabel('Px');
axis([-1 9 0 1.1]);