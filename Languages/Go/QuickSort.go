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
	arr := []int{59761,90739,82579,1135,58002,80436,60384,52321,60761,75965};
	quickSort(arr, 0, len(arr)-1)
	if LOGGING {
		fmt.Println("Sorted array:", arr)
	}
}
