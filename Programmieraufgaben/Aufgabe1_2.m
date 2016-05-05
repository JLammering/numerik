%erstellt zwei Plots des selben Polynoms. Ein Mal in Linearfaktor-Schreibweise und ein Mal in Horner-Form
x = single(0.8:5*10^(-5):1.2);
plot(x,(x-1).^7);

figure

plot(x,((((((x-7).*x+21).*x-35).*x+35).*x-21).*x+7).*x-1);

%figure 2 ist ungenauer und fluktuiert. Dies liegt daran, dass bei der Horner-Form mit den ungenauen single-Werten mehr Rechenoperationen ausgeführt werden
% als bei der Schreibweise mit Potenz. Dadurch wird öfter gerundet und so pflanzen sich die Rundungsfehler fort.
