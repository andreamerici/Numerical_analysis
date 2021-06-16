%% Circuito - Eulero esplicito

clear all;
close all;
clc;

%% 1 - Definizione dei dati

tspan=[0,50];
y0=1;

% definizione della funzione attraverso un function handle
odefun=@(t,y)[(-0.4+i)*y];

g=@(t)[3+(1/(t+1))];

%% 2 - Chiamata del metodo

tol=1.e-4;
nmax=5;
H=[0.1, 0.5, 0.6, 0.7, 0.8, 1, 2];
 
for h=H
    Nh=fix((tspan(2)-tspan(1))/h);
    
    [tn,un]=multiste1(odefun,tspan,y0,Nh); 

    figure(1)
    plot(tn,un,'r-')
    hold
  %  plot(tn,g(tn),'b-o')
    xlabel('t'); ylabel('y(t)')
    title(['Metodo multistep (h=', num2str(h),')'])

    pause
 
end