NTIMES=50

export NTIMES


measure:
	chmod +x BubbleSort.php
	chmod +x QuickSort.php
	chmod +x SelectionSort.php
	sudo ../../RAPL/main "BubbleSort.php" $(NTIMES)
	sudo ../../RAPL/main "QuickSort.php" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort.php" $(NTIMES)

clean:
	sudo rm -r *.J