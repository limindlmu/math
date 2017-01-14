% c=[2;3;-5];
% a=[2,5,1;1,3,1]; 
% b=[10;12];
% aeq=[1,1,1];
% beq=7;
% [x,fval]=linprog(c,a,b,aeq,beq,zeros(3,1));
% value=c'*x
% 
% c=[2;3;1];
% a=[1,4,2;3,2,0];
% b=[8;6];
% [x,fval]=linprog(c,-a,-b,[],[],zeros(3,1))

clc,clear
a=0;
hold on
while a<0.05
c=[-0.05,-0.27,-0.19,-0.185,-0.185];
A=[zeros(4,1),diag([0.025,0.015,0.055,0.026])];
b=a*ones(4,1);
Aeq=[1,1.01,1.02,1.045,1.065];
beq=1;
LB=zeros(5,1);
[x,Q]=linprog(c,A,b,Aeq,beq,LB);%当求最小值的时候，A b用 -A 和 -b
Q=-Q;
plot(a,Q,'*r');
a=a+0.001;
end
xlabel('a'),ylabel('Q')