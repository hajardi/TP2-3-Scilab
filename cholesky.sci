function [L,D]=cholesky(A)
    
    n=size(A,1)
    D=zeros(n,n)
    L=eye(A)
    
    if ~isequal(A,A') then
    error('Matrix is not Symmetric');
    end

    if definiepositive(A) then
       
    D(1,1)=A(1,1);
       
    for i = 2:n
            L(i,1)=(A(i,1))/D(1,1);
    end
  
    for j= 2:(n-1)
           for i= j+1:n
               somme_1=0
               somme_2=0
               for k=1:j-1
                   somme_1 = somme_1 + (L(j,k)^2)*D(k,k)
                   somme_2 = somme_2 + L(i,k)*L(j,k)*D(k,k)
               end 
               D(j,j)=A(j,j)-somme_1
               L(i,j)=(A(i,j)-somme_2)/D(j,j)
            end
    end
    
    somme_3=0
    for k=1:n-1
           somme_3 = somme_3 + (L(n,k)^2)*D(k,k)
    end 
    D(n,n)=A(n,n)-somme_3
       
    else 
    error('Matrix is not positive definite');
    end

    
endfunction
