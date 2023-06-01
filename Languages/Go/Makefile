NTIMES=1

export NTIMES


measure:
	go build -gcflags="-N -l -d=ssa/check/on" BubbleSort.go
	go build -gcflags="-N -l -d=ssa/check/on" QuickSort.go
	go build -gcflags="-N -l -d=ssa/check/on" SelectionSort.go

	sudo ../../RAPL/main "BubbleSort" $(NTIMES)
	sudo ../../RAPL/main "QuickSort" $(NTIMES)
	sudo ../../RAPL/main "SelectionSort" $(NTIMES)

clean:
	sudo rm -r *.J BubbleSort QuickSort SelectionSort *.txt