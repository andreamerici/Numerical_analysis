function [tn,un]=heun(odefun,tspan,y0,Nh);
%   [tn,un]=heun(odefun,tspan,y0,Nh);
%   approssimazione del pdC del primo ordine con Heun
%   funziona sia per equazioni scalari che per sistemi di equazioni.
%
%   tspan = [t0,T] integra il sistema di equazioni
%   differenziali y' = f(t,y) dal tempo t0 a T con
%   condizione iniziale y0 usando il metodo di Eulero
%   in avanti su una griglia equispaziata di Nh
%   intervalli.
%   La funzione ODEFUN(T,Y) deve ritornare un vettore
%   contenente f(t,y), della stessa dimensione di y.
%   Ogni riga del vettore soluzione un corrisponde ad
%   un istante temporale del vettore colonna tn.
%  
% costruisco il vettore dei tempi t_n
t0=tspan(1);
T=tspan(2);
tn=linspace(t0,T,Nh+1)';
% calcolo h
h=(T-t0)/Nh;
% costruisco il vettore della soluzione numerica
un=zeros(Nh+1,1);
un(1)=y0;

for n=1:Nh
    % valutazione con Eulero esplicito, predizione del valore esatto
    un1s=un(n)+h*odefun(tn(n),un(n)); 
    % correggo il valore prodotto da Eulero esplicito con una
    % semplificazione di CN
    un(n+1)=un(n)+h/2*(odefun(tn(n),un(n))+...
        odefun(tn(n+1),un1s));
end
