% definisco la griglia su Omega
[x,y]=meshgrid(-2:0.1:2,-2:0.1:2);
% definisco il function handle associato a f
f=@(x,y)x.*exp(-x.^2-y.^2);
% valuto f
z=f(x,y); % valuto f sulla mesh

figure(1); clf
surf(x,y,z) % disegno la funzione
xlabel('x')
ylabel('y')
zlabel('z=f(x,y)')
grid on
colorbar % aggiunge la barra dei colori
%colormap('jet')
%colormap('colorcube')
colormap('default')


figure(2); clf
subplot(2,2,1) % seleziono il subplot 1 = in alto a sinistra
mesh(x,y,z)
title('mesh')

subplot(2,2,2) % 2= prima riga seconda colonna
meshc(x,y,z) %
title('meshc')

subplot(2,2,3)
surfc(x,y,z)
title('surfc')

subplot(2,2,4)
pcolor(x,y,z)
title('pcolor')

% 
figure(3); clf
subplot(1,3,1) %  3 subplot allineati in orizzontale
surf(x,y,z,gradient(z)) % mappo i colori in base al gradiente della f
title('surf')


subplot(1,3,2) %  secondo
contour(x,y,z) %
title('contour')

subplot(1,3,3) % terzo
plot3(x,y,z)
title('plot3')
 



