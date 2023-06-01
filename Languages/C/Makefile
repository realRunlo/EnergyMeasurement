NTIMES=1

export NTIMES

compile:
	gcc -O2 -o BubbleSort BubbleSort.c
	gcc -O2 -o QuickSort  QuickSort.c
	gcc -O2 -o SelectionSort SelectionSort.c
run:
	./C_BubbleSort

measure: 
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
	rm -rf BubbleSort *.o *.J
	rm -rf QuickSort *.o *.J
	rm -rf SelectionSort *.o *.J
	rm -rf *.txt