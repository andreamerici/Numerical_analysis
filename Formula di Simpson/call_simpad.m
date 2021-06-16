%% Verifica Funzionamento Formula di Simpson Adattiva

fun=@(x)1./((x-0.3).^2+0.01)+1./((x-0.9).^2+0.04)-6;
a=0; b=1;
tol=1.e-3;
hmin=1.e-4;

[Js,nodes]=simpsonad(fun,a,b,tol,hmin);
format long e
Js

figure(1); clf
fplot(fun,[a,b]);
hold on
plot(nodes,zeros(size(nodes)),'+r')
trace=1;
Js_mat=quad(fun,a,b,tol,trace)