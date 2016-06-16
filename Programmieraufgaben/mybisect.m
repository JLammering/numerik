function [x e v] = mybisect(f, x00, x0)

b = x0;
a = x00;
x(1) = (a+b)/2;%der erste Wert für x wird initialisiert
e(1) = abs(a-x(1));
v(1) = f(x(1));
if v(1) == 0;%wenn die 0 Nullstelle direkt getroffen wird, bricht die Funktion ab
  return;
end%die ersten beiden Werte müssen vor der Schleife berechnet werden, um den Fehler angeben zu können
if f(a)*f(x(1))< 0;%Nullstelle liegt im ersten Intervall
  b = x(1);
  x(2) = (a+b)/2;%es wird das erste Intervall halbiert
end
if f(x(1))*f(b) < 0;%Nullstelle liegt im zweiten Intervall
  a = x(1);
  x(2) = (a+b)/2;%es wird das zweite Intervall halbiert
end
i = 2;
while abs(x(i)-x(i-1)) >= 10^(-12);%Schleife läuft bis der Fehler von 10^(-12) unterschritten wird
  v(i) = f(x(i));%Funktionswert wird abgespeichert
  e(i) = abs(x(i)-x(i-1));%Fehler wird abgespeichert
  if v(i) == 0;%Abbruch der Schleife wenn Nullstelle gefunden wurde
    break;
  end
  if f(a)*f(x(i))< 0;%Nullstelle liegt im ersten Intervall
    b = x(i);
    x(i+1) = (a+b)/2;%es wird das erste Intervall halbiert
  end
  if f(x(i))*f(b) < 0;%Nullstelle liegt im zweiten Intervall
    a = x(i);
    x(i+1) = (a+b)/2;%es wird das zweite Intervall halbiert
  end
  i += 1;%Laufvariable wird erhöht
end
l = length(x);
v(l) = f(x(l))%der letzte Wert für v und e müssen außerhalb abgespeichert werden
e(l) = abs(x(l)-x(l-1));
