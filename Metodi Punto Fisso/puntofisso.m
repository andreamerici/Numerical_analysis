function [alpha,it,Err]=puntofisso(phi,x0,tol,...
                                 nmax)

x = x0;
it = 0; err = tol+1;
Err=[];
while err >= tol && it < nmax
   xnew=phi(x);
   err=abs(xnew-x);
   Err=[Err;err];
   it=it+1;
   x=xnew;
end

alpha = x; 

