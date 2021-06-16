%% Metodo di Eulero esplicito

%% ES 1

clear all;
close all;
clc;

%% 1.1 - Definizione delle variabili

f=@(t,y)t-y;
t0=-1;
y0=1;
T=3;
tspan=[t0 T];

h=0.5;
Nh=ceil((T-t0)/h);

%% 1.2 - Chiamata del metodo

[tn,un]=eulero_esp(f,tspan,y0,Nh);

%% 1.3 - Rappresentazione del grafico

g=@(t,y)[t-1+3*exp(-t-1)];

figure(1)
plot(tn,un,'r--o')
hold
plot(tn,g(tn),'b-o')
xlabel('t'); ylabel('y(t)')
title('Metodo di Eulero esplicito (h=0.5)')
legend('sol numerica','sol esatta')

%% 1.4 - Calcolo errore

for i=1:size(un)
    e(i)=abs(g(tn(i))-un(i));
end

max(e)

pause

%% 2 - ES 2

%% 2.1 - h=0.25

h=0.25;
Nh=ceil((T-t0)/h);

[tn,un]=eulero_esp(f,tspan,y0,Nh);

figure(2)
plot(tn,un,'r--o')
hold
plot(tn,g(tn),'b-o')
xlabel('t'); ylabel('y(t)')
title('Metodo di Eulero esplicito (h=0.25)')
legend('sol numerica','sol esatta')

for i=1:size(un)
    e(i)=abs(g(tn(i))-un(i));
end

max(e)

pause

%% 2.2 - h=0.125

h=0.125;
Nh=ceil((T-t0)/h);

[tn,un]=eulero_esp(f,tspan,y0,Nh);

figure(3)
plot(tn,un,'r--o')
hold
plot(tn,g(tn),'b-o')
xlabel('t'); ylabel('y(t)')
title('Metodo di Eulero esplicito (h=0.125)')
legend('sol numerica','sol esatta')

for i=1:size(un)
    e(i)=abs(g(tn(i))-un(i));
end

max(e)

pause

%% 2.3 - Calcolo errori

Err=[]; % vettore degli errori
step=[0.2, 0.1, 0.05, 0.01]; % vettore degli h
for h=step
    Nh=fix((tspan(2)-tspan(1))/h);

    [tn,un]=eulero_esp(f,tspan,y0,Nh);

    % valuto l'errore tra sol. esatta e numerica
    err=max(abs(g(tn)-un));
    Err=[Err;err];
end

figure(4);
loglog(step,Err,'r'); % errore di Eulero esplicito
hold on
loglog(step,step,'b') % confronto con il comportamento teorico
xlabel('h')
ylabel('err')
legend('errore','h')
