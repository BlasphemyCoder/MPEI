N = 5e7;
pC = 0.0001;
pMC = 0.9;
pMNC = 0.1;

% simulação da populacao portuguesa feminina
casosCancro = rand(1, N) < pC;
cancroPos = sum(casosCancro == 1);
pA = sum(cancroPos)/N;

% simulação da sitacao mamograma postivo se cancro
mamPosCanc = rand(1, N) < pMC;
sucessos1 = sum(mamPosCanc == 1);
pB_A = sum(sucessos1)/N;

% simulação da sitacao mamograma postivo se NAO cancro
mamPosNaoCanc = rand(1, N) < pMNC;
sucessos2 = sum(mamPosNaoCanc == 1);
pB_nA = sum(sucessos2)/N;

pAB = pB_A * pA;
pB = pB_A*pA + pB_nA*(1-pA);
pA_B = pAB/pB

