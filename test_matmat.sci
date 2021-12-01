function [t3b,t2b,t1b]=test_matmat(m,p,n)
    
    A=rand(m,p);
    B=rand(p,n);
    
    tic();
   [C]=matmat3b(A,B);
   t3b=toc();
   
   tic();
   [C]=matmat2b(A,B);
   t2b=toc();
   
   tic();
   [C]=matmat1b(A,B);
   t1b=toc();
 
endfunction
