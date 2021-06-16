function [tn,un]=rk4(odefun,tspan,y0,Nh);

% vettore dei tempi
t0=tspan(1);
T=tspan(2);
tn=linspace(t0,T,Nh+1);
y0=y0(:); % trasforma y0 in vettore colonna
un0=y0; % un0 deve essere colonna
y0=y0.'; % fa la trasposizione algebrica anche su variabili complesse
% y0 e' un vettore riga
h=(T-t0)/Nh;
un=[y0];
hmezzi=h*0.5;
% costruisco la soluzione
for t=tn(1:end-1)
K1=odefun(t,un0);
K2=odefun(t+hmezzi,un0+hmezzi*K1);
K3=odefun(t+hmezzi,un0+hmezzi*K2);
K4=odefun(t+h,un0+h*K3);
un1=un0+h/6*(K1+2*K2+2*K3+K4);    
    un=[un;un1.']; % salvo vettori riga
    un0=un1;
end

tn=tn';

