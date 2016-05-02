

format long
x=-5.5
n=3:3:30

function y = fakultaet(a)
%Berechnet Fakultät der Zahl a

fak=1;

if a == 0
  y = 1;
else
  for i=1:a
    fak=fak*i;
  end
end

y=fak;
endfunction

function q = rekfak(a)
%berechnet Fakultät rekursiv

if a == 0
  q =1;
else
  q = a*rekfak(a-1)
end
endfunction

for i=1:10%geht 
 s=0;
 a=n(i)
 for k=0:a
  s=s+(x^k)/(fakultaet(k));
 end
 s
end
