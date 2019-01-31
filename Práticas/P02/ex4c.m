N = 1e5;
m = [1e3 1e4 1e5 1e6];
n = 1:10:100;

for i=1:4
    subplot(2,2,i);
    probs = 0*n;
    for c=1:length(n)
        [p1, probs(c)] = dardos(n(c),m(i),N);
    end
    figure(2);
    plot(n(:),probs(:),'b.');
    xlabel('n');
    ylabel('prob');
end