function x = direct_backward_solve(U, z)

l = length(z);

x = 1:l;
x(l) = z(l)/U(l,l);

for i=l-1:-1:1;
  summe = 0;
  for k=i+1:n;
    summe = summe + A(i,k)*x(k);
  end
  x(i) = (b(i)-summe)/U(i,i);
end

end
