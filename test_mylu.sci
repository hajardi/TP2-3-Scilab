function test_mylu()
    
    Y=zeros(1,100);
    X=[1:100];
    
    for i=1:100
     A=rand(i,i);
    
    [L,U,P] = lu(A);
    [L_mylu,U_mylu,P_mylu]=mylu(A);
    
    err_L=norm(L-L_mylu);
    err_U=norm(U-U_mylu);
    err_P=norm(P-P_mylu);
    err_generale=err_L+err_U+err_P;
    
    Y(1,i)=err_generale;
    end
 
    plot2d(X,Y);    
endfunction
