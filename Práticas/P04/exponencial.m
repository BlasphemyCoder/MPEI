function y = exponencial(N,media)
    U = rand(1,N);
    y = -media*log(U);
end

