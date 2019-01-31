function chave = stringGenerator_v2(pmfPT,letras)
    strLength = max([ 1, floor(10 + 5*randn())]);
    % escolhe-se o valor maximo entre 1 e o valor rand() para nao termos
    % comprimentos negativos
    chaveN = pmf(letras,pmfPT,strLength);
    chave = char(chaveN);
end

