//Source: ChatGPT

#include <iostream>
#define elems 10650,56341,77676,47158,34999,22009,19680,41870,31090,30668
#define LOGGING 0

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
    if(LOGGING){
        std::cout << "\nSorted Array: ";
        for (int i = 0; i < n; i++) {
            std::cout << arr[i] << " ";
        }
        std::cout << std::endl;
    }

    return 0;
}