%% Interpolazione 2D

clear all;
close all;
clc;

%% Interpolatore composito P1

[x,y]=meshgrid(0:.4:2); % 6 punti in ogni direzione

f=@(x,y)sin(x.*y*pi)+1;
z=f(x,y);

tri=delaunay(x,y); % genero la mesh di triangoli
trimesh(tri,x,y,z); % disegno la funzione
hold on;
plot3(x,y,z,'k.','Markersize',14); % nodi di interpolazione

pause

%% Interpolatore composito Q1

[x,y]=meshgrid(0:.4:2); % 6 punti in ogni direzione
z=f(x,y); % valuto f nei nodi di interpolazione

[x1,y1]=meshgrid(0:.05:2); % mesh piu’ fitta
z1=interp2(x,y,z,x1,y1); % valuto l’interpolato

mesh(x1,y1,z1); % disegno l’interpolato
hold on 
mesh(x,y,z,'edgecolor','k','facecolor','none'); % disegno i quadrati

pause

%% Spline

[x,y]=meshgrid(0:.4:2); % 6 punti in ogni direzione
z=f(x,y); % valuto f nei nodi di interpolazione

[x1,y1]=meshgrid(0:.05:2); % mesh piu’ fitta
zs=interp2(x,y,z,x1,y1,'spline');

mesh(x1,y1,zs); % disegno la spline
hold on
plot3(x,y,z,'k.','Markersize',14); % disegno i nodi
