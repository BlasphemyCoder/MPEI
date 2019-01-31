clear all;

countries = {'Portugal', 'França', 'Espanha', 'Alemanha'};
countries2 = {'Brasil', 'Panamá', 'Bélgica', 'Inglaterra', 'Finlândia'};
m=4;
n=8*m;
k=5;
B = init(n);

%% insert
for i=1:length(countries)
    B = insert(B,countries{i},k);
end
stem(B)

%% check False Negatives

fn = 0;
for i=1:length(countries)
    r = check(B,countries{i},k);
    if r==0
        fn=fn+1; %false negative
    end
end
fn

%% check False Positives

fn = 0;
for i=1:length(countries2)
    r = check(B,countries2{i},k);
    if r==0
        fn=fn+1; %false positive
    end
end
fn