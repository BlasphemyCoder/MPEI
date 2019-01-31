N = 1e5; %%#de repeticoes da experiencia
n = 15; %%#de lancamentos
p = 0.5; %%Prob de sair cara ou coroa
k = 6; %%Sucesso qnd temos 6, ou mais, caras

calcP(p,n,k,N);

n = 20;

for k = 0 : n
  prob(k+1) = calcP(p,n,k,N); %%Prob sera um vetor em que a posicao k+1 equivale a probabilidade (tem de ser k+1 pois os vetores comecam na posicao 1, e o k inicaliza se a 0);
  fprintf(1,'P(%d sucessos em %d lancamentos e: %.4f\n',k,n, prob(k+1));
end
figure(1)
stem(prob)

n = 40;

for k = 0 : n
      prob1(k+1) = calcP(p,n,k,N);
      fprintf(1,'P(%d sucessos em %d lancamentos e: %.4f\n',k,n,  prob1(k+1));
end
figure(2)
stem(prob1)

n = 100;

for k = 0 : n
    prob2(k+1) = calcP(p,n,k,N);
  fprintf(1,'P(%d sucessos em %d lancamentos e: %.4f\n',k,n,  prob2(k+1));
end
figure(3)
stem(prob2)