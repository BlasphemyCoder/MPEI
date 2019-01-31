function [ value ] = CBF_count(B, elem, k)
    % k -> number of hash functions
    % B -> BLOOM FILTER
    n = length(B);
    
    values = zeros(1, k);
    key = elem;
    
    for i=1:k
        key = [key num2str(i)];
        pos = myHashP06(key)+1;
        pos = rem(pos,n)+1;
        values(i) = B(pos);
    end
    
    value = min(values);
end

