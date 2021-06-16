%% Interpolazione globale di Lagrange

clear all;
close all;
clc;

for i=2:11
    
x=linspace(0,6,i);

f=@(x)(x+2).*cos(x)/7;
y=f(x)';
    
%% Calcolo Matrice di Vander Monde e coefficienti

X=vander(x);
a=X\y;

%% Valutazione interpolatori

% vettore dei punti per la valutazione del polinomio
x1=linspace(x(1),x(end),100);

% valutiamo l'interpolatore globale di Lagrange
y1=polyval(a,x1);

%% Disegno

figure(1); clf
plot(x1,y1,'Linewidth',2)
hold on
plot(x,y,'o')
legend('Lag. glob')
title(['n=',num2str(i-1)])

pause
end
