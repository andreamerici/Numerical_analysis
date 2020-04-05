function [c]=prodotto_matrici(a,b)
% calcolo prodotto matrice x matrice
% [c]=prodotto_matrici(a,b)
% Input a, b array
% Output c=a*b

[na,ma]=size(a);
[nb,mb]=size(b);
if ma==nb 
    % il prodotto e' calcolabile e lo calcolo
    n=na; m=nb; p=mb;
    c=zeros(n,p);
    % costruisco gli elementi di c uno a uno
    for i=1:n
        for j=1:p
            % ciclo che implementa la sommatoria
            for k=1:m
                c(i,j)=c(i,j)+a(i,k)*b(k,j);
            end
        end
    end
    
else
    disp('Attenzione matrici non compatibili')
    c= [ ];
end