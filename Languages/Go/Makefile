NTIMES=1

export NTIMES


measure:
	go build BubbleSort.go
	go build QuickSort.go
	go build SelectionSort.go

	sudo ../../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../../RAPL/main "QuickSort" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort" $(NTIMES)

clean:
	sudo rm -r *.J BubbleSort QuickSort SelectionSort