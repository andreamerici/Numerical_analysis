%% Interpolazione di dati

clear all;
close all;
clc;

%% Definizione vettori dei dati

x=[2.00 4.25 5.25 7.81 9.20 10.60]';
y=[7.2 7.1 6.0 5.0 3.5 5.0]';

%% Calcolo Matrice di Vander Monde e coefficienti

X=vander(x);
a=X\y;

%% Valutazione interpolatori

% vettore dei punti per la valutazione del polinomio
x1=linspace(x(1),x(end),100);

% valutiamo l'interpolatore globale di Lagrange
y1=polyval(a,x1);

% valutiamo l'interpolatore composito lineare
y1c=interp1(x,y,x1);

% valutiamo la spline cubica
ys=spline(x,y,x1);

%% Disegno

figure(1); clf
plot(x1,y1,'Linewidth',2)
hold on
plot(x1,y1c,'g','Linewidth',2)
plot(x1,ys,'r','Linewidth',2)
plot(x,y,'o')
legend('Lag. glob','comp. lin',...
    'spline','nodi')





