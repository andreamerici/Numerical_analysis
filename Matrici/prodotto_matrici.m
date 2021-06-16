function [c] = prodotto_matrici(a,b)
% [c] = prodotto_matrici(a,b)
% calcolo c =a*b
[n,ma]=size(a); % calcolo lunghezza vettore a
[nb,p]=size(b);
if ma == nb %controllo dimensioni
    m=ma;
    c = zeros(n,p); % genero c come vettore colonna di n elementi
for i=1:n %ciclo righe di c
    for j=1:p %ciclo colonne di c
        for k=1:m
            c(i,j) = c(i,j)+ a(i,k)+b(k,j);
        end
    end
end    
else 
    warning('le dimensioni interne delle matrici non coincidono')
    c =[];
end