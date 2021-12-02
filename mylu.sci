function [L,U,P]=mylu(A)
    n=size(A,1);
    row=zeros(1,n);
    L=eye(A);
    P=eye(A);

for i=1:n-1    
    for k=i+1:n
        
        [piv,ind]=max(abs(A(k:n,k)));
         ind= k-1 + ind;
         q=row(1,ind);
         
         if(ind~=k) then
             for j=1:n
         new=A(ind,j);
         A(ind,j)=A(k,j);
         row(1,ind)=row(1,ind);
         row(1,k)=q;
            
            if j<i then
            temp=L(i,j);
            L(i,j)=L(ind,j);
            L(ind,j)=temp;
            end
            
            temp=P(i,j);
            P(i,j)=P(ind,j);
            P(ind,j)=temp;          
          end
        end
     
      A(k,:)=A(k,:)-(q/A(i,i))*A(i,:);
     end
end
    L=tril(A);
    for i=1:n
       L(i,i)=1;
    end
   U=triu(A);

endfunction 
