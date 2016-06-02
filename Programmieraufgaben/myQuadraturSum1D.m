function c = myQuadraturSum1D(f, w, p, a, b, N);

h = (b-a)/N;
integral = 0;

for i=1:N;
  integral = integral + myQuadratur1D(f, w, p.*h+(i-1)*h+a);
end

c = integral;
