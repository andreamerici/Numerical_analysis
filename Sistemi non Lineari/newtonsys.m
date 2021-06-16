function [zero,res,it,Err]=newtonsys(f,Jf,x0,tol,...
                                 nmax)

x = x0;
it = 0; err = tol+1;
Err=[];
while err >= tol && it < nmax
    b=-f(x);
    A=Jf(x);
    z=A \ b; % risolve il s.l. Az =b con un metodo diretto
   xnew=z+x;
   % xnew-x è z
   err=norm(z); % calcola la norma euclidea
   Err=[Err;err]; % aggiunge in coda al vettore il 
   % nuovo elemento
   it=it+1;
   x=xnew;
end
if (it==nmax && err > tol)
  fprintf(['Newton si e'' arrestato senza aver ',...
   'soddisfatto l''accuratezza richiesta, avendo\n',...
   'raggiunto il massimo numero di iterazioni\n']);
end
zero = x; res = norm(f(x));
return

