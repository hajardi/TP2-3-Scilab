function [tinv,tback,err_avant_inv,err_près_inv,err_avant_backslach,err_près_backslach]=jouet(n)
    
A=rand(n,n)
xex=rand(n,1)
b=A*xex

tic();
x1 = inv(A)*b;
tinv=toc();

tic();
x2 = A\b;
tback=toc();

err_avant_inv=norm(xex - x1)/norm(x1)

err_près_inv=norm(b-A*x1)/norm(A)*norm(x1)

err_avant_backslach=norm(xex - x2)/norm(x2)

err_près_backslach=norm(b-A*x2)/norm(A)*norm(x2)

endfunction;
