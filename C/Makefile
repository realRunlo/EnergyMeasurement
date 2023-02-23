
NTIMES=10

export NTIMES

compile:
	gcc -O2 -o BubbleSort BubbleSort.c
	gcc -O2 -o QuickSort  QuickSort.c
	gcc -O2 -o SelectionSort SelectionSort.c
run:
	./BubbleSort

measure: 
	sudo ../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../RAPL/main "QuickSort" $(NTIMES)
	sudo ../RAPL/main "SelectionSort" $(NTIMES)


mem: 
	{ /usr/bin/time -v ./BubbleSort  > /dev/null; } 2>&1 | grep "Maximum resident" #| sed "s/[^0-9]\+\([0-9]\+\).*/\1/"cd
	{ /usr/bin/time -v ./QuickSort  > /dev/null; } 2>&1 | grep "Maximum resident" #| sed "s/[^0-9]\+\([0-9]\+\).*/\1/"cd
	{ /usr/bin/time -v ./SelectionSort  > /dev/null; } 2>&1 | grep "Maximum resident" #| sed "s/[^0-9]\+\([0-9]\+\).*/\1/"cd

clean:
	rm -rf BubbleSort *.o
	rm -rf QuickSort *.o
	rm -rf SelectionSort *.o