%% Approssimazione nel senso dei minimi quadrati

clear all;
close all;
clc;

%% Funzione mono-variabile

%x=[1 3 5 8 10];
%y=[3.00 5.66 11.84 17.67 21.65];
x=[ -55 -45 -35 -25 -15 -5 +5 +15 +25 +35 +45 +55 +65];
y=[3.7 3.7 3.52 3.27 3.2 3.15 3.15 3.25 3.47 3.52 3.65 3.62 3.52];

% retta(m=1) o parabola (m=2) minimi quadrati
n=length(x)-1;

for m=1:n  % quando m=n ==> minquad= interpol glob di Lagrange

    a=polyfit(x,y,m);
    figure(1); clf
    plot(x,y,'o') % nodi
    hold on

    x1=linspace(x(1),x(end),100);
    y1=polyval(a,x1);
    plot(x1,y1,'r') % retta minimi quadrati
    legend('nodi','minquad')
    title(['m=',num2str(m)])
    %pause
end
pause
%% Funzione multi-variabile

x=[10 5 30 25 45 6 15 35]'; % eta’
y=[3 9 4 10 6 12 7 16]'; % distanza
z=[2300 2000 1800 1700 1550 1800 2200 1450]'; % prezzo

N=length(x);
M=[x,y, ones(N,1)];
a=M\z;

figure (1); clf
p1 = plot3 (x ,y ,z ,'o'); hold on
% disegno il piano minimi quadrati

xv=linspace(min(x),max(x),10);
yv=linspace(min(y),max(y),10);

[x1,y1]=meshgrid(xv,yv); % genero la mesh
z=a(1)*x1+a(2)*y1+a(3); % valuto il piano
mesh(x1,y1,z); grid on % disegno
xlabel('eta`'); ylabel('distanza'); zlabel('prezzo')
xs=23; ys=5; zs=a(1)*xs+a(2)*ys+a(3)
plot3(xs,ys,zs,'ro')
