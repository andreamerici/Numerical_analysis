function [tn,un]=eulero_imp(odefun,tspan,y0,Nh,varargin);

% vettore dei tempi
t0=tspan(1);
T=tspan(2);
tn=linspace(t0,T,Nh+1);
y0=y0(:);
un0=y0;
h=(T-t0)/Nh;
un=[y0.'];
if nargin==4
% definisco i parametri per secanti
tol=1.e-8; nmax=20;
else
    tol=varargin{1};
    nmax=varargin{2};
end
% costruisco la soluzione
B=eye(length(y0));
for t=tn(1:end-1)  % t=t_n
    % definire la funzione F di calcolara la radice
    F=@(un1)un1-un0-h*odefun(t+h,un1);
    % risolvere l'eqz F(un1)=0
    [un1,res,it]=broyden(F,B,un0,tol,nmax);
    
    un=[un;un1.'];
    un0=un1;
end

tn=tn';

