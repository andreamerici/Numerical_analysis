% movie
% discretizzazione nello spazio
[x,y]=meshgrid(-2*pi:0.2:2*pi,-2*pi:0.2:2*pi); 
% discretizzazione in tempo
t=linspace(0,2*pi,50);
% definisco il function handle
f=@(x,y,t)sin(sqrt(x.^2+y.^2)-2*t);

figure(1); clf
for n=1:50 % n= indice dell'istante temporale
    % valuto la funzione su (x,y,t(n)), cioe' al tempo t(n)
    z=f(x,y,t(n));
    s=surf(x,y,z);
    s.EdgeColor='none';
    xlabel('x')
    ylabel('y')
    title(['t=',num2str(t(n))]) % ho concatenato due stringhe
    axis([-2*pi,2*pi,-2*pi,2*pi,-2,2]) % fisso il box
    pause(0.01)
    Mv(n)=getframe;
end
movie(Mv,3) % riproduce il movie 3 volte
