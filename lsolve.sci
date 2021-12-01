function [x]=lsolve(U,b)
    
    u=size(U);
    x=zeros(u(1),1);  
    
    x(1)=b(1)/U(1,1);
    
  for i=2:u(1)
    x(i)=(b(i)-U(i,1:(i-1))*x(1:(i-1)))/U(i,i);
  end 
  
endfunction
