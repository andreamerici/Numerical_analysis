%% Circuito - Eulero implicito

clear all;
close all;
clc;

%% 1 - Definizione dei dati

tspan=[0,0.1];
y0=[0,0];

L=0.1; R1=10; R2=10; C=1.e-3; e=5;

% definizione della funzione attraverso un function handle
odefun=@(t,y)[(y(2)-y(1)/R2)/C;
            (-y(2)*R1-y(1)+e)/L];

%% 2 - Chiamata del metodo

tol=1.e-4;
nmax=5;
H=[0.001, 0.005, 0.01, 0.02];
 
for h=H
    Nh=fix((tspan(2)-tspan(1))/h);
    
    [tn,un]=eulero_imp(odefun,tspan,y0,Nh); 

    figure(1); clf
    subplot(2,1,1)
    plot(tn,un(:,1),'r-o')
    xlabel('t')
    title('differenza di potenziale')
    
    subplot(2,1,2)
    plot(tn,un(:,2),'b-o')
    title('derivata della diff di potenziale')
    xlabel('t')
 
    % rappresentazione nel piano delle fasi
    figure(2); clf
    plot(un(:,1),un(:,2),'b-o');
    hold
    % evidenzia i punti iniziali e finali
    plot(un(1,1),un(1,2),'or');
    plot(un(end,1),un(end,2),'*g');
 
    pause
 
end
