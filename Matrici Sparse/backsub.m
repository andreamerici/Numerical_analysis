function [x]=backsub(U,b);
% risoluzione sistema triangolare superiore
[n,m]=size(U);
[p,q]=size(b);
if n~=m || p~=n || q~=1
    warning('sistema non quadrato')
    return
end
x=zeros(n,1);
for i=n:-1:1
    s=0;
    for j=i+1:n
        s=s+U(i,j)*x(j);
    end
    x(i)=(b(i)-s)/U(i,i);
end
