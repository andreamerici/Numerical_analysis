function limitee(M)
% valuto alcuni elementi della ucc an=(1+1/n)^n con n=10, 100, ...., 10^M
% Input : M
% genero il grafico
nn=logspace(1,M,M);
an=(1+1./nn).^nn;
figure(1); clf
semilogx(nn,an,'o')
hold on % mantiene i plot fatti finora e ne aggiunge altri
plot([nn(1),nn(end)],[exp(1),exp(1)],'--') % rappresento la retta y=e 
grid on
xlabel('n')
ylabel('a_n')