a=1.e-4; b=1; nmax=100; tol=1.e-8;
M=6000; v=1000; n=5;
f=@(x)[v*(1+x).*(((1+x).^n-1)./x-1)-M];
figure(1); clf
fplot(f,[a,b])
grid on

%%
fprintf('Bisezione\n')
[zero,res,iter]=bisection(f,a,b,tol,nmax)
hold on
plot(zero,res,'r*')

%%fprintf('Newton \n')
df=@(x)v*( ((1+x).^n-1)./x-1+(1+x).*...
    (n*x.*(1+x).^(n-1)-(1+x).^n+1)./x.^2);
x0=0.01;
[zero,res,iter]=newton(f,df,x0,tol,nmax)
hold on
plot(zero,res,'go')

%%
fprintf('Secanti\n')
x0=0.01; x1=0.4;
[zero,res,iter]=secanti(f,x0,x1,tol,nmax)
hold on
plot(zero,res,'bs')
