%%  X: 'numero de coroas nos 4 lancamentos'
%   Sx = {0,1,2,3,4}

%% a)
Sx = 0:4;
n = 4;
N = 1e5;
p = 0.5;
px = zeros(1,length(Sx));
for k=0:n
    px(k+1) = calcProb(p,n,N,k);
end
stem(Sx,px);
axis([-1 5 0 0.4]);
xlabel('Sx');
ylabel('Px');
title('Função de Massa de X');

%% b)
E = 0;
for k=1:length(Sx)
    E = E + Sx(k)*px(k);
end
fprintf(1, "Valor esperado -> E[X] = %f\n",E);
Var = 0;
for k=1:length(Sx)
    Var = Var + (Sx(n)-E)^2*px(k);
end
fprintf(1, "Variancia      -> Var[X] = %f\n",Var);
desvioPadrao = sqrt(Var);
fprintf(1, "Desvio Padrao  -> DesvioPadrao = %f\n",desvioPadrao);

%% c)
%  Distribuicao Binomial
%  function p = Binomial(n,p,k)
%    p = factorial(n)/(factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k);
%  end

%% d)
pxTeorico = zeros(1,length(Sx));
n = 4;
for k=0:n
    pxTeorico(k+1) = factorial(n)/(factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k);
end
figure(2);
stem(Sx,pxTeorico);
axis([-1 5 0 0.4]);
xlabel('Sx');
ylabel('Px');
title('Função de Massa de X (Teorico)');

%% e)

% probabilidade de obter pelo menos 2 coroas
pPM2C = sum(px(1,3:end))

% probabilidade de obter ate 1 coroa
p0ou1C = sum(px(1,1:2))

% probabilidade de obter entre 1 e 3 coroas
p1a3C = sum(px(1,2:4))
