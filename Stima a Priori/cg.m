function [x,k,res]=cg(A,b,x0,tol,nmax)
% risolvo Ax=b con Gradiente coniugato
x=x0; r=b-A*x; p=r;
normab=norm(b);
k=0; err=tol+1; res=err;
while k < nmax && err> tol
    v=A*p; % operazione piu' costosa dell'iterazione
    alpha=(p'*r)/(p'*v);
    x=x+alpha*p;
    r=r-alpha*v;
    beta=(v'*r)/(p'*v);
    p=r-beta*p;
    err=norm(r)/normab;
    res=[res;err];
    k=k+1;
end