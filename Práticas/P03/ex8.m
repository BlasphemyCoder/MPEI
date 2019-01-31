% Verifique se a funcao f(x) = (x + 5)/30 pode representar
% a funcao de probabilidade de uma variavel aleatoria
% que so possa tomar os valores 1, 2, 3 e 4
px = zeros(1,4);
for i=1:4
    px(i) = f(i);
end
pSum = sum(px)
stem(1:4,px);
axis([0 5 0 1]);
xlabel('Sx');
ylabel('P');
title('Função Massa de Probabilidade');

% verificacao analitica
if (sum(px) == 1 & px >= 0)
    fprintf(1,"A funcao f pode representar uma funcao massa de probabilidade  de uma variavel aleatoria que so possa tomar os valores 1, 2, 3 e 4.");
else
    fprintf(1, "Nao pode representar");
end
% como pSum = 1, entao, de facto, a variavel aleatoria so pode tomar os
% valores 1, 2, 3 e 4!