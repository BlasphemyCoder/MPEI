string = 'abcab cvfdwf earferafgeaf';
Shingles = {};
ShinglesHash = {};
for i=1:length(string)-9
    if (~ismember({string(i:i+9)},Shingles) && ~ismember({string(i+9:-1:i)},Shingles))
        Shingles{i, 1} = string(i:i+1);
        hashCode = myHashP06(string(i:i+9))
        Shingles{i, 1} = string(i:i+1);
    end
end

