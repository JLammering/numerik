function LU_Test()

for n = 10:5:25;
  i = 1:n;
  x = (n-i)./n;
  V = vander(x);
  b =  [ones(1, ceil(n/2)-1), 2*ones(1, floor(n/2)+1)];
  LU = LU_decompose(V);
  z = forward_solve(LU,b);
  y = backward_solve(LU,z)
  norm(V*y.' - b.')

end
