function [p] = probCondicionada8(n,m,N)
    frases1 = randi([1,m],n,N);
    p2 = sum(sum(frases1==2)>0)/N;
    sum(frases1==2)>0 & sum(frases1==1)>0;
    p2e1 = sum(sum(frases1==2)>0 & sum(frases1==1)>0)/N;
    p = p2e1/p2;
end

