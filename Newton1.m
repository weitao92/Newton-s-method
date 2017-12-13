function [ X0 ] = Newton1(X0,Nmax,tol)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
Results = [];
k = 0;

Max = 1000;
finished = 0;

while(k <= Nmax)
    
    if(Max < tol)
        finished = 1;
        break;
    end
    
    x = X0(1,1);
    y = X0(1,2);
    z = X0(1,3);
    
    Y = F(X0);
    A = JF(X0);
    Y = -Y;
    H = A\Y;
    X0 = X0 + transpose(H);

    Max = max(abs(Y));
    
    Results = [Results; k, x, y, z, Max];
    
    k = k + 1;
end

if finished == 1
    
else 
    disp('newton failed to converge after maximum iterations');
end

disp(Results);

end

