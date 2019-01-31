function hash=myHash(str,N)
    str=double(str);
        hash = zeros(size(str,1),1);
        for i=1:size(str,2)
            hash = mod(hash * 65599 + str(:,i), N);
        end
end
