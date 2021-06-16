%% Esercizio Potenziale elettrico

clear all;
close all;
clc;

load potenziale ;

%% 1 - Visualizzazione pattern

figure(1)
spy(AFE)

%% 1 - Risoluzione con Cholesky

RM=ichol(AFE); % RM e’ triangolare inferiore

figure(2); 
spy(RM)
title('incomplete cholesky factor')
% il precondizionatore e‘: M= RM ? RM’

y=RM'\f;
x=RM\y;

figure(3)
plotsol(x,nodes,nov,lint)


n = length ( f );
tol=1e-6; kmax =1000;
x0 = zeros (n ,1);
[ xp ,flag , relresp , kp , resp ]= pcg ( AFE ,f , tol , kmax ,...
RM , RM' , x0 );

figure (6); hold on
semilogy ( resp / norm ( f ) ,'DisplayName',' Preconditioned')
legend ('- DynamicLegend ') % la legenda viene
%aggiornata ogni volta che aggiungo un plot
xlabel ('k')
ylabel ('||r^{( k )}||/|| f||')