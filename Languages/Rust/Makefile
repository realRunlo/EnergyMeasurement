NTIMES=50

export NTIMES


measure:
	rustc BubbleSort.rs -C opt-level=2 -o BubbleSort
	chmod +x BubbleSort

	rustc QuickSort.rs -C opt-level=2 -o QuickSort
	chmod +x QuickSort

	rustc SelectionSort.rs -C opt-level=2 -o SelectionSort
	chmod +x SelectionSort

	sudo ../../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../../RAPL/main "QuickSort" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort" $(NTIMES)

clean:
	sudo rm -r *.J BubbleSort QuickSort SelectionSort *.txt