function [x_usolve,x_lsolve]=test_solve()
    
    A=rand(100,100);
    b=rand(100,1);
    U=triu(A);
    L=tril(A);
    
    [x_usolve]=usolve(U,b);
    [x_lsolve]=lsolve(L,b);
    
endfunction
