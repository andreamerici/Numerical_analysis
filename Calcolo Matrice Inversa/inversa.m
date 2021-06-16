function [A1]=inversa(A)
[n,~]=size(A);
[L,U,P]=lu(A);
E=speye(n);
A1=zeros(n);
for j=1:n
    b=E(:,j);
    y=L\(P*b);
    x=U\y;
    A1(:,j)=x;
end