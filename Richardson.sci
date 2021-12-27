function [u, nb_iter, residu] = richardson(A,b,epsilon,max_iter,alpha)
    
  n = size(A,1)
  u = zeros(n,1)
  nb_iter=0
  residu=norm(A*u-b) 
    
 while (nb_iter<max_iter) &(residu>epsilon)
    d=A*u-b
    u=u-alpha*d
    nb_iter=nb_iter+1
    residu=norm(A*u-b)  
 end   
 
endfunction 
