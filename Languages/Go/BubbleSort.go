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
	arr := []int{59761,90739,82579,1135,58002,80436,60384,52321,60761,75965};
	bubbleSort(arr)
	if LOGGING {
		fmt.Println("Sorted array:", arr)
	}
}
