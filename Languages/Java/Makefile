NTIMES=1

export NTIMES

measure:
	javac *.java
	echo "#!/bin/bash" > BubbleSort.sh
	echo "java Java.BubbleSort" >> BubbleSort.sh
	chmod +x BubbleSort.sh

	echo "#!/bin/bash" > QuickSort.sh
	echo "java Java.QuickSort" >> QuickSort.sh
	chmod +x QuickSort.sh

	echo "#!/bin/bash" > SelectionSort.sh
	echo "java Java.SelectionSort" >> SelectionSort.sh
	chmod +x SelectionSort.sh

	sudo ../../RAPL/main "BubbleSort.sh" $(NTIMES)
	sudo ../../RAPL/main "QuickSort.sh" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort.sh" $(NTIMES)


mem_bubble: 
	@{ /usr/bin/time -v ./BubbleSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

mem_quick: 
	@{ /usr/bin/time -v ./QuickSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"

mem_selection: 
	@{ /usr/bin/time -v ./SelectionSort > /dev/null; } 2>&1 | grep "Maximum resident" | sed "s/[^0-9]\+\([0-9]\+\).*/\1/"
	
clean:
	sudo rm *.J *.sh *.txt *.class
