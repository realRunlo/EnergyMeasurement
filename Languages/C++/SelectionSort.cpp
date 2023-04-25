//Source: ChatGPT

#include <iostream>
#define elems 10650,56341,77676,47158,34999,22009,19680,41870,31090,30668
#define LOGGING 0

void selectionSort(int arr[], int n) {
    int i, j, min_idx;
    for (i = 0; i < n-1; i++) {
        min_idx = i;
        for (j = i+1; j < n; j++) {
            if (arr[j] < arr[min_idx])
                min_idx = j;
        }
        int temp = arr[min_idx];
        arr[min_idx] = arr[i];
        arr[i] = temp;
    }
}

int main() {
    int arr[] = {elems};
    int n = sizeof(arr)/sizeof(arr[0]);
    selectionSort(arr, n);
    if(LOGGING){
        std::cout << "\nSorted Array: ";
        for (int i = 0; i < n; i++) {
            std::cout << arr[i] << " ";
        }
        std::cout << std::endl;
    }
    return 0;
}