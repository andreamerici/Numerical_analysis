%% Verifica Funzionamento Formula di Simpson

f=@(x)x.^4;
a=0; b=1;
HH=[]; Err=[];

for M=10:10:100
    H=(b-a)/M;
inte=simpsonc(f,a,b,M);
HH=[HH;H];
Err=[Err;abs(1/5-inte)];
end

figure(1); clf
loglog(HH,Err,'b');
hold on
loglog(HH,HH.^4, 'r')
grid on