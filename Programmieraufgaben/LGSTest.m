%hier ein kleiner Testi-Test
b = [5 6 7]'
L = [1 0 0; 2 3 0; 4 5 6]
z = direct_forward_solve(L, b)

z = [8 7 435]'
U = [1 2 3; 0 4 5; 0 0 6]
x = direct_backward_solve(U, z)

v = [1 3 2 4]'
V = Vandermonde(v)
W = vander(v)
