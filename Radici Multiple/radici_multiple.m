%% Radici Multiple

clear all;
close all;

%% Definizione funzione e intervallo

a=-3; b=3; tol=1.e-8; nmax=100;
f=@(x)sin(x-1)-0.5*sin(2*(x-1));
df=@(x)cos(x-1)-cos(2*(x-1));

%% Disegno della funzione

figure(1); clf
x=linspace(a,b,200);

y=f(x);
plot(x,y,'Linewidth',2)
grid on

%% Calcolo radici con metodo di Newton

fprintf('Newton \n')

x0=0.1; 
% x0=-1.5;
 
[zero,res,iter]=newton(f,df,x0,tol,nmax)

hold on
plot(zero,res,'go')

pause

%% Calcolo radici con metodo di Secanti

fprintf('Secanti\n')

x0=0.1; x1=0.4;
% x0=-1.5; x1=-1.6;

[zero,res,iter]=secanti(f,x0,x1,tol,nmax)

hold on
plot(zero,res,'bs')