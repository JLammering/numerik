%1.1 a)
z = 'Aufgabe a'

format long
x=-5.5
n=3:3:30

for i=1:10%diese Schleife geht durch das Array der Grenzen
 s=0;
 a=n(i)
 for k=0:a%diese Schleife simuliert die Summe
  s=s+(x^k)/(factorial(k));
 end
 s %das ergebnis der Summe wird ausgegeben
end

%b)
b = 'Aufgabe b'
x = 5.5;

for i=1:10
 s=0;
 a=n(i)
 for k=0:a%e^5.5 wird berechnet
  s=s+(x^k)/(factorial(k));
 end
 1/s %1/(e^5.5) wird ausgegeben
end

%c)
z = 'Aufgabe c'
x = -0.5

for i=1:10
 s=0;
 a=n(i)
 for k=0:a%e^-0.5 wird berechnet
  s=s+(x^k)/(factorial(k));
 end
 s^11%(e^-0.5)^11 wird ausgegeben
end

%b konvergiert schneller gegen den exakten Wert
%c konvergiert sogar noch schneller
%dies liegt daran, dass 5.5 und 0.5 in Binärschreibweise besser darstellbar sind als -5.5
