function hk = HashCode(this,array)
%
% Compute hash of integer vector
%
% Reference: http://en.wikipedia.org/wiki/Universal_hashing
%            Sections: Hashing integers
%                      Hashing strings
%
hk = mod(mod(this.a * array + this.b,this.p),this.m) + 1;
end