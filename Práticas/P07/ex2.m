tic
[Set, users] = create('u.data');
toc

tic
Nu= length(users);
J = JaccartDists(Nu,Set);
toc

tic
limiar = 0.4;
SimilarUsers = Similares(limiar,Nu,J,Set);
toc
