function limitee(M)
%% Approssimazione del numero e

% Valuto successione(1+1/n)^n
nn=logspace(1,M,M) % genera valori tra 10 e 10^M equispaziati in scala logaritmica
an=(1+1./nn).^nn;

%% Disegno

semilogx(nn,an,'o');
hold on
plot([nn(1),nn(end)],[exp(1),exp(1)],'r--')
grid on