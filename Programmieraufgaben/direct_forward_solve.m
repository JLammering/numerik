function z = direct_forward_solve(L, b)

l = length(b);

z = 1:l; % lege z an
z(1) = b(1)/L(1,1); %erstes Element des Vektors bestimmt

for i=2:1:l;%geht von der 2. bis zur letzten Zeile
  summe = 0;
  for k=1:i-1;%geht von der 1. bis zur Spalte vor dem aktuell zu berechnenden Element
    summe = summe + L(i,k)*z(k);%vorher bestimmte z-Komponenten mit den Matrixelementen
    %multiplizieren und die Ergebnisse aufsummieren
  end
  z(i) = (b(i)-summe)/L(i,i);%restliche Elemente bestimmt
end

end
