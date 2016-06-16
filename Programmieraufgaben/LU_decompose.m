function LU = LU_decompose(A)
Az = A;%speichere ursrpüngliche matrix A
[m n] = size(A);%lese groesse von A aus
for j = 1:(n-1) ;%iteriere über alle spalten von der ersten bis zur vorletzten
  Lh = eye(n,n);%lege hilfsmatrix Lh (einheitsmatrix) an, diese wird im folgenden zu einer Frobeniusmatrix die jeweils in der j-ten spalte unterhalb des Diagonaleintrags die eintraege zu nullen ausloescht.
  for i = j+1:n ;% iteriert jeweils über die zeileneintraege der j-ten spalte unterhalb des jeweiligen diagonaleintrags
    Lh(i,j) = -A(i,j)/A(j,j);%sorgt dafür dass die Lh die entsrechenden eintraege in A auf Null setzt
  end
  A = Lh * A;%wende nun die aktuelle hilfmatrix um jeweils alle zeilen eintraege unterhalb des diagonalelements in der j-ten spalte zu Null wird
end
U = A;%nach vollständigem durchlaufen der for schleife ueber j hat nun A die obere dreiecksform sodass gilt A = U
L = Az * inv(U);% bestimme L durch umformen des zusammenhangs A= L*U nach L
LU = (L-eye(n,n)) + U;% gib L und U in einer matrix zurueck (ohne diagonale von L)
