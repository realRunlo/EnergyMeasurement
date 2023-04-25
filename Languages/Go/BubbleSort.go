package main

import "fmt"

var LOGGING bool = false

func bubbleSort(arr []int) {
	n := len(arr)
	for i := 0; i < n-1; i++ {
		for j := 0; j < n-i-1; j++ {
			if arr[j] > arr[j+1] {
				arr[j], arr[j+1] = arr[j+1], arr[j]
			}
		}
	}
}

func main() {
	arr := []int{10650,56341,77676,47158,34999,22009,19680,41870,31090,30668};
	bubbleSort(arr)
	if LOGGING {
		fmt.Println("Sorted array:", arr)
	}
}
