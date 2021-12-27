function [info]= diagstrictdom(A)
 
 info =0
 n = size(A,1)
 somme = 0
 
  for i = 1:n 
      a = abs(A(i,i))
    for j = 1:n
        if i~=j
            somme = somme + abs(A(i,j))
        end  
    end
      if a > somme
            info = 1
      end
   end 

endfunction
