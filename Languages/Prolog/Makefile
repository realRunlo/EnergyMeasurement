NTIMES=50

export NTIMES


measure:
	swipl -O -g main -o BubbleSort -c BubbleSort.pl
	swipl -O -g main -o SelectionSort -c SelectionSort.pl
	swipl -O -g main -o QuickSort -c QuickSort.pl
	sudo ../../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../../RAPL/main "QuickSort" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort" $(NTIMES)


clean:
	rm -f BubbleSort SelectionSort QuickSort
	sudo rm -f *.J *.txt
