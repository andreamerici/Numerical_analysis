function [Js,nodes]=simpsonad(fun,a,b,tol,hmin)
A=[a,b]; S=[]; N=[];
Js=0;
alpha=a; beta=b;
c=7.5*tol/(b-a);
nodes=[];
while (beta-alpha)>0
% integrale su [alpha,beta] calcolato con simpson e 1 intervallo
    Is=simpsonc(fun,alpha,beta,1);
 % integrale su [alpha,beta] calcolato con simpson e 2 
 % intervalli
    Is2=simpsonc(fun,alpha,beta,2);
 % valuto Delta_I=|Is-Is2|
 deltaI=abs(Is-Is2);
 if deltaI <= c*(beta-alpha) || (beta-alpha)< hmin
     % accetto l'integrale su [alpha,beta]
     Js=Js+Is2;
     nodes=[nodes,linspace(alpha,beta,5)];
     % modifico A, S, N
     S=union(S,A); S=[S(1),S(end)]; % S contiene gli estremi 
     % dell'intervallo gia' processato
     A=N; N=[];
     if ~isempty(A)
     alpha=A(1); beta=A(end); 
     else
         disp('integrale calcolato')
         alpha=b;beta=b;
     end
     if (beta-alpha)< hmin
         warning('attenzione ho raggiunto hmin')
     end
 else
     % non accetto l'integrale e dimezzo A
     pm=(alpha+beta)/2;
     A=[alpha,pm];
     N=union([pm,beta],N); N=[N(1),N(end)];
     beta=pm;
 end
end
nodes=unique(nodes);
     
     
     
     
     
     
     
     
     
  
    