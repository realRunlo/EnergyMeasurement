NTIMES=1

export NTIMES


CC=ghc
CFLAGS=-O2

measure: BubbleSort QuickSort SelectionSort
	sudo ../../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../../RAPL/main "QuickSort" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort" $(NTIMES)

BubbleSort: BubbleSort.hs
	$(CC) $(CFLAGS) -o BubbleSort BubbleSort.hs

QuickSort: QuickSort.hs
	$(CC) $(CFLAGS) -o QuickSort QuickSort.hs

SelectionSort: SelectionSort.hs
	$(CC) $(CFLAGS) -o SelectionSort SelectionSort.hs

mem_bubble: 
	@{ /usr/bin/time -v ./BubbleSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

mem_quick: 
	@{ /usr/bin/time -v ./QuickSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

mem_selection: 
	@{ /usr/bin/time -v ./SelectionSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

clean:
	rm -f BubbleSort QuickSort SelectionSort *.o *.hi *.J *.txt
