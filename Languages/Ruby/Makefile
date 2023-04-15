NTIMES=50

export NTIMES


measure:
	chmod +x BubbleSort.rb
	chmod +x QuickSort.rb
	chmod +x SelectionSort.rb
	sudo ../../RAPL/main "BubbleSort.rb" $(NTIMES)
	sudo ../../RAPL/main "QuickSort.rb" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort.rb" $(NTIMES)


clean:
	sudo rm -f *.J
