format long e;

f = @(x) exp(x) - 1.5 - atan(x);
fp = @(x) exp(x) - (1 / (x^2 + 1));
%fpp = @(x) exp(x) + (2*x / (x^2 + 1)^2);
%x = -1:0.001:1;
%plot(x,fp(x));
%f = @(x) x^2 - 4*x + 1;
%fp = @(x) 2*x - 4;
x0 = -7;
Nmax = 30;
tol = 10e-010;

newton(f,fp,x0,Nmax,tol);