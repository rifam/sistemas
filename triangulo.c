#include <stdio.h>

typedef struct{
    int x;
    int y;
}pontos;

int Area(pontos a, pontos b, pontos c){
    int area = ((a.x*b.y)+(a.y*c.x)+(b.x*c.y)-(b.y*c.x)-(a.x*c.y)-(b.x*a.y))/2;
        if (area<0)
            area=-area;
    return area;
}

int somaArea(pontos p1, pontos p2, pontos p3, pontos aux){
	return (Area(aux, p2, p3) + Area(p1, aux, p3) + Area(p1, p2, aux));
}

int procuraPonto(pontos p1, pontos p2, pontos p3, pontos aux){
    int area = Area(p1, p2, p3);

    int novaArea=somaArea(p1, p2, p3, aux);

    if(area >= novaArea) return 1;
    else return 0;
}

int main(){
    int y, x;
    pontos p1, p2, p3, aux;
	
    printf("Entre com as cordenadas => \n");
    scanf("%d %d", &p1.x, &p1.y);
    scanf("%d %d", &p2.x, &p2.y);
    scanf("%d %d", &p3.x, &p3.y);


    for(y=100; y>=0; y--){
        for(x=0; x<100; x++){
            aux.x=y;
            aux.y=x;

            if(procuraPonto(p1, p2, p3, aux) == 1) printf("*");
            else printf(" ");
        }
        printf("\n");
    }

    return 0;
}
