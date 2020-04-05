% problema 2
x=linspace(-2*pi,2*pi,1000); % x=linspace(a,b,n)
f=@(x)sin(x.^2);
y=f(x); % valuto la funzione f nei punti del vettore x

g=@(x)(sin(x)).^2; 
yg=g(x); % valuto g

figure(1); clf % apro finestra 1 la pulisco
plot(x,y,'m--',x,yg,'g-.'); 
xlabel('x')
ylabel('y')
l=legend('f(x)=sin(x^2)','g(x)=(sin(x))^2)');
set(l,'Location','Northwest')
grid on
%axis equal % uso la stessa scala sui due assi
% axis([xmi,xmax,ymin,ymax ]) specifico il box del grafico
axis([-2*pi,2*pi,-2,2])
