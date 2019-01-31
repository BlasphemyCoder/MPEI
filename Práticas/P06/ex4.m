clear all;

m = 1000;
len = 40;
n = 8*m;

fp = zeros(1,15);
for k=1:15
    %% initialization of BLOOM FILTER 
    B = init(n);
    
    %% insert
    for i=1:m
        string = stringGenerator_v1(len);
        B = insert(B,string,k);
    end

    %% check
    for i=1:10000
        string = stringGenerator_v1(len);
        r = check(B,string,k);
        if r == 1
            fp(k) = fp(k) +1;
        end
    end
    fp;
    figure(2)
    plot(fp,'o-')
end
min(fp)

%% Conclusão: O valor ótimo para k é 6!!!!