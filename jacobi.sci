function [u, nb_iter, residu]=Jacobi(A,b,epsilon,max_iter)
    
    if ~and(diag(A)) then
        error('Zéro sur la diagonale')
    end
    
    if diagstrictdom(A)==0 then
        error('A n''est pas à diagonale strictement dominante')
    end
    
    D= diag(diag(A))
    E= -triu(A,1)
    F= -tril(A,-1)
    
    u=b
    nb_iter = 0
    residu=norm(A*u-b) 
    
    while (nb_iter<max_iter) &(residu>epsilon)
        u = inv(D)*((E+F)*u + b)
        nb_iter=nb_iter+1
        residu=norm(A*u-b)
    end 
    
endfunction
