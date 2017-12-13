function [ A ] = JF( X )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
x = X(1,1);
y = X(1,2);
z = X(1,3);
A = zeros(3,3);

%A(1,1) = 21 * x^2 - 10;
%A(1,2) = -1;
%A(2,1) = 1;
%A(2,2) = 24 * y^2 - 11;

A(1,1) = cos(x) + exp(y-2) + 1;
A(1,2) = x*exp(y-2) + 2*y;
A(1,3) = -sin(z);

A(2,1) = 4*x^3 + 8*y;
A(2,2) = 8*x + 10*z;
A(2,3) = 3 + 10*y;

A(3,1) = 2*x*(-sin(x^2+z^2));
A(3,2) = -exp(z);
A(3,3) = 2*z*(-sin(x^2+z^2)) - y*exp(z);

end

