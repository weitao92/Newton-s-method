format long e;

x = -50:0.01:12;
f = @(x)3.^(3.*x+1) - 7*5.^(2.*x);
plot(x,f(x));
fp = @(x) log(3) * 3.^(3*x+2) - 14 * log(5) * 5.^(2*x);

disp(fzero(f, X));

x0 = 12;
Nmax = 30;
tol = 10e-010;

modifiedNewton(f,fp,x0,Nmax,tol);

x0 = 0;
modifiedNewton(f,fp,x0,Nmax,tol);
