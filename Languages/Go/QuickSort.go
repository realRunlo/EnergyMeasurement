package main

import "fmt"

var LOGGING bool = false

func quickSort(arr []int, lo, hi int) {
	if lo < hi {
		p := partition(arr, lo, hi)
		quickSort(arr, lo, p)
		quickSort(arr, p+1, hi)
	}
}

func partition(arr []int, lo, hi int) int {
	pivot := arr[lo]
	i := lo - 1
	j := hi + 1
	for {
		i++
		for arr[i] < pivot {
			i++
		}
		j--
		for arr[j] > pivot {
			j--
		}
		if i >= j {
			return j
		}
		arr[i], arr[j] = arr[j], arr[i]
	}
}

func main() {
	arr := []int{10650,56341,77676,47158,34999,22009,19680,41870,31090,30668};
	quickSort(arr, 0, len(arr)-1)
	if LOGGING {
		fmt.Println("Sorted array:", arr)
	}
}
