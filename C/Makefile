
NTIMES=10

export NTIMES

compile:
	gcc -O2 -o C_BubbleSort BubbleSort.c
	gcc -O2 -o C_QuickSort  QuickSort.c
	gcc -O2 -o C_SelectionSort SelectionSort.c
run:
	./BubbleSort

measure: 
	sudo ../RAPL/main "C_BubbleSort" $(NTIMES)
	sudo ../RAPL/main "C_QuickSort" $(NTIMES)
	sudo ../RAPL/main "C_SelectionSort" $(NTIMES)


mem: 
	{ /usr/bin/time -v ./C_BubbleSort  > /dev/null; } 2>&1 | grep "Maximum resident" #| sed "s/[^0-9]\+\([0-9]\+\).*/\1/"cd
	{ /usr/bin/time -v ./C_QuickSort  > /dev/null; } 2>&1 | grep "Maximum resident" #| sed "s/[^0-9]\+\([0-9]\+\).*/\1/"cd
	{ /usr/bin/time -v ./C_SelectionSort  > /dev/null; } 2>&1 | grep "Maximum resident" #| sed "s/[^0-9]\+\([0-9]\+\).*/\1/"cd

clean:
	rm -rf C_BubbleSort *.o *.J
	rm -rf C_QuickSort *.o *.J
	rm -rf C_SelectionSort *.o *.J