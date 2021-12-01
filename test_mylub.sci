function [err_3b,err_1b,L_3b,U_3b,L_1b,U_1b]=test_mylub(n)
    
    A=rand(n,n);
    [L_3b,U_3b]=mylu3b(A);
    [L_1b,U_1b]=mylu1b(A);
    
    err_3b=norm(A-L_3b*U_3b);
    err_1b=norm(A-L_1b*U_1b);
    
endfunction
