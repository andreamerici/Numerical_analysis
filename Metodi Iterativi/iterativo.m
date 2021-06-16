function [x,iter,Err]=iterativo(A,b,x0,tol,nmax,metodo)
% Jacobi o Gauss-Seidel
% metodo ='J' se voglio Jacobi, 
% metodo ='GS' se voglio Gauss Seidel
[n,m]=size(A); % fare controlli su n==m

if strcmp(metodo,'J')
    % P per Jacobi
P=diag(diag(A));
elseif strcmp(metodo,'GS')
    % P per Gauss-Seidel
    P=tril(A);
end
B=speye(n)-P\A;
g=P\b;

err=tol+1; iter=0; Err=err;
while err> tol && iter < nmax
    x=B*x0+g;
    err=norm(x-x0);
    Err=[Err;err];
    iter=iter+1;
    x0=x;
end
    