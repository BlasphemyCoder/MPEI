function [] = totobola(Total,N)
  pX = ones(1,Total)*1/Total;
  xi = 1:Total;
  numerosGerados=[];
  while( length(unique(numerosGerados)) ~= N)
    numerosGerados =  pmf (xi, pX, N)
  end
  stem(numerosGerados,ones(1,N));
end