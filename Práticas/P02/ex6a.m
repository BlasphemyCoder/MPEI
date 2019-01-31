N = 1e5;
m = 365;
n = 1;

while 1
    [p1, pF] = dardos(n,m,N);
    if pF > 0.5
        break
    end
    n = n+1;
end

fprintf("n = %d\n",n)