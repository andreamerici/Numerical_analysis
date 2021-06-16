%% Approssimazione ai minimi quadrati - Parabola

clear all;
close all;
clc;

%% 1 - Definizione dei dati

n=5;
x =[10000 20000 30000 40000 50000]; 
y =[0.31 0.95 2.45 4.10 6.46];
m =2; % grado del polinomio da cercare

a =polyfit(x,y,m);

%% 2 - Rappresentazione grafica

figure (1); clf
plot (x,y,'o');
hold on ; grid on ;

% valuto la parabola in piu‘ punti tra x(1) e x(end)
x1 =linspace(x(1),x(end),100)';
y1 =polyval(a,x1); % valuto p(x)
plot(x1,y1,'Linewidth',2);
xlabel('n')
ylabel('CPUtime')
