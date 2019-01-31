xi = [2 3 4 5];
px = [0.1 0.6 0.1 0.2];
N = 10000;
vetor = pmf(xi,px,N);
hist(vetor,xi);