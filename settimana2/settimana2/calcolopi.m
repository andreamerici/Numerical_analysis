function calcolopi(N)
% valuto la successione per il calcolo di pi
% Input: N = massimo valore di n

%inizializzo i vettori
f=zeros(N,1);
e=f;
% valuto il vettore della successione
f(2)=2;
for n=2:N
    f(n+1)=2^(n-0.5)*sqrt(1-sqrt(1-4^(1-n)*f(n)^2));
end
% memorizzo a partire dalla componente 1 anziche' 2
% f(1)=2;
% for n=2:N
%     f(n)=2^(n+1-0.5)*sqrt(1-sqrt(1-4^(1-n+1)*f(n)^2));
% end
% valuto il vettore degli errori
e(2:N)=abs(f(2:N)-pi)/pi;

%rappresento la successione f
figure(1); clf
plot(2:N,f(2:N),'o');
hold on
grid on
plot([2,N],[pi,pi],'--')
xlabel('n')
ylabel('f_n')

% rappresento l'errore
figure(2); clf
semilogy(2:N,e(2:N),'o')
grid on
xlabel('n')
ylabel('e_n')