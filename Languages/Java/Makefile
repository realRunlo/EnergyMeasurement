NTIMES=1

export NTIMES

measure:

	cp BubbleSort.java BubbleSort
	sed -i '1s|^|#!/usr/bin/java --source 11\n|' BubbleSort

	cp QuickSort.java QuickSort
	sed -i '1s|^|#!/usr/bin/java --source 11\n|' QuickSort

	cp SelectionSort.java SelectionSort
	sed -i '1s|^|#!/usr/bin/java --source 11\n|' SelectionSort

	chmod +x ./BubbleSort
	chmod +x ./QuickSort
	chmod +x ./SelectionSort

	sudo ../../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../../RAPL/main "QuickSort" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort" $(NTIMES)

	rm BubbleSort QuickSort SelectionSort

mem_bubble: 
	@{ /usr/bin/time -v ./BubbleSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

mem_quick: 
	@{ /usr/bin/time -v ./QuickSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

mem_selection: 
	@{ /usr/bin/time -v ./SelectionSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"
	
clean:
	sudo rm *.J
