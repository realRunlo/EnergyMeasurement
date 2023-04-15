CC=g++
CFLAGS=-std=c++11

NTIMES=50

export NTIMES

measure:
	$(CC) $(CFLAGS) -o BubbleSort BubbleSort.cpp
	$(CC) $(CFLAGS) -o SelectionSort SelectionSort.cpp 
	$(CC) $(CFLAGS) -o QuickSort QuickSort.cpp
	sudo ../../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../../RAPL/main "QuickSort" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort" $(NTIMES)


mem_bubble: 
	@{ /usr/bin/time -v ./BubbleSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

mem_quick: 
	@{ /usr/bin/time -v ./QuickSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

mem_selection: 
	@{ /usr/bin/time -v ./SelectionSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"	

clean:
	rm -f BubbleSort SelectionSort QuickSort *.J
