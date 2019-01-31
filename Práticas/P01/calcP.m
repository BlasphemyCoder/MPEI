function [p1] = calcP(p,n,k,N)
lancamentos = rand(n,N) < p;
sucessos= sum(lancamentos)==k;
p1 = sum(sucessos)/N;
end

