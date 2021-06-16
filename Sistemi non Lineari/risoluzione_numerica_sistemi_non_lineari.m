%% Risoluzione numerica di sistemi non lineari

clear all;
close all;

%% Definizione funzione e Jacobiano

% f: R^2 --> R^2
f=@(x)[x(1).^2-x(2).^2-1;
       x(1).^2+x(2).^2-2*x(1)-3];

Jf=@(x)[2*x(1),   -2*x(2);
        2*x(1)-2, 2*x(2)];
    
%% Disegno funzioni

[x1,x2]=meshgrid(-3:.1:3);
z_f1 = x1.^2 - x2.^2 - 1;
z_f2 = x1.^2 + x2.^2 - 2*x1 - 3;

figure (1); clf
mesh(x1,x2,z_f1); title('z=f1(x_1 ,x_2)')
xlabel('x_1'); ylabel('x_2')
hold on
contour(x1,x2,z_f1,[0 0],'b','linewidth',2);

figure (2); clf
mesh(x1,x2,z_f2); title('z=f1(x_1 ,x_2)')
xlabel('x_1'); ylabel('x_2')
hold on
contour(x1,x2,z_f2,[0 0],'r','linewidth',2);

figure (3); clf
contour(x1,x2,z_f1,[0 0],'b','linewidth',2);
hold on
contour(x1,x2,z_f2,[0 0],'r','linewidth',2);
grid on

pause

%% Definizione parametri

x0=[1;1];
x1=[2;-1];
x2=[-2;-2];
tol=1.e-6;
nmax=100;

%% Applicazione metodo di Newton
  
[zero0,res0,it0,err0]=newtonsys(f,Jf,x0,tol,nmax)
[zero1,res1,it1,err1]=newtonsys(f,Jf,x1,tol,nmax)
[zero2,res2,it2,err2]=newtonsys(f,Jf,x2,tol,nmax)

%% Disegno storie di convergenza

figure(4); clf
semilogy(err0,'-b','Linewidth',2);
hold on
semilogy(err1,'-r','Linewidth',2);
hold on
semilogy(err2,'-g','Linewidth',2);
grid on
xlabel('k')
ylabel('err')
