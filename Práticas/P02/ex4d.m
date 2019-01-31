N = 1e5;
m = [1e3 1e4 1e5 1e6];
n = 100;
probs = zeros(1,4);
for i=1:4
    [p1, probs(1,i)] = dardos(n,m(i),N);
end
probs
stem(probs);
xlabel('n');
ylabel('prob');