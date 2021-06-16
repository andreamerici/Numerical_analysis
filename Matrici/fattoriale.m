function [f] = fattoriale(n)
% [f] = fattoriale(n)
% calcolo fattoriale
if n<0 
    warning('attenzione numero negativo')
    f =[];
elseif n == 0 || n ==1
    f =1;
else
   f=prod(2:n);
end
    fprintf('Il fattoriale è: %f')
end
