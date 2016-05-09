f = @(x) x.^(-2);%function_handle 

w =[0.5 0.5];%Gewichte
p= [0.5 1];%Punkte
I_T = myQuadratur1D(f, w, p);
a = 'Trapezregel'
I_T

w = [1/6 4/6 1/6];
p = [0.5 0.75 1];%[a (a+b)/2) b]
I_S = myQuadratur1D(f, w, p);
a = 'Simpson-Regel'
I_S

w = [1/8 3/8 3/8 1/8];
p = [0.5 2/3 5/6 1];%[a a+H b-H b]
I_3 = myQuadratur1D(f, w, p);
a= '3/8-Regel'
I_3
