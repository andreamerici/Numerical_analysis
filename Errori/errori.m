%% Valutazione errori

clear all; close all;

%% Definizione funzioni

f1=@(x)(x-1).^6;
f2=@(x)(x.^6-6.*x.^5+15.*x.^4-20.*x.^3+15.*x.^2-6.*x+1);
f3=@(x)(1+x.*(-6+x.*(15+x.*(-20+x.*(15+x.*(-6+x))))));

%% Definizione vettore

x=linspace(0.996,1.004,10000);

%% Disegno grafico

figure(1); 
plot(x,f2(x),x,f3(x),x,f1(x));
grid on