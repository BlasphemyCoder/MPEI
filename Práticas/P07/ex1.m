% Codigo base para guiao PL07 MPEI 2018-2019
tic;
udata=load('u.data');  % Carrega o ficheiro dos dados dos filmes
% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;
% Lista de utilizadores
users = unique(u(:,1));     % Extrai os IDs dos utilizadores
Nu= length(users);          % Numero de utilizadores
% Constroi a lista de filmes para cada utilizador
Set= cell(Nu,1);            % Usa celulas
for n = 1:Nu  % Para cada utilizador
    % Obtem os filmes de cada um
    ind = find(u(:,1) == users(n));
    % E guarda num array. Usa celulas porque utilizador tem um numero
    % diferente de filmes. Se fossem iguais podia ser um array
    Set{n} = [Set{n} u(ind,2)];
end
toc
if(exist('J.mat'))
  load('J.mat')
  fprintf(1,'Loaded Matrix J\n');
else
  fprintf(1,'Calculando Matriz J\n');
end


%% Calcula a distancia de Jaccard entre todos os pares pela definicao.
tic
J=zeros(Nu,Nu);  % array para guardar distancias
h= waitbar(0,'Calculating');
for n1= 1:Nu
    waitbar(n1/Nu,h);
    for n2= n1+1:Nu
        I = intersect(Set{n1},Set{n2});
        U = union(Set{n1},Set{n2});
        J(n1,n2) = 1 - length(I)/length(U);
    end
end
delete (h)
toc

save('J.mat', 'J');
%%  Com base na distancia, determina pares com
%%  distancia inferior a um limiar pre-definido
tic
threshold =0.4  % limiar de decisao
% Array para guardar pares similares (user1, user2, distancia)
SimilarUsers= zeros(1,3);
k= 1;
for n1= 1:Nu
    for n2= n1+1:Nu
        if  J(n1,n2) <= threshold
            SimilarUsers(k,:) = [users(n1) users(n2) J(n1,n2)];
            k= k+1;
            fprintf(1,"Distancia : %f -> user 1: %d user 2: %d\n", J(n1,n2), users(n1),users(n2));
        end
    end
end
toc

