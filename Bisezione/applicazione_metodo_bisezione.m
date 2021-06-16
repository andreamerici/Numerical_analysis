%% Applicazione del metodo di Bisezione

clear all;
close all;

%% Definizione della funzione

f = @(x) exp(x)+x
[z,k,res] = bisezione(f,-1,0,1.e-8,50)

%% Disegno

figure(1); clf
fplot(f,[-5,2]);
grid on
hold on
plot(z, res, 'o')