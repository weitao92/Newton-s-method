function [ Y ] = F( X0 )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

x = X0(1,1);
y = X0(1,2);
z = X0(1,3);
Y = zeros(3,1);

%Y(1,1) = 7 * x^3 - 10 * x - y - 1;
%Y(2,1) = 8 * y^3 - 11*y + x - 1;

Y(1,1) = sin(x) + x * exp(y-2) + x + y^2 + cos(z) - 4;
Y(2,1) = x^4 + 8*x*y + 3*z + 10*z*y - 3*pi/2 - 10*pi;
Y(3,1) = cos(x^2+z^2) - y*exp(z) - cos((pi^2)/4) + 2*exp(pi/2);

end

