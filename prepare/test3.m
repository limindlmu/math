options=optimset('largescale','off');
% x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options)
% X0��x�ĳ�ʼֵ��NONLCON ����M �ļ�����ķ�������������C(x),Ceq(x)��OPTIONS�������Ż�������
[x,y]=fmincon('fun1',[1 1 1],[],[],[],[],zeros(3,1),[], ...
'fun2', options);%fun1��Ŀ�꺯����fmicon: Find minimum of constrained nonlinear multivariable function