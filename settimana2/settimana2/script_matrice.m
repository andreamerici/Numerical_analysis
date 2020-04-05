% suppongo di avere in memoria B e v
p=1;
for i=1:length(B)
    p=p*v(i);
    fprintf('i=%d, p=%20.16e \n',i,p)
end