function[C]=matmat3b(A,B)
    
    a=size(A);
    b=size(B);
    C=zeros(a(1),b(2));
    
    for i = 1 : a(1)
     for j = 1 : b(2)
      for k = 1 : a(2)
       C(i, j) = A(i, k)*B(k, j) + C(i, j);
      end 
     end 
    end 
    
endfunction;
