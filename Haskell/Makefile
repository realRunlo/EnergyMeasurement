NTIMES=10

export NTIMES


CC=ghc
CFLAGS=-O2

measure: BubbleSort QuickSort SelectionSort
	sudo ../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../RAPL/main "QuickSort" $(NTIMES)
	sudo ../RAPL/main "SelectionSort" $(NTIMES)

BubbleSort: BubbleSort.hs
	$(CC) $(CFLAGS) -o BubbleSort BubbleSort.hs

QuickSort: QuickSort.hs
	$(CC) $(CFLAGS) -o QuickSort QuickSort.hs

SelectionSort: SelectionSort.hs
	$(CC) $(CFLAGS) -o SelectionSort SelectionSort.hs

clean:
	rm -f BubbleSort QuickSort SelectionSort *.o *.hi *.J
