function F = probabilidades(x)

    r = x(1);
    b = x(2);
    
    F(1) = 1 - (1 -0.32^r)^b - 0.01;
    F(2) = 1 - (1 -0.6^r)^b - 0.99;
end