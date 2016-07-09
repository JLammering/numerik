function [x e v] = myNewton(f, df, x0)

x = zeros(1);%x, e und v werden angelegt
e = zeros(1);
v = zeros(1);
x(1) = x0;%erste Werte werden erzeugt
e(1) = abs(x(1));
v(1) = f(x0);

x(2) = x(1) - f(x0)/df(x0);%zweite Werte werden nach Newton-Regel erzeugt
e(2) = abs(x(1) - x(2));
v(2) = f(x(1));
k = 2;
if v(1) == 0%wenn Nullstelle erreicht ist: Abbruch!
  return;
end

while k <= 50 && e(k) > 10^(-12);%weniger als 50 Iterationsschritte und Fehler größer als 10^(-12)
  x(k+1) = x(k) - f(x(k))/df(x(k));%x-Werte werden berechnet
  e(k+1) = abs(x(k) - x(k+1));%Fehler wird bestimmt
  if v(k) == 0;%wenn Nullstelle erreicht ist: Abbruch!
    break;
  end
  v(k+1) = f(x(k+1));%der nächste Funktionswert wird bestimmt
  k += 1;
end
l = length(x);
v(l) = f(x(l));%der letzte Wert für v und e müssen außerhalb abgespeichert werden
e(l) = abs(x(l)-x(l-1));
