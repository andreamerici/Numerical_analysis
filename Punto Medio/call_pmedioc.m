% testo il grado di precisione
%f=@(x)1;
f=@(x)x;
a=0; b=1; M=1;
inte=pmedioc(f,a,b,M);

% integro esattamente polinomi di grado 1
% ==> grado di precisione =1
%% Test l'ordine di accuratezza
% per punto medio l'ordine e' 2:
f=@(x)x.^4; Iex=1/5;
a=0; b=1;
HH=[]; Err=[];
for M=10:10:100
    H=(b-a)/M;
inte=pmedioc(f,a,b,M);
HH=[HH;H];
Err=[Err;abs(Iex-inte)];
end

figure(1); clf
loglog(HH,Err,'b');
hold on
loglog(HH,HH.^2, 'r')
grid on

%% considero una funzione non di classe C2 e vedo come 
% si comporta l'errore
% al variare di H

f=@(x)sqrt(x); Iex=2/3;
a=0; b=1;
HH=[]; Err=[];
for M=10:10:100
    H=(b-a)/M;
inte=pmedioc(f,a,b,M);
HH=[HH;H];
Err=[Err;abs(Iex-inte)];
end

figure(1); clf
loglog(HH,Err,'b');
hold on
loglog(HH,HH.^2, 'r')
grid on


