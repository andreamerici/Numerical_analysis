function s = successione_integrale(N)
%% Calcolo integrale

close all;

%% Definizione elementi iniziali

I=zeros(N+1,1);
I(1)=log(6/5);

%% Definizione ciclo

for i=1:N
    I(i+1)=1/(i) +-5*I(i)
end

%% Disegno

figure(1); clf
semilogy(0:N,I,'o');
grid on


