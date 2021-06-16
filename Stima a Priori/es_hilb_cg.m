%% Esercizio Matrice di Hilbert

clear all;
close all;
clc;



for n=14; % 4:2:20
A=hilb(n); 
b=zeros(n,1);
    for i=1:n
%     s=0;
%     for j=1:n
%         s=s+1/(i+j-1);
%     end
%     b(i)=s;
    b(i)=sum(1./(i+(1:n)-1));
    end

xd=A\b;
x0=zeros(n,1); tol=1.e-10; nmax=50;
[xcg,kcg,rescg]=cg(A,b,x0,tol,nmax);
xesatta=ones(n,1);
errd=norm(xd-xesatta)/norm(xesatta);
errcg=norm(xcg-xesatta)/norm(xesatta);
fprintf('n=%d, errd=%13.6e, errcg=%13.6e, iter=%d\n',...
    n,errd,errcg,kcg)
end