clear all
format long
 
 
for i=1:5
    for j=1:4      
        a=[1e-1 1e-5 1e-9 1e-13 1e-15];        
        n=[21 41 81 161];
        
        
        delx=1;
 
        di(1:(n(j)-1)/2)=-2;
        di((n(j)+1)/2)=-(1+a(i));
        di((n(j)+1)/2+1:n(j))=-2*a(i);
        sup(1:(n(j)-1)/2)=1;
        sup((n(j)+1)/2:n(j)-1)=a(i);
        sub(1:(n(j)-1)/2)=1;
        sub((n(j)+1)/2:n(j)-1)=a(i);
 
        A=1/delx^2*(diag(di)+diag(sup,1)+diag(sub,-1));
        cnum(i,j)=cond(A);
        const(i,j)=1/(cnum(i,j)*a(i));
 
        B(1,1)=-8;
        B(2:n(j)-1,1)=0;
        B(n(j),1)=-4*a(i);
        
        k=1;
        N=4;
        
        x=A\B;
        xx=vpa(A)\vpa(B);
                
        while k<=2
            
            
            r=A*x-B;
            dx=A\(-r);
            x=x-dx;
            r=A*x-B;
            nor(i,k,j)=norm(r,inf);
                        
            rr=vpa(A*xx-B);
            dxx=vpa(A)\vpa(-rr);
            xx=vpa(xx-dxx);
            rr=vpa(A*xx-B);
            norr(i,k,j)=norm(rr,inf);  
            
            k=k+1;
            
            
        end
        
    end
    
end

t = table(cnum,const)

 
nor
norr