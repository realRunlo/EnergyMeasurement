#include <stdio.h>
#include <stdlib.h>
#define elems 10650,56341,77676,47158,34999,22009,19680,41870,31090,30668
#define LOGGING 0 // 0 == false & 1 == true

int swapped = 0; // global variable to check if swap() function is called

void swap(int *a, int *b)
{
    int temp = *b;
    *b = *a;
    *a = temp;
    swapped++;
}

int bubblesort(int *a, int size) // to demonstrate passing by refference in C (pointer variable receives only the base address of array)
{
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size - i - 1; j++)
        {
            if (a[j] > a[j + 1])
            {
            swap(a+j, a+j+1); // making a function is good instead of many lines of code in main function 
            }
        }
        if (swapped == 0)
            return 1; // use return values better than break statement
    }
    return 0; // sorted 
}

// function to print the array
void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main(){
    int n, i;
    int arr[] = {elems};
    int size = sizeof(arr) / sizeof(arr[0]);

    bubblesort(arr,size);
    if(LOGGING){
        printf("Sorted array: ");
        printArray(arr, size);
    }

    return 0;

}
