function [tn,un]=eulero_esp(odefun,tspan,y0,Nh);

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
% costruisco la soluzione
for t=tn(1:end-1)
    un1=un0+h*odefun(t,un0); % qui lavoro con vettori colonna
    un=[un;un1.']; % salvo vettori riga
    un0=un1;
end

tn=tn';

