function[C]=matmat1b(A,B)
    
    a=size(A);
    b=size(B);
    C=zeros(a(1),b(2));
    
   for i = 1 : a(1)
    C(i, :) = A(i, :)*B + C(i, :);
   end 
   
   
endfunction;
