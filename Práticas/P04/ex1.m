X0 = 100;
a = 7^5;
c = 137;
m = 2^31-1;
N = 100000;

%% a)
aleatorios = lcg(X0,a,c,m,N);
subplot(1,2,1);
hist(aleatorios,200),title("lgc()");

lcgUnique = length(unique(aleatorios(1,:)))

aleatorios1 = rand(1,N);
subplot(1,2,2);
hist(aleatorios1,200),title("rand()");

%% b)

aleatorios0a1 = aleatorios/m;
figure(2);
hist(aleatorios0a1,200),title("lgc0a1()");
count0a1 = length(unique(aleatorios(1,:)))

%% c)
a=13^13;
c=0;
m=2^59;

y = lcg(100,a,c,m,100000);
length(unique(y))
figure(3);
hist(y);