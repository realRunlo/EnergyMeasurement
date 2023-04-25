// Source: ChatGPT

#include <iostream>
#define elems 10650,56341,77676,47158,34999,22009,19680,41870,31090,30668
#define LOGGING 0

int partition(int arr[], int low, int high) {
    int pivot = arr[high];
    int i = low - 1;
    for (int j = low; j < high; j++) {
        if (arr[j] < pivot) {
            i++;
            int temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
        }
    }
    int temp = arr[i+1];
    arr[i+1] = arr[high];
    arr[high] = temp;
    return i + 1;
}

void quickSort(int arr[], int low, int high) {
    if (low < high) {
        int pivot = partition(arr, low, high);
        quickSort(arr, low, pivot - 1);
        quickSort(arr, pivot + 1, high);
    }
}

int main() {
    int arr[] = {elems};
    int n = sizeof(arr)/sizeof(arr[0]);
    quickSort(arr, 0, n - 1);
    if(LOGGING){
        std::cout << "\nSorted Array: ";
        for (int i = 0; i < n; i++) {
            std::cout << arr[i] << " ";
        }
        std::cout << std::endl;
    }
    return 0;
}
