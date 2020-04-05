function [s]=sommatoria(n) % prima riga di una function
% sommatoria: calcolo della ridotta n-sima ella serie armonica
% [s]=sommatoria(n)
% input: n= indice massimo della somma
% output: s= somma ridotta  di indice n

% autore, data ....
s=0;
for k=1:n
    s=s+1/k;
end
% stampo 
fprintf('La ridotta della serie armonica con n=%d vale  %f \n',n,s)
