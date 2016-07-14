function [A b] = my_test_system(n)

T = eye(n).* 4 - diag(ones(n-1, 1), 1) - diag(ones(n-1, 1), -1);%T initialisiert
%Beispielcode:
%A(6:15,6:15)=B;
%+ diag(T) - diag(eye(n*n - 1), -1) - diag(eye(n*n - 1), 1);
minid = eye(n) * (-1);

A = zeros(n*n);

for i=0:n-1;
  if i > 0;%links von T liegend
    A((i*n+1):(i*n+n), (i*n+1-n):(i*n)) = minid;
  end
  A((i*n+1):(i*n)+n,(i*n+1):(i*n)+n) = T;
  if i < n-1;%rechts von T liegend
    A((i*n+1):(i*n+n), (i*n+1+n):(i*n+2*n)) = minid;
  end
end;
b = ones(n*n, 1);
