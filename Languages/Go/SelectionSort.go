package main

import "fmt"

var LOGGING bool = false

func selectionSort(arr []int) {
	n := len(arr)
	for i := 0; i < n-1; i++ {
		minIndex := i
		for j := i + 1; j < n; j++ {
			if arr[j] < arr[minIndex] {
				minIndex = j
			}
		}
		arr[i], arr[minIndex] = arr[minIndex], arr[i]
	}
}

func main() {
	arr := []int{10650,56341,77676,47158,34999,22009,19680,41870,31090,30668};
	selectionSort(arr)
	if LOGGING {
		fmt.Println("Sorted array:", arr)
	}
}
