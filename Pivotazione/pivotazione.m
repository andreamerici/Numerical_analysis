A=[1 1+.5e-15 3; 2 2 20; 3 6 4];
b=[5+.5e-15; 24 ; 13];

% risoluzione con  lu con pivotazione

[L,U,P]=lu(A);
y=L\(P*b);
x=U\y;

% risolzuione con lu senza pivotazione

[L1,U1]=lufact(A);
y1=L1\b;
x1=U1\y1;

% stampare 

[x , x1]

