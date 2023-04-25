NTIMES=1

export NTIMES


measure:
	mcs BubbleSort.cs
	mcs QuickSort.cs
	mcs SelectionSort.cs
	chmod +x BubbleSort.exe
	chmod +x QuickSort.exe
	chmod +x SelectionSort.exe
	sudo ../../RAPL/main "BubbleSort.exe" $(NTIMES)
	sudo ../../RAPL/main "QuickSort.exe" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort.exe" $(NTIMES)

clean:
	sudo rm -f *.J *.exe *.txt
	