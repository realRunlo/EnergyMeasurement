NTIMES=1

export NTIMES


measure:
	mcs -optimize+ BubbleSort.cs
	mcs -optimize+ QuickSort.cs
	mcs -optimize+ SelectionSort.cs
	chmod +x BubbleSort.exe
	chmod +x QuickSort.exe
	chmod +x SelectionSort.exe
	sudo ../../RAPL/main "BubbleSort.exe" $(NTIMES)
	sudo ../../RAPL/main "QuickSort.exe" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort.exe" $(NTIMES)

clean:
	sudo rm -f *.J *.exe *.txt
	