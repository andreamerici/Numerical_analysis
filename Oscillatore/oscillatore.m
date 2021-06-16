%% Oscillatore

clear all;
close all;
clc;

%% 1 - Definizione dei dati

tspan=[0,100];
y0=[10,0];

R=0.2;
K=0.8; 
L=30;
m=0.5;
x0=1;
Fext=@(t)[sin(4*t)+cos(3*t)*exp(-(t-15)^2)];

odefun=@(t,y)[y(2);
    -K/m*y(1)-R/m*y(2)+Fext(t)/m];

%% 2 - Calcolo matrice A

% matrice della parte lineare di F
A=[0, 1;
   -K/m, -R/m]

% calcolo autovalori di A
lambda=eig(A)

h_max=-2*real(lambda)./abs(lambda).^2

pause

%% 3 - Chiamata del metodo

H=[4,2,1.5,1.1,1,0.9,0.8,0.4,0.2,0.1];
 
for h=H
    Nh=fix((tspan(2)-tspan(1))/h);
    
    [tn,un]=rk4(odefun,tspan,y0,Nh); 
    un(:,1)=un(:,1)+L;
    
    figure(1); clf
    subplot(2,1,1)
    plot(tn,un(:,1),'r')
    xlabel('t')
    title('posizione')

    subplot(2,1,2)
    plot(tn,un(:,2),'b')
    title('velocità')
    xlabel('t')

    % rappresentazione nel piano delle fasi
    figure(2); clf
    plot(un(:,1),un(:,2));
    hold
    plot(un(1,1),un(1,2),'or');
    plot(un(end,1),un(end,2),'*g');
    title(['Piano delle fasi (h=',num2str(h),')'])
 
    pause
 
end
 