function [J] = JaccartDists(Nu,Set)
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
end

