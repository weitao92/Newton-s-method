function [ xn ] = modifiedNewton(f,fp,x0,Nmax,tol)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Results = [];
k = 0;
xn = x0;
fx = feval(f,xn);
finished = 0;
err = 1000000;

while k <= Nmax
    Results = [Results; k, xn, fx];
    
    if(err <= tol)
        finished = 1;
        break;
    end
    
    deri = feval(fp,xn);
    temp = xn;
    xn = xn - fx/deri;
    err = abs(xn-temp)/abs(temp);
    %disp(err);
    fx = feval(f,xn);
    k = k + 1;    
end

if finished == 1
    
else 
    disp('newton failed to converge after maximum iterations');
end

disp(Results);

end

