function [bb,dd,L,U]=lutest()
    
    M=[-1,-1,-1,0;2,2,2,2;0,-1,-1,-1]
    
    [bb,dd,L,U]=LUfactorisation(M)
    
endfunction
