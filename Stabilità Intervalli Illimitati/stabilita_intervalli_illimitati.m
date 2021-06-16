%% Stabilità su intervalli illimitati

%% ES 1

clear all;
close all;
clc;

%% 1.1 - Definizione delle variabili

f=@(t,y)[-2*y];
t0=0;
y0=1;
T=10;
tspan=[t0 T];

step=[0.01,0.1,1,2]; % vettore degli h

%% 2 - Metodo di Eulero esplicito

for h=step
    Nh=ceil((tspan(2)-tspan(1))/h);

    [tn,un]=eulero_esp(f,tspan,y0,Nh);

    figure
    plot(tn,un,'r')
    xlabel('t'); ylabel('u(t)')
    title(['Metodo di Eulero esplicito (h=', num2str(h),')'])
    
    pause
end

%% 3 - Metodo di Eulero implicito

close all;

for h=step
    Nh=ceil((tspan(2)-tspan(1))/h);

    [tn,un]=eulero_imp(f,tspan,y0,Nh);

    figure
    plot(tn,un,'r')
    xlabel('t'); ylabel('u(t)')
    title(['Metodo di Eulero implicito (h=', num2str(h),')'])
    
    pause
end

%% 4 - Metodo di Crank-Nicolson

close all;

for h=step
    Nh=ceil((tspan(2)-tspan(1))/h);

    [tn,un]=cranknicolson(f,tspan,y0,Nh);

    figure
    plot(tn,un,'r')
    xlabel('t'); ylabel('u(t)')
    title(['Metodo di Crank-Nicolson (h=', num2str(h),')'])
    
    pause
end