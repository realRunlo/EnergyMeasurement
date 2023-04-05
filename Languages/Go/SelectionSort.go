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
	arr := []int{59761,90739,82579,1135,58002,80436,60384,52321,60761,75965};
	selectionSort(arr)
	if LOGGING {
		fmt.Println("Sorted array:", arr)
	}
}
