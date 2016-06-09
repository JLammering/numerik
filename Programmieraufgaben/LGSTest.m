%hier ein kleiner Testi-Test
format rat

b = [5 6 7]'
L = [1 0 0; 2 3 0; 4 5 6]
z = direct_forward_solve(L, b)

z = [8 7 435]'
U = [1 2 3; 0 4 5; 0 0 6]
x = direct_backward_solve(U, z)

v = [1 3 2 4]'
V = Vandermonde(v)
W = vander(v)

z = [4.5 2 -2.5 27/43]'
U = [1 -0.5 -1.5 -0.5; 0 1 -2 -2; 0 0 1 -2.5; 0 0 0 1]
x = direct_backward_solve(U, z)

-2.5-(-2.5*(27/43))
2-(-2*27/43-2*(-40/43))
4.5 -(-0.5*27/43-1.5*(-40/43)-0.5*60/43)

pi 
