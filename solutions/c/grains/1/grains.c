#include "grains.h"

uint64_t square(uint8_t index){
    uint64_t resultat = 1;

    if (index == 0){
        return 0;
    }
    
    for (uint8_t i = 0; i < index - 1; i++) {
        resultat *= 2;
    }
    
    return resultat;
}

uint64_t total(void){
    uint64_t sum = 0;
    
    for (uint64_t i = 1; i <= 64; i++) {
        sum += square(i);
    }

    return sum;
}