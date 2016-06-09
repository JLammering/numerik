function x = backward_solve(LU,z)

[n m] = size(LU);

LU = triu(LU);

x = direct_backward_solve(LU, z);
