%% calculate m
words1 = readFile('pg26017.txt');
m = length(words1)
n = 10*m;
k = floor(n*log(2)/m);
words2 = readFile('pg16425.txt');
%% initialize BLOOM FILTER
B = init(n);

%% insert
h = waitbar(0,'Inserting...');
for i=1:m
    string = words1{i};
    B = insert(B,string,k);
    waitbar(i/m,h);
end
stem(B)
delete(h)

%% check
h = waitbar(0,'Testing...');
negatives = 0;
for i=1:length(words2)
    string = words2{i};
    r = check(B,string,k);
    if r == 0
        negatives = negatives +1;
    end
    waitbar(i/m,h);
end

negatives
delete(h)

%% RESPOSTA:
%% Nao! Quando temos um negativo, esse negativo e certo, i.e
%% se diz que nao pertence, entao temos certeza que nao pertence.
