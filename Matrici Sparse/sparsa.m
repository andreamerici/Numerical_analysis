%% Matrici sparse

clear all;
close all;
clc;

% A=diag(1:n); 
% A(1,:)=ones(1,n); A(:,1)=ones(n,1);
% spy(A)

n=100;
A1=spdiags((1:n)',0,n,n);
A1(1,:)=ones(1,n); A1(:,1)=ones(n,1);
b=rand(n,1);

[L,U]=lufact(A1);
y=forsub(L,b);
x=backsub(U,y);
%%
figure(1); spy(A1)
figure(2); spy(L);
figure(3);spy(U);

