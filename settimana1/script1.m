f=@(x)(2*x-sqrt(2)).^2.*sin(2*x);
fplot(f,[-2*pi,2*pi])
xlabel('x') % definisco la label dell'asse x
ylabel('f(x)')
%title('$f(x)=(2x-\sqrt(x))^2 \sin(2x)$','Interpreter','Latex')
grid on % disegna la griglia
l=legend('$f(x)=(2x-\sqrt(x))^2 \sin(2x)$'); % definisco la legenda
set(l,'Interpreter','Latex') % aggiungo specifiche alla legenda
