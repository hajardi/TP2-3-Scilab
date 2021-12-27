#include<stdio.h>
#include <stdlib.h>

int main()
{
    int i,j,k,n;
    float A[2][20]= {0},L[20][20]= {0}, U[20][20]= {0};
    float bb[20]= {0}, dd[20]= {0};

    printf("Entrer l'odre de la matrice: ");
    scanf("%d",&n);

    printf("\nEntrer les element de la matrice :\n");
    for(i=0; i<=2; i++)
    {
        for(j=0; j<=n; j++)
        {
            printf("Entrer l'element A[%d][%d] : ", i,j);
            scanf("%f",&A[i][j]);
        }
    }
    
    bb[0] = 0;
    dd[0] = A[1][0];

   
        for(i=1; i<=n; i++)
        {
            bb[i]=A[2][i]/dd[i-1];
            dd[i]=A[1][i]-bb[i]*A[0][i-1];
        }
    
    for (i=0; i<=n; i++)
    {
       L[i][i]=1;
       U[i][i]=dd[i];
    }
    
    
    for (j=1; j<=n; j++)
    {
        L[j][j-1] = bb[j];
    }
    
    for (k=0; k<= n-1; k++)
    {
        U[k][k+1] = A[0][k];
    }


    printf("[L]: \n");
    for(i=0; i<=n; i++)
    {
        for(j=0; j<=n; j++)
            printf("%9.3f",L[i][j]);
        printf("\n");
    }

    printf("\n[U]: \n");
    for(i=0; i<=n; i++)
    {
        for(j=0; j<=n; j++)
            printf("%9.3f",U[i][j]);
        printf("\n");
    }

    return 0;
}