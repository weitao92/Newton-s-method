format long e;

x0 = [1,2,-5];
Nmax = 30;
tol = 10e-010;

s = Newton1(x0,Nmax,tol);
disp(s);

x0 = [0.1,1.9,1.5];
s = Newton1(x0,Nmax,tol);
disp(s);

