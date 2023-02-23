//Source ChatGPT
#include <stdio.h>

// function to swap two elements
void swap(int* a, int* b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

// function to partition the array
int partition(int arr[], int low, int high) {
    int pivot = arr[high]; // choose the last element as pivot
    int i = (low - 1); // index of smaller element

    for (int j = low; j <= high- 1; j++) {
        // if current element is smaller than or equal to pivot
        if (arr[j] <= pivot) {
            i++; // increment index of smaller element
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}

// function to implement quicksort
void quicksort(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);

        // recursively sort elements before and after partition
        quicksort(arr, low, pi - 1);
        quicksort(arr, pi + 1, high);
    }
}

// function to print the array
void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main(){
    int arr[] = {64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11, 90, 64, 34, 25, 12, 22, 11};
    int n = sizeof(arr) / sizeof(arr[0]);
    quicksort(arr, 0, n - 1);
    printf("Sorted array: ");
    printArray(arr, n);
    return 0;
}
