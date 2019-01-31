function chave = stringGenerator_v1(strLength)
    letras = ['A':'Z' 'a':'z'];
    chaveN = zeros(1,strLength);
    for k = 1 : strLength
        i = randi([1 length(letras)]);
        chaveN(k) = letras(i);
    end
    chave = char(chaveN);
end