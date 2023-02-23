#include <stdio.h>
#include <stdlib.h>
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

int main(){
    int n, i;
    int arr[] = {64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11};
    int size = sizeof(arr) / sizeof(arr[0]);

    bubblesort(arr,size);
    printf("\nSorted list:\n"); // Display the sorted array
    for (i = 0; i < size; i++)
    {
        printf("%d ",arr[i]);// we're using C , so demonstrate pointers :) 
    }
    return 0;

}
