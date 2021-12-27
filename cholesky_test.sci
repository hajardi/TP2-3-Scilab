function [L,D]=cholesky_test(A)
    
    A=[4,-1,1;-1,4.25,2.75;1,2.75,3.5];
    [L,D]=cholesky(A);
    
endfunction
