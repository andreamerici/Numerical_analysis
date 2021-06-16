%% Parametri di una matrice

clear all; close all;

%% Calcolo determinante con funzioni

load 'matriceB'
[n,m]=size(B);
[v]=eig(B);
d=det(B);
r=rank(B);

[v]
fprintf('det(B)= %f rango=%d \n', d, r);

%% Calcolo determinante con ciclo

p=1;

for i=1:100
    p=p*v(i);
    fprintf('i=%d, p=%13.6e\n',i,p)
end

fprintf('det(B)= %f rango=%d \n', p, r);
