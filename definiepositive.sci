function [info]=definiepositive(A)
    
    n=size(A,1);
    info=1;
    
    for k=1:n
        mineur_principaux=A(1:k,1:k);
        if (det(mineur_principaux)<=0)
            info=0;
            break;
        end
    end
    
endfunction 
