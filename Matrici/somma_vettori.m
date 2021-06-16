function [c] = somma_vettori(a,b)
% [c] = somma_vettori(a,b)
% calcolo c =a+b
[na,ma]=size(a); % calcolo lunghezza vettore a
[nb,mb]=size(b);
if ma == 1 && mb ==1 && na == nb
c = zeros(na,1); % genero c come vettore colonna di n elementi
for i=1:na
    c(i) =a(i) +b(i);
end
else 
    warning('i vettori non hanno dimensioni compatibili')
    c =[];
%c =c';
end