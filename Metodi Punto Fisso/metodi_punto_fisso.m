%% Metodi di punto fisso

clear all;
close all;

phi1=@(x)-0.25*x.^2+x+0.5;
phi2=@(x)-x.^2+x+2;
phi3=@(x)x/2+1./x;

x0=1;
tol=1.e-12;
nmax=100;

%% Disegno delle funzioni

x=linspace(1,2,20);

figure(1); clf
plot(x,phi1(x),'-r');
hold on
plot(x,phi2(x),'-b');
hold on
plot(x,phi3(x),'-g');
hold on
plot(x,x,'--');
grid on

pause

%% Applicazione del metodo di punto fisso

[alpha1,it1,Err1]=puntofisso(phi1,x0,tol,nmax);
fprintf('phi1 converge a  %13.6e in %d iter\n',...
    alpha1, it1)

[alpha2,it2,Err2]=puntofisso(phi2,x0,tol,nmax);
fprintf('phi2 converge a  %13.6e in %d iter\n',...
    alpha2, it2)

[alpha3,it3,Err3]=puntofisso(phi3,x0,tol,nmax);
fprintf('phi3 converge a  %13.6e in %d iter\n',...
    alpha3, it3)

%% Disegno

figure(2); clf
semilogy((1:it1),Err1,'r-','Linewidth',2)
hold on
semilogy((1:it2),Err2,'b-','Linewidth',2)
hold on
semilogy((1:it3),Err3,'k-','Linewidth',2)
grid on
legend('phi1','phi2','phi3')

