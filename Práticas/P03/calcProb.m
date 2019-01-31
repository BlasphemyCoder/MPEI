function p = calcProb(p,n,N,k)
    lancamentos = rand(n,N) < p;
    sucessos = sum(lancamentos) == k;
    p = sum(sucessos)/N;
end

