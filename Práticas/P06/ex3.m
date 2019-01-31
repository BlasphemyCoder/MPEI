clear all;
tic

m = 1000;
len = 40;
n = 8000;
k=3;

%% initialization of BLOOM FILTER 
B = init(n);

%% insert
h = waitbar(0,'Inserting...');
strings1 = cell(1,1000);
for i=1:m
    string = stringGenerator_v1(len);
    strings1{i} = string;
    B = insert(B,string,k);
    waitbar(i/1000,h);
end
stem(B)
delete(h)

%% check
h = waitbar(0,'Testing...');
strings2 = cell(1,10000);
fp = 0;
for i=1:10000
    string = stringGenerator_v1(len);
    strings2{i} = string;
    r = check(B,string,k);
    if r == 1
        fp = fp +1;
    end
    waitbar(i/10000,h);
end

intersect(strings1,strings2)
fp
delete(h)
toc