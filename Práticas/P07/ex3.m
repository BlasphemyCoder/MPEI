tic

%% Load database
[Set, users] = create('u.data');
setLength = length(Set);

%% Apply MinHash
nHF = 500;
signatures = zeros(nHF,setLength);

p=10001;
while ~isprime(p)
  p=p+2;
end
a = randi([1,(p-1)],nHF,1);
b = randi([1,(p-1)],nHF,1);
for n=1:setLength % user 
    for r=1:nHF % hash functions
        movies = Set{n};
        numShingles = length(Set{n});
        hk = zeros(numShingles,1);
        for i=1:numShingles
            hk(i,1) = mod(a(r,1) * Set{n}(i) + b(r,1),p);
        end
        signatures(r,n) = min(hk);
    end
end
    
%% Check Similarity
threshold =0.4;  % limiar de decisao
for n1=1:setLength
    for n2= n1+1:setLength
        d = sum(signatures(:,n1) == signatures(:,n2))/nHF;
        d = 1 -d ; 
        if  d <= threshold
            fprintf(1,"Distancia : %f -> user 1: %d user 2: %d\n", d, users(n1),users(n2));
        end
    end
end
toc

