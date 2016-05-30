format long

fx=@(x) (1+25*x.^2).^(-1);
a=-1
b=1


Fx=(2/5)*atan(5) # lösung des integrals


#Trapezregel
trapezregel=[1:100]
p_t=[0 1];#Stützstellen
w_t=[0.5 0.5];#Gewichte
for n=[1:100]
 trapezregel(n)=myQuadraturSum1D(fx,w_t,p_t,a,b,n);
end
Ftr=abs(Fx-trapezregel)#fehler


#simpsonregel
p_s=[0 1/2 1];
w_s=[1/6 4/6 1/6];
simpsonregel=[1:100]
for n=[1:100]
 simpsonregel(n)=myQuadraturSum1D(fx,w_s,p_s,a,b,n);
end
 Fsr=abs(Fx-simpsonregel)#fehler

#Milne-Regel
Milne_Regel=[1:100]
p_m=[0 0.25 0.5 0.75 1];
w_m=[7/90 32/90 12/90 32/90 7/90];
for n=[1:100]
 Milne_Regel(n)=myQuadraturSum1D(fx,w_m,p_m,a,b,n);
end
Fmr=abs(Fx-Milne_Regel)#fehler

N=[1:100]
figure(1)#plotten der Geforderten Graphen
semilogy(N,Ftr,'g-',N,Fsr,'r-',N,Fmr,'b-')
saveas(1,"myQuadraturSum1DPlot.png")
