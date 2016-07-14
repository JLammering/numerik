%methode wird getestet für die Jacobi-Funktion
n = 10:60;
eps = 1e-6;
maxit = 1e8;
numitjacobisave = zeros(1, 50);
xjacobisave = zeros(60, 50);
for i = 1:50;
  [A b] = my_test_system(n(i));
  [xjaczwischen numitjaczwischen] = my_Jacobi(A, b, b, eps, maxit);
  xjacobisave(1:n(i), i:i) = xjaczwischen;
  numitjacobisave(i) = numitjaczwischen;
end

figure(1)

plot(n, numitjacobisave)
saveas(1,"PA10.png")

%funktioniert aus unerklärlichen Gründen nicht
