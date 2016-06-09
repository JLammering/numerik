function z = forward_solve(LU,b)

[n m] = size(LU);

LU = tril(LU, -1) + eye(n);

z = direct_forward_solve(LU, b);
