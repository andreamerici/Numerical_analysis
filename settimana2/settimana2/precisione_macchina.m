% calcolo la precisione di macchina eps_m = il piu' piccolo numero di
% macchina tale che 1+eps_m > 1
% funziona solo se base =2
epsilon=1;
while 1+epsilon > 1
    epsilon=epsilon/2;
end
% usciamo dal ciclo while 1+epsilon =1
% epsilon contiene u = unita' di arrotondamento

u=epsilon;
fprintf('u=%20.16e \n',u)
% trovo la precisione di macchina
epsilon=epsilon*2;
fprintf('eps=%20.16e \n',epsilon)


