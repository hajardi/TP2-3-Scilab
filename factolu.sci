function [bb,dd,L,U]=LUfactorisation(A)
    
    n=size(A,2)
    
    bb=zeros(1,n)
    dd=zeros(1,n)
    
    bb(1) = 0
    dd(1) = A(2,1)
    
    for i =2:n
        bb(i)=A(3,i)/dd(i-1)
        dd(i)=A(2,i)-bb(i)*A(1,i-1)
    end
    
    L=zeros(n,n)
    U=zeros(n,n)
    
    for i=1:n
       L(i,i)=1;
       U(i,i)=dd(i)
    end
    
    for j=2:n
        L(j,j-1) = bb(j)
    end
    
    for k=1:n-1
        U(k,k+1)=A(1,k)
    end
endfunction
