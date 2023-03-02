NTIMES=10

export NTIMES

measure:
	ghc -o BubbleSort BubbleSort.hs
	ghc -o QuickSort QuickSort.hs
	ghc -o SelectionSort SelectionSort.hs

	sudo ../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../RAPL/main "QuickSort" $(NTIMES)
	sudo ../RAPL/main "SelectionSort" $(NTIMES)

clean:
	sudo rm *.J
