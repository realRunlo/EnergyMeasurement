NTIMES=1

export NTIMES


measure:
	echo "#!/bin/bash" > BubbleSort.sh
	echo "scalac BubbleSort.scala" >> BubbleSort.sh
	echo "scala BubbleSort" >> BubbleSort.sh
	chmod +x BubbleSort.sh

	echo "#!/bin/bash" > QuickSort.sh
	echo "scalac QuickSort.scala" >> QuickSort.sh
	echo "scala QuickSort" >> QuickSort.sh
	chmod +x QuickSort.sh

	echo "#!/bin/bash" > SelectionSort.sh
	echo "scalac SelectionSort.scala" >> SelectionSort.sh
	echo "scala SelectionSort" >> SelectionSort.sh
	chmod +x SelectionSort.sh

	sudo ../../RAPL/main "BubbleSort.sh" $(NTIMES)
	sudo ../../RAPL/main "QuickSort.sh" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort.sh" $(NTIMES)

clean:
	sudo rm -r *.J *.sh *.class