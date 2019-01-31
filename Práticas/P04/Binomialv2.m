function y = Binomialv2(n,p,N)
    y = sum(rand(n,N) < p);
end

