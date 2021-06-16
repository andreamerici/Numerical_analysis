%% Formule di Quadratura Composite

clear all;
close all;
clc;

%% 1 - Costruzione vettore

T=213;
f=@(x)2.39e-11./(x.^5.*(exp(1.432./(T*x))-1));
xa=3.e-4; xb=14.e-4;

% 50 intervallini=51 punti
x=linspace(xa,xb,51);

% valuto la funzione
y=f(x);

% richiamo trapz(x,y)
Inte=trapz(x,y) % e' corretto fino a 1.e-5

pause

%% 2 - Stima dell'errore

maxf2=2.545420655473487e8;
H=(xb-xa)/50;
stima_errore=(xb-xa)/12*maxf2*H^2

Hmax=sqrt(12*1.e-10/((xb-xa)*maxf2));

%% 3 - Ricalcolo dell'integrale

M=fix((xb-xa)/Hmax); % determino il num di intervalli

x=linspace(xa,xb,M+1); % ricostruisco i nodi
y=f(x); % valuto f

Inte1=trapz(x,y)  % calcolo l'integrale corretto fino a 1.e-10