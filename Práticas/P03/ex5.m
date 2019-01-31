p = logspace(-3,log10(1),100);
pDesp2M = zeros(1,length(p));
for k =1:length(p)
    pDesp2M(k) = factorial(2)/(factorial(2-2)*factorial(2)) * p(k)^2*(1-p(k))^(2-2);
end
plot(p,pDesp2M,'r');
hold on;
pDesp4M = zeros(1,length(p));
for k =1:length(p)
    pDesp4M(k) = factorial(4)/(factorial(4-3)*factorial(3)) * p(k)^3*(1-p(k));
    pDesp4M(k) = pDesp4M(k) + factorial(4)/(factorial(4-4)*factorial(4)) * p(k)^4;
end
plot(p,pDesp4M,'b');
legend('2 motores', '4 motores');
title('Probabilidade do avião se despenhar em funcao da probabilidade de cada motor avariar');
xlabel('Prob de cada motor avariar');
ylabel('Prob do aviao se despenhar');

%% Conclusao:
% Como, regra geral, a prob de cada motor avariar é muito pequena, a prob
% de um aviao de 4 motores se despenhar é mais pequena que a de um aviao
% com 2 motores