NTIMES=1

export NTIMES

measure:
	chmod +x BubbleSort.py
	chmod +x QuickSort.py
	chmod +x SelectionSort.py
	sudo ../../RAPL/main "BubbleSort.py" $(NTIMES)
	sudo ../../RAPL/main "QuickSort.py" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort.py" $(NTIMES)

mem_bubble: 
	@{ /usr/bin/time -v ./BubbleSort.py > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

mem_quick: 
	@{ /usr/bin/time -v ./QuickSort.py > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

mem_selection: 
	@{ /usr/bin/time -v ./SelectionSort.py > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"
	
clean:
	sudo rm *.J *.txt
