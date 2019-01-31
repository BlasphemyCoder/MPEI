%   X: "numero de pecas c/defeito em 5 pecas"
Sx = 0:5;
%% a)
% TEORICO
pxT = zeros(1, length(Sx));
n = 5;
p=0.3;
for k=0:n
    pxT(k+1) = factorial(n)/(factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k);
end
figure(1);
stem(Sx,pxT);
axis([-1 6 0 0.37]);
xlabel('Sx');
ylabel('Px');
title('Função de Massa de X (Teorico)');

% SIMULACAO
N = 1e5;
n = 5;
p=0.3;
px = zeros(1,length(Sx));
for k=0:n
    px(k+1) = calcProb(p,n,N,k);
end
figure(2);
stem(Sx,px);
axis([-1 6 0 0.37]);
xlabel('Sx');
ylabel('Px');
title('Função de Massa de X');

%% b)
pMax2Deft = sum(px(1,1:3))
