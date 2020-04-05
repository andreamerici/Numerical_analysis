% disegno superficie
% genero una mesh su r e theta
[r,theta]=meshgrid(0:0.1:2,0:0.2:6*pi);
% valuto le coordinate cartesiane
x=r.*cos(theta);
y=r.*sin(theta);
z=theta;
figure(1); clf
s=surf(x,y,z); % salvo l'oggetto grafico in s
s.EdgeColor='none'; % tolgo il colore agli edge della superficie
xlabel('x');
ylabel('y');
zlabel('z')
