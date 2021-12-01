function[C]=matmat2b(A,B)
    
    a=size(A);
    b=size(B);
    C=zeros(a(1),b(2));
    
  for i = 1 : a(1)
   for j = 1 : b(2)
     C(i, j) = A(i, :)*B(:, j) + C(i, j);
   end 
  end 
    
endfunction;
