%% Approssimazione ai minimi quadrati - Metodi

clear all;
close all;
clc;

n=5;
x =[1 3 5 8 10]; 
y =[3.00 5.66 11.84 17.67 21.65];

%% 1 - Metodo I: Risoluzione di Ax=b

M =[x', ones(n,1)];
X =M'*M;
b =M'*y';
a =X\b; % risolvo il sistema quadrato

%% 2 - Metodo II: Risoluzione di Ma=y

a = M\y';

%% 3 - Metodo III: Uso della funzione polyfit

a = polyfit(x,y,1);

%% 4 - Rappresentazione grafica

yr =polyval(a,x); % valuto il polinomio (i cui
% coefficienti sono salvati nel vettore a)
% nei punti di ascissa x
plot(x,yr,'b-o');


