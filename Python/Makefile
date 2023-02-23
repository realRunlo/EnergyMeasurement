NTIMES=10

export NTIMES

measure:
	chmod +x BubbleSort.py
	chmod +x QuickSort.py
	chmod +x SelectionSort.py
	sudo ../RAPL/main "BubbleSort.py" $(NTIMES)
	sudo ../RAPL/main "QuickSort.py" $(NTIMES)
	sudo ../RAPL/main "SelectionSort.py" $(NTIMES)

clean:
	sudo rm *.J
