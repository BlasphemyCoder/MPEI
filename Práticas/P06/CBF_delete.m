 function [ B ] = CBF_delete(B, elem, k)
    % k -> number of hash functions
    % B -> BLOOM FILTER
    n = length(B);
    key     = elem;
    
    for i=1:k
        % apply hash function
        key = [key num2str(i)];
        pos = myHashP06(key)+1;
        pos = rem(pos,n)+1;
        if B(pos) ~= 0
            B(pos) = B(pos) - 1;
        end
    end
    
end

