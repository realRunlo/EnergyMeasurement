NTIMES=1

export NTIMES


measure:
	kotlinc BubbleSort.kt -include-runtime -d BubbleSort.jar
	echo "#!/bin/bash" > BubbleSort.sh
	echo "java -jar BubbleSort.jar" >> BubbleSort.sh
	chmod +x BubbleSort.sh

	kotlinc QuickSort.kt -include-runtime -d QuickSort.jar
	echo "#!/bin/bash" > QuickSort.sh
	echo "java -jar QuickSort.jar" >> QuickSort.sh
	chmod +x QuickSort.sh

	kotlinc SelectionSort.kt -include-runtime -d SelectionSort.jar
	echo "#!/bin/bash" > SelectionSort.sh
	echo "java -jar SelectionSort.jar" >> SelectionSort.sh
	chmod +x SelectionSort.sh

	sudo ../../RAPL/main "BubbleSort.sh" $(NTIMES)
	sudo ../../RAPL/main "QuickSort.sh" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort.sh" $(NTIMES)

clean:
	sudo rm -r *.J *.sh *.jar