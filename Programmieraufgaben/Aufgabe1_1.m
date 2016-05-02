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
 for k=0:a
  s=s+(x^k)/(factorial(k));
 end
 1/s 
end

%c)
z = 'Aufgabe c'
x = -0.5

for i=1:10
 s=0;
 a=n(i)
 for k=0:a
  s=s+(x^k)/(factorial(k));
 end
 s^11
end