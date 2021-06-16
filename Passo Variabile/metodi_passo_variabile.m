%% Metodi a passo variabile

clear all;
close all;
clc;

%% 1.1 - Definizione delle variabili

f=@(t,y)[-(2+3i).*y];
t0=0;
y0=1;
T=5;
tspan=[t0 T];
eps=10^(-3);

h_min=1e-4;

%% 1.2 - Chiamata del metodo

[tn,un]=eulero_esp_adapt(f,tspan,y0,eps,h_min);

%% 1.3 - Rappresentazione del grafico

figure(1)
plot(tn,real(un),'r--o')
hold
xlabel('t'); ylabel('u(t)')
title('Metodo di Eulero esplicito adattivo (eps=0.01)')
%legend('real','imag')
