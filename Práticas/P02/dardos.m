function [p1,p2] = dardos(n,m, N)
% temos n dardos, m alvos e N repeticoes da experienca
% funcao que calcula 2 probs:
%   -> p1: prob de nenhum alvo ter sido atingido mais do que uma vez
%   -> p2: prob de pelo menos 1 alvo ter sido atingido 2 (ou mais) vezes

alvos = randi([1 m],n,N);
sucessos = 0;
for i=1:N
    if length(unique(alvos(:,i))) == n
        sucessos = sucessos + 1;
    end
end
p1 = sucessos/N;
p2 = 1 - p1;
end

