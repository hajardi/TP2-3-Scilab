function [u, nb_iter, residu]=test_richardson()
    
   A=[3,-1,0,0,0;-1,12,-1,0,0;0,-1,24,-1,0;0,0,-1,48,-1;0,0,0,-1,96]
b=[1;2;3;4;5]

max_iter=2000;
epsilon=1E-5;

s=spec(A);

alpha=2/(s(5)+s(1));

[u, nb_iter, residu]=richardson(A,b,epsilon,max_iter,alpha)

endfunction
