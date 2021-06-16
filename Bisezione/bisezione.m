function [z,k,res] = bisezione(f,a,b,tol,Kmax)
% [z,k,res] = bisezione(f,a,b,tol,Kmax)
% bisezione per il calcolo di una radice di f(x)
% nell'intervallo [a,b]
k=0, err=1;
while err> tol && k <Kmax
    c=(a+b)/2;
    y=f(c);
    err=(b-a)/2;
    if abs(y)< tol
        err =0;
    else
        if f(a)*y <0
            b = c;
        else 
            a = c;
        end
        k= k+1;
    end
end
z = c; res=f(z);
            


