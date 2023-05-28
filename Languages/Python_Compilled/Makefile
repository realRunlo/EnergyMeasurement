NTIMES=50

export NTIMES

measure:
	codon build -release -exe BubbleSort.py
	codon build -release -exe QuickSort.py
	codon build -release -exe SelectionSort.py
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
	sudo rm *.J *.txt BubbleSort QuickSort SelectionSort
