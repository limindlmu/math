clear;
w=[ 0,3,inf,inf,inf,inf,inf;
    3,0,2,inf,1.8,2.5,inf;
    inf,2,0,6,2,inf,inf;
    inf,inf,6,0,3,inf,inf;
    inf,1.8,2,3,0,4,inf;
    inf,2.5,inf,inf,4,0,1.5;
    inf,inf,inf,inf,inf,1.5,0]; 
[d,r]=floyd(w); 
%S=max(d');
%求矩阵各列的最大值 s=min(S)