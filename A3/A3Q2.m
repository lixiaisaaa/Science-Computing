clear all
for n=1:64
    A=hilb(n);
    norm=max(sum(abs(A)));
    Ainv=invhilb(n);
    norm1=max(sum(abs(Ainv)));
    cond1(n)=norm*norm1
    cond2(n)=cond(A,1)
end
 
figure
semilogy(1:64,cond1,1:64,cond2)
legend('my estimator','Matlab estimator')

 
