function [x numit] = my_Jacobi(A, b, x0, eps, maxit)

epseingdefekt = eps* norm(A.*x0 - b );
[m n] = size(A);
x = x0;
numit = 0;
while norm(A*x - b ) > epseingdefekt && numit < maxit;
  for i = 1:n;
    for j = 1:n;
      if i == j;
        continue;
      end
      sum = A(i,j) * x(j);
    end;
    x(i) = 1/A(i, i) * (b(i) - sum);
  end;
  numit += 1;
end;
