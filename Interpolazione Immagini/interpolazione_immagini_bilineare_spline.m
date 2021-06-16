%% Interpolazione di Immagini - Bilineare, Spline

clear all;
close all;
clc;

%% 1 - Caricamento Immagine

% per leggere l’immagine dal file trecolori.png
A=imread('scia','png');

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

x=1:m; y=1:n;
fattore=2;
h=1/fattore;

x1=1:h:m;
y1=(1:h:n)';

R1=uint8(interp2(x,y,double(R),x1,y1));
G1=uint8(interp2(x,y,double(G),x1,y1));
B1=uint8(interp2(x,y,double(B),x1,y1));

[n1,m1]=size(R1);
A1=uint8(zeros(n1,m1,3));

A1(:,:,1)=R1;
A1(:,:,2)=G1;
A1(:,:,3)=B1;

figure(5);
clf
image(A1)
imwrite(A1,'scia2.png','png')

pause

%% 4 - Ingrandimento Immagini - Spline

R2=uint8(interp2(x,y,double(R),x1,y1,'spline'));
G2=uint8(interp2(x,y,double(G),x1,y1,'spline'));
B2=uint8(interp2(x,y,double(B),x1,y1,'spline'));

[n2,m2]=size(R2);
A2=uint8(zeros(n2,m2,3));

A2(:,:,1)=R2;
A2(:,:,2)=G2;
A2(:,:,3)=B2;

figure(6);
clf
image(A2)
imwrite(A2,'scia3.png','png')
