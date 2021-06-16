function [zero,res,it]=newton(f,df,x0,tol,...
                                 nmax)

x = x0;
it = 0; err = tol+1;
while err >= tol && it < nmax
   xnew=x-f(x)/df(x);
   err=abs(xnew-x);
   it=it+1;
   x=xnew;
end
if (it==nmax && err > tol)
  fprintf(['Newton si e'' arrestato senza aver ',...
   'soddisfatto l''accuratezza richiesta, avendo\n',...
   'raggiunto il massimo numero di iterazioni\n']);
end
zero = x; res = f(x);
return

