function [inte]=simpsonc(f,a,b,M)
inte=0;
H=(b-a)/M;
x=linspace(a,b,M+1); % contiene gli estremi degli intervallini
for k=0:M-1
    xm=(x(k+1)+x(k+2))/2; % punto medio dell'intervallino
    inte=inte+ H/6*(f(x(k+1))+4*f(xm)+f(x(k+2)));
end