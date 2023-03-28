#!/bin/bash
NTIMES=50

#Compile sensors wich will be used to calculate cool temperature
cd RAPL
gcc -shared -o sensors.so sensors.c
cd ..

#Update the temperature value
cd Utils/
python3 temperatureUpdate.py

#Update the number of times the program will run on each case
python3 ntimesUpdate.py $NTIMES ../Python/Makefile ../C/Makefile ../Haskell/Makefile

cd ..

#Make RAPL lib
cd RAPL/
rm sensors.so
make

cd ..
      
echo "Size , Language , Program , Package , Core , GPU , DRAM , Time (ms) , Temperature , Memory" > measurements.csv

# Loop over size values
for size in 10 100 1000
do
    # Update input arrays with new size
    cd Utils/
    python3 arrayUpdate.py $size ../Python/*.py ../C/*.c ../Haskell/*.hs
    cd ..

    # Build and measure C programs
    cd C/
    make
    make measure 

    # Append C measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,C ,/" | sed "s/C_//" >> ../measurements.csv; 
    done

    make clean
    cd ..

    # Build and measure Python programs
    cd Python/
    make measure 

    # Append Python measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,Python ,/" | sed "s/.py//" >> ../measurements.csv; 
    done
    make clean
    cd..

    # Build and measure Haskell programs
    cd Haskell/
    make measure 

    # Append Haskell measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/ $size ,Haskell ,/" | sed "s/.py//" >> ../measurements.csv; 
    done
    make clean
    cd ..

done

cd RAPL/
make clean
cd ..

awk -F',' 'BEGIN{OFS=","} {print $2, $3, $1, $4, $5, $6, $7, $8, $9, $10}' measurements.csv > tmp.csv
mv tmp.csv measurements.csv
