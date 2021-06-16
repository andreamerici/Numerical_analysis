%% Problemi di ottimizzazione

clear all;
close all;

%% Definizione e disegno funzioni

h=@(x) (x-5).^2-3*sin(x-5);
f=@(x) 2*(x-5)-3*cos(x-5);

figure(1); clf
fplot(h,[0,10])
hold on
fplot(f,[0,10])
grid on

%% Applicazione metodo di Newton

df=@(x)2+3*sin(x-5);

x0=0;
% x0=1;
tol=1.e-12; nmax=100;

[zero,res,it]=newton(f,df,x0,tol,nmax)
