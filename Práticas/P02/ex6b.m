n = 1;
[p1 pF] = dardos(n,365,1e5);
while pF <= 0.9
    n = n+1;
    [p1 pF] = dardos(n,365,1e5);
end
fprintf("n = %d\n",n)