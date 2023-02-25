#!/bin/bash

cd RAPL/
make
cd ..

echo "Size ,Language ,Program ,Package ,Core(s) ,GPU ,DRAM? ,Time (ms)" > measurements.csv

# Loop over size values
for size in 10 100 1000
do
    # Update input arrays with new size
    cd Utils/
    python3 arrayUpdate.py $size ../Python/*.py ../C/*.c
    cd ..

    # Build and measure C programs
    cd C/
    make
    make measure 

    # Append C measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/$size,C,/" | sed "s/C_//" >> ../measurements.csv; 
    done
    make clean
    cd ..

    # Build and measure Python programs
    cd Python/
    make measure 

    # Append Python measurement results to CSV file with size column
    for file in *.J;
        do tail -n +2 -q "$file" | sed "s/^/$size,Python,/" | sed "s/.py//" >> ../measurements.csv; 
    done
    make clean
    cd ..

done

cd RAPL/
make clean
cd ..

awk -F',' 'BEGIN{OFS=","} {print $2, $3, $1, $4, $5, $6, $7, $8}' measurements.csv > tmp.csv
mv tmp.csv measurements.csv
