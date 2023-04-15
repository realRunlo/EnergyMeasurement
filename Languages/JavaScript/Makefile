NTIMES=50

export NTIMES


measure:
	chmod +x BubbleSort.js
	chmod +x QuickSort.js
	chmod +x SelectionSort.js
	sudo ../../RAPL/main "BubbleSort.js" $(NTIMES)
	sudo ../../RAPL/main "QuickSort.js" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort.js" $(NTIMES)

clean:
	sudo rm -f *.J
