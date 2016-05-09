function c = myQuadratur1D(f, w, p);

n = length(p);

I=0;
for k=1:n;%Summe über die gewichteten Funktionswerte an den Stützstellen
  I= I+w(k)*f(p(k));
end

c=I*(p(n)-p(1));%mit (a-b) multiplizieren
