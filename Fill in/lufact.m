function [L,U]=lufact(A)
% calcolo la fattorizzazione LU di A senza pivot
[n,m]=size(A);
if n~=m 
    warning('sistema non quadrato')
    return
end
for k=1:n-1
    % pivotazione
    for i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
        for j=k+1:n
            A(i,j)=A(i,j)-A(i,k)*A(k,j);
        end
    end
end
U=triu(A);
L=tril(A,-1)+speye(n);