function [x]=forsub(L,b);
% risoluzione sistema triangolare inferiore
[n,m]=size(L);
[p,q]=size(b);
if n~=m || p~=n || q~=1
    warning('sistema non quadrato')
    return
end
x=zeros(n,1);
for i=1:n
    s=0;
    for j=1:i-1
        s=s+L(i,j)*x(j);
    end
    x(i)=(b(i)-s)/L(i,i);
end
