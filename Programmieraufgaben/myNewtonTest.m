%Aufgabe b)
f = @(x) (cos(2*x)).^(2) - x.^2;%function_handle
df = @(x) -2*(2*cos(2*x)*sin(2*x) + x);

[x2 e2 v2] = myNewton(f, df, 0.75);
[x e v] = mybisect(f, 0, 0.75);


x_plot = 1:length(x);%x-Achsen-Werte
x2_plot = 1:length(x2);
y_plot = e;%y-Achsen-Werte

figure(1)%plotten des geforderten Graphen

semilogy(x_plot,y_plot,x2_plot, e2)
saveas(1,"PA8.1.png")

%Aufgabe c)
%Nach der Theorie sollte die Konvergenzrate q^(2^t) betragen.
%Nach Logarithmierung ist also immer noch ein exponentieller Abfall(da q kleiner 1 ist)
%zu erwarten. Dies ist auch im Graph zu erkennen.
