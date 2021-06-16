%% Fill in

clear all;
close all;
clc;

%% 1 - Definizione della matrice

a=zeros(100,0);
A=zeros(100);

for i=1:100
    a(i)=i;
end

% riempimento righe e colonne
for i=1:100
    A(i,1)=1;
    A(1,i)=1;
end

% riempimento diagonale
A=spdiags(a',0,A);

%% 2 - Analisi visuale del pattern

figure(1)
spy(A)
title('Pattern di A')

%% 3 - Uso del MEG

[L,U]=lufact(A)

figure(2)
spy(L)
title('Pattern di L')

figure(3)
spy(U)
title('Pattern di U')