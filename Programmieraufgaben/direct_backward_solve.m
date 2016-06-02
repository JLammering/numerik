function x = direct_backward_solve(U, z)

l = length(z);

x = 1:l;%lege z an
x(l) = z(l)/U(l,l);%letztes Element von z bestimmen

for i=l-1:-1:1;%geht von vorletzter bis zur ersten Spalte
  summe = 0;
  for k=i+1:l;%geht von dem Element rechts vom Aktuellen bis zum Ende der Spalte
    summe = summe + U(i,k)*x(k);%vorher bestimmte x-Komponenten mit den Matrixelementen
    %multiplizieren und die Ergebnisse aufsummieren
  end
  x(i) = (z(i)-summe)/U(i,i);%restliche Elemente bestimmt
end

end
