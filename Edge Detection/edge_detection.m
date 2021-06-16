%% Derivazione numerica per Edge Detection

clear all;
close all;
clc;

%% 1 - Caricamento Immagine

% per leggere l’immagine dal file trecolori.png
A=imread('mozilla-logo','png');

% per copiare le tre pagine di A in 3 matrici di tipo double (su cui fare i conti)
[n,m,dim]=size(A);

R=double(A(:,:,1)); 
G=double(A(:,:,2));
B=double(A(:,:,3));

%% 2 - Calcolo Intensità di colore

Z=(R+B+G)/255;

%% 3 - Costruzione matrici delle derivate parziali

e=0.5*ones(m,1); % m: numero di pixel lungo la direzione x
DX=spdiags([-e,e],[-1,1],m,m); % DX matrice m x m

e=0.5*ones(n,1); % n: numero di pixel lungo la direzione y
DY=spdiags([-e,e],[-1,1],n,n); % DY matrice n x n

%% 4 - Calcolo derivate parziali

G1=(DX*Z')';
G2=DY*Z;
norma_G=sqrt(G1.^2+G2.^2);

% rappresento graficamente la funzione norma_G
figure;
mesh(norma_G(n:-1:1,:));
colorbar
title('norma del gradiente')

pause

%% 5 - Calcolo valore medio della norma del gradiente

valore_medio=sum(sum(norma_G))/(n*m);

%% 6 - Edge Detection

% inizializzo una matrice con pixel tutti bianchi
edge=255*uint8(ones(size(norma_G)));

% seleziono i pixel con alto gradiente
C=find(norma_G >2*valore_medio);

% metto il colore nero nei pixel selezionati
edge(C)=0;

%% 7 - Visualizzazione immagine

figure
image(edge); 
colormap(gray(256));

%% 8 - Salvataggio immagine

imwrite(edge,'edge.png','png');