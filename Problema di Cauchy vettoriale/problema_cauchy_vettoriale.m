%% Problema di Cauchy vettoriale

clear all;
close all;
clc;

%% 1 - Definizione dei dati

tspan=[0,50];
y0=[1;1];

L=0.1; R1=10; R2=10; C=1.e-3; e=5;

% definizione della funzione attraverso un function handle
odefun=@(t,y)[-3*y(1)*y(2)+y(1);
            -y(2)+y(1)*y(2)];

%% 2 - Chiamata del metodo

tol=1.e-4;
nmax=5;
H=[0.01,0.001];
 
for h=H
    Nh=fix((tspan(2)-tspan(1))/h);
    
    [tn,un]=eulero_esp(odefun,tspan,y0,Nh); 

    figure(1); clf
    plot(tn,un(:,1),'r-','DisplayName','y1(t)')
    hold
    plot(tn,un(:,2),'b-','DisplayName','y2(t)')
    xlabel('t')
    ylabel('u(t)')
    title(['Problema di Cauchy vettoriale (h=', num2str(h),')'])
    legend('-DynamicLegend')
 
    % rappresentazione nel piano delle fasi
    figure(2); clf
    plot(un(:,1),un(:,2),'b-');
    hold
    % evidenzia i punti iniziali e finali
    plot(un(1,1),un(1,2),'or');
    plot(un(end,1),un(end,2),'*g');
 
    pause
 
end