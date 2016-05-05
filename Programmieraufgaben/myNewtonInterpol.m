%Fuktion, die die Koeffizienten des Newton-Polynoms berechnet
function [c] = myNewtonInterpol(x,f)

if length(x)==length(f)%Dimension muss gleich sein
  c = zeros(1,n)%c initialisieren
  c(1)=f(1)%1. Wert
  for i=2:lenght(x)
    f=spalte(x,f)
    c(i)=f(1)%restlichen Werte werden dem ersten Eintag der jeweiligen Spalte entnommen
  end

end
end

function [spal] = spalte(x, f_i)%weitere Spalten werden berechnet
l = lenght(f_i)%Länge der Spalte
dif = length(x)-l+1%welche x-Werte genutzt werden, hängt von der Länge der Spalten ab
spal = zeros(1,l-1)

for i=1:l-1
  spal(i) = (f_i(i+1) - f_i(i)) / (x(i+dif) -x(i))%Formel zur Berechnung der dividierten Differenzen
end
end
