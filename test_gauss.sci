function [x,t]=test_gauss()
    
    A=rand(100,100);
    b=rand(100,1); 
    
    tic();
    [x]=gausskij3b(A,b);
    t=toc();
        
endfunction
