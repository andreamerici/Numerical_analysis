%% Fattorizzazione di Cholesky

clear all;
close all;
clc;

%% 1 - Definizione matrice

A=[6 1 -2 2 1;
   1 3 1 -2 0;
   -2 1 4 -1 -1;
   2 -2 -1 4 2;
   1 0 -1 2 3;];

b=[15 2 3 21 21];

%% 2 - Uso del metodo di Cholesky

R=chol(A);
y=R'\b';
x=R\y