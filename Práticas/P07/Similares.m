function [SimilarUsers] = Similares(limiar,Nu,J, users)
    threshold = limiar  % limiar de decisao
    % Array para guardar pares similares (user1, user2, distancia)
    SimilarUsers = zeros(1,3);
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
end

