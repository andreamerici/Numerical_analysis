%% Interpolazione di Immagini - Duplicazione

clear all;
close all;
clc;

%% 1 - Caricamento Immagine

% per leggere l’immagine dal file trecolori.png
A=imread('trecolori','png');

% per visualizzare il contenuto di A
figure(1); 
clf; 
image(A);

pause

%% 2 - Creazione matrici

% per copiare le tre pagine di A in 3 matrici di tipo double (su cui fare i conti)
[n,m,dim]=size(A);

R=double(A(:,:,1)); 
G=double(A(:,:,2));
B=double(A(:,:,3));

% rappresentazione delle tre matrici con una finestra grafica
figure(2)
mesh(R)

figure(3)
mesh(G)

figure(4)
mesh(B)

pause

%% 3 - Ingrandimento Immagini

M=ones(2,2); % la dimensione di M e’ pari al numero di ripetizioni per ogni pixel (nel disegno e' 2)

R1=kron(R,M);
G1=kron(G,M);
B1=kron(B,M);

% rappresentazione delle tre matrici con una finestra grafica
figure(2)
mesh(R1)

figure(3)
mesh(G1)

figure(4)
mesh(B1)

pause

%% 4 - Generazione nuova matrice

A1(:,:,1)=R1; 
A1(:,:,2)=G1; 
A1(:,:,3)=B1;

A1=uint8(A1); % conversione di formato (da double a integer 8bit)

figure(5)
image(A1);

%% 5 - Salvataggio nuova immagine

imwrite(A,'new.png','png');
