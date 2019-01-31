%% calculate m
words1 = readFile('pg26017.txt');
m = length(words1)
n = 10*m;
k = floor(n*log(2)/m);

%% initialize BLOOM FILTER
B = CBF_init(n);

%% insert
h = waitbar(0,'Inserting...');
for i=1:m
    string = words1{i};
    B = CBF_insert(B,string,k);
    waitbar(i/m,h);
end


fprintf(1,'Number of occurrences of words: \n');
% remove repeated words and sort de remain ones
wordsUnique = sort(unique(words1));
len = length(wordsUnique);
values = zeros(1, len);

for i = 1: len
    word = wordsUnique{i};
    values(i) = CBF_count(B, word,k);
    fprintf(1,'\t%s -> %d\n', word, values(i));
end

[maxValue, maxIndex] = max(values);
fprintf(1,'\n=======================================================\nMost frequent word: %s (%d times)\n', wordsUnique{maxIndex}, maxValue);
fprintf(1, '=======================================================\n');
stem(B)
delete(h)