%% Ricerca di zeri di equazioni non lineari

clear all;
close all;

%% Dati iniziali

a=0; b=0.11; nmax=100; tol=1.e-8;
R=0.055; rho=0.6;

%% Definizione funzioni

f=@(x)[x.^3-3*x.^2*R+4*R^3*rho];
df=@(x)3*x.^2-6*x*R;

x0=0.01;

%% Applicazione metodo di Newton

[zero,res,iter]=newton(f,df,x0,tol,nmax)

%% Disegno

figure(1); clf
fplot(f,[-0.1,0.2])
hold on
plot(zero,res,'r*')
grid on
