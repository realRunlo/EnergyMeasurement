NTIMES=1

export NTIMES


measure:
	rustc BubbleSort.rs -o BubbleSort
	chmod +x BubbleSort

	rustc QuickSort.rs -o QuickSort
	chmod +x QuickSort

	rustc SelectionSort.rs -o SelectionSort
	chmod +x SelectionSort

	sudo ../../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../../RAPL/main "QuickSort" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort" $(NTIMES)

clean:
	sudo rm -r *.J BubbleSort QuickSort SelectionSort