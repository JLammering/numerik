function V = Vandermonde(v)

n = length(v);%laenge des vectors bestimmen
V = ones(n,n);%lege nxn matrix an, bei der jeder eintrag gleich 1 ist

%gehe die spalten i der matrix durch und lege jeweils die vectorkomponenten jeweils ^(n-i) hinein
for i=1:n;
  V(:,i) = V(:,i).*v.^(n-i);
end

%liefert die gleichen Ergebnisse wie vander(v)
