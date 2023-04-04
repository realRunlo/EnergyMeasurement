//Source: ChatGPT

#include <iostream>
#define elems 95746, 5111, 81429

void bubbleSort(int arr[], int n) {
    int i, j;
    for (i = 0; i < n-1; i++) {       
        for (j = 0; j < n-i-1; j++) {  
            if (arr[j] > arr[j+1]) {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

int main() {
    int arr[] = {elems};
    int n = sizeof(arr)/sizeof(arr[0]);
    bubbleSort(arr, n);
    std::cout << "\nSorted Array: ";
    for (int i = 0; i < n; i++) {
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;
    return 0;
}