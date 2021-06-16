%% Formule di Quadratura di Gauss

n=10;
np=n+1; % numero di nodi di quadratura
f=@(x)cos(x).*exp(-x.^2);
% nodi e pesi gia’ mappati sull’intervallo (?3,4)

[x,w]=xwlgl(np,-3,2); % formula LGL (chiusa)
Ilgl=sum(f(x).*w)

[x,w]=xwlg(np,-3,2); % formula LG (aperta)
Ilg=sum(f(x).*w)

fprintf('n= %d Ilgl =%13.6 e Ilg =%13.6 e \n',n,Ilgl,Ilg)