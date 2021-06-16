function [zero,res,it]=secanti(f,x0,x1,tol,...
                                 nmax)
it = 0; err = tol+1;
while err >= tol && it < nmax
   rapporto=(f(x1)-f(x0))/(x1-x0);
   xnew=x1-f(x1)/rapporto;
   err=abs(xnew-x1);
   it=it+1;
   x0=x1;
   x1=xnew;
end
if (it==nmax && err > tol)
  fprintf(['secanti si e'' arrestato senza aver ',...
   'soddisfatto l''accuratezza richiesta, avendo\n',...
   'raggiunto il massimo numero di iterazioni\n']);
end
zero = x1; res = f(x1);
return

