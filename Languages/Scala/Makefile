NTIMES=50

export NTIMES


measure:
	scalac -optimize *.scala

	echo "#!/bin/bash" > BubbleSort.sh
	echo "scala BubbleSort" >> BubbleSort.sh
	chmod +x BubbleSort.sh

	echo "#!/bin/bash" > QuickSort.sh
	echo "scala QuickSort" >> QuickSort.sh
	chmod +x QuickSort.sh

	echo "#!/bin/bash" > SelectionSort.sh
	echo "scala SelectionSort" >> SelectionSort.sh
	chmod +x SelectionSort.sh

	sudo ../../RAPL/main "BubbleSort.sh" $(NTIMES)
	sudo ../../RAPL/main "QuickSort.sh" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort.sh" $(NTIMES)


clean:
	sudo rm -r *.J *.sh *.class *.txt