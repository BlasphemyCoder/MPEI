n = 1:10:100;
m = 1000;
N = 1e5;
probs = 0*n;
for i=1:length(n)
    [p1, probs(1,i)] = dardos(n(i),m,N);
end
stem(probs);
xlabel('n');
ylabel('prob');