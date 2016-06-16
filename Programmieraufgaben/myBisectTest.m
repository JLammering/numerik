%Aufgabe b)
f = @(x) (cos(2*x)).^(2) - x.^2;%function_handle
%df = @(x) -2*(2*cos(2*x)*sin(2*x) + x);

x = zeros(1);%x, e und v werden angelegt
e = zeros(1);
v = zeros(1);

[x e v] = mybisect(f, 0, 0.75);%Funktion wird ausgeführt

x_plot = 1:length(x);%x-Achsen-Werte
y_plot = e;%y-Achsen-Werte

figure(1)#plotten der Geforderten Graphen
semilogy(x_plot,y_plot,'g-')
saveas(1,"PA7.1.png")


%Aufgabe c)
%Aus der Theorie zu erwarten, ist eine Konvergenzrate proportional zu (1/(2^(n+1))).
%Da die y-Achse logarithmisch ist, muss sich eine Gerade mit senkrechter Steigung
%ergeben. Diese ist auch in dem Graphen zu sehen.
