function y = pmf(xi,pX,N)
    % xi -> valores possiveis de X
    % pX -> funcao massa de probabilidade
    y = zeros(1,N);
    a=cumsum(pX)
    for j=1:N
        U = rand();
        i = 1 + sum( U > cumsum(pX))
        y(j) = xi(i);
    end  
end

