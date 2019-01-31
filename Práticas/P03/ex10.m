N = 1e5;
% valores random num intervalo [a,b] -> (b-a)*rand(n,m)+a
% a = 0 e b = 10
Sx = 10*rand(1,N);
pTotal = sum(Sx>= 0 & Sx <= 10)/N

%% a)
%  prob para quando X < 3
pA = sum(Sx < 3)/N
pATeorico = (3-0)/(10-0)

% prob para quando X > 7
pB = sum(Sx > 7)/N
pBTeorico = (10-7)/(10-0)

% prob para quando 1 < X < 6
pC = sum(Sx > 1 & Sx < 6)/N
pCTeorico = (6-1)/(10-0)
