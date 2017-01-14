options=optimset('largescale','off');
% x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options)
% X0是x的初始值；NONLCON 是用M 文件定义的非线性向量函数C(x),Ceq(x)；OPTIONS定义了优化参数，
[x,y]=fmincon('fun1',[1 1 1],[],[],[],[],zeros(3,1),[], ...
'fun2', options);%fun1是目标函数；fmicon: Find minimum of constrained nonlinear multivariable function