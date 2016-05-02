%single
x = 0.8:5*10^(-5):1.2;
plot(x,(x-1).^7);

figure

plot(x,((((((x-7).*x+21).*x-35).*x+35).*x-21).*x+7).*x-1);

%kein Plan wo der Unterschied sein soll