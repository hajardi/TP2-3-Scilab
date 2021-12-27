function [u, nb_iter, residu] = test_Jacobi()
    
    A = [400 156 229 ;
         156 300 20 ;
         120 40 200 ]
    b = [51;96;32]
    
    max_iter=20000;
    epsilon=1E-3;
    
    [u, nb_iter, residu]=Jacobi(A,b,epsilon,max_iter)
    
endfunction
