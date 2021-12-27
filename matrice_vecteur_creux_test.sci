function [y1,y2]=matrice_vecteur_creux_test()

    x1=[1,1,1,1,1]
    x2=[1,0,0,1,0]

    colA=[1,4,5,3,4,2,3,3,3,4]
    valA=[3,2,1,5,8,1,2,9,10,4]
    rowA=[1,4,6,8,9,11]
    
    [y1]=matrice_vecteur_creux(colA,valA,rowA,x1)
    [y2]=matrice_vecteur_creux(colA,valA,rowA,x2)
    
endfunction
    
