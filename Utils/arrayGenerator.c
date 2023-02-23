#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main (int argc, char **argv) 
{
    int size = atoi (argv[1]);
    if(size<=0){
        printf("Size invalid");
    }

    int arr[size];
    int i, j, temp;

    // Seed the random number generator
    srand(time(NULL));

    // Generate random values for the array
    for (i = 0; i < size; i++) {
        arr[i] = rand() % 10000;
    }

    // Print the unsorted array
    printf("Array:\n");
    for (i = 0; i < size; i++) {
        printf("%d ", arr[i]);
        if(i!=size-1){
            printf(",");
        }
    }

    printf("\n");

    return 0;
}
