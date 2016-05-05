%myNewtonInterpoltest
n = [7, 12, 17]

funtion [f] = Runge(x)
  for i=1:length(x)
    f(i) = 1/(1+25*x(i)^2)
  end
end

for k=1:3
  for i=0:n(k)
    x(i+1) = -1 +(2*i/n(k))
  end
end

for i=1:length(x)
  c(i) = myNewtonInterpol(x(i), Runge(x(i)))
end


for k=1:3
  for i=1:n(k)
    f(i) = c(i) +(x-x(i))......%keine Zeit mehr gehabt sorry 
  end
end
