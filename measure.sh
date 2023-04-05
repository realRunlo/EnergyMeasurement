#!/bin/bash
NTIMES=1

#Compile sensors wich will be used to calculate cool temperature
cd RAPL
gcc -shared -o sensors.so sensors.c
cd ..

#Update the temperature value
cd Utils/
python3 temperatureUpdate.py

#Update the number of times the program will run on each case
python3 ntimesUpdate.py $NTIMES ../Languages/Python/Makefile ../Languages/C/Makefile ../Languages/Haskell/Makefile ../Languages/Java/Makefile ../Languages/C++/Makefile ../Languages/Prolog/Makefile ../Languages/Ruby/Makefile ../Languages/PHP/Makefile

cd ..

#Make RAPL lib
cd RAPL/
rm sensors.so
make

cd ..
      
echo "Size,Language,Program,Package,Core,GPU,DRAM,Time,Temperature,Memory" > measurements.csv

# Loop over size values
for size in 10 #100 1000
do
    # Update input arrays with new size
    cd Utils/
    python3 arrayUpdate.py $size ../Languages/Python/*.py ../Languages/C/*.c ../Languages/Haskell/*.hs ../Languages/Java/*.java ../Languages/C++/*.cpp ../Languages/Prolog/*.pl ../Languages/Ruby/*.rb ../Languages/PHP/*.php
    cd ..

    # Build and measure C programs
    cd Languages/C/
    make
    make measure 

    # Append C measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,C ,/" | sed "s/C_//" >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure Python programs
    cd Languages/Python/
    make measure 

    # Append Python measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,Python ,/" | sed "s/.py//" >> ../../measurements.csv; 
    done
    make clean
    cd ../..

    # Build and measure Haskell programs
    cd Languages/Haskell/
    make measure 

    # Append Haskell measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,Haskell ,/" >> ../../measurements.csv; 
    done
    make clean
    cd ../..

    # Build and measure Java programs
    cd Languages/Java/
    make measure 

    # Append Haskell measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,Java ,/" >> ../../measurements.csv; 
    done
    make clean
    cd ../..

    # Build and measure C++ programs
    cd Languages/C++/
    make measure 

    # Append C++ measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,C++ ,/" >> ../../measurements.csv; 
    done
    make clean
    cd ../..

    # Build and measure Prolog programs
    cd Languages/Prolog/
    make measure 

    # Append Prolog measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,Prolog ,/" >> ../../measurements.csv; 
    done
    make clean
    cd ../..

    # Build and measure Ruby programs
    cd Languages/Ruby/
    make measure 

    # Append Ruby measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,Ruby ,/" | sed "s/.rb//" >> ../../measurements.csv; 
    done
    make clean
    cd ../..

    # Build and measure PHP programs
    cd Languages/PHP/
    make measure 

    # Append PHP measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,PHP ,/" | sed "s/.php//" >> ../../measurements.csv; 
    done
    make clean
    cd ../..

done

cd RAPL/
make clean
cd ..

awk -F',' 'BEGIN{OFS=","} {print $2, $3, $1, $4, $5, $6, $7, $8, $9, $10}' measurements.csv > tmp.csv
mv tmp.csv measurements.csv
