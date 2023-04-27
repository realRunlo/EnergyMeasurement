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
python3 ntimesUpdate.py $NTIMES ../Languages/Python_Interpreted/Makefile ../Languages/Python_Compilled/Makefile ../Languages/C/Makefile ../Languages/Haskell/Makefile ../Languages/Java/Makefile ../Languages/C++/Makefile ../Languages/Prolog/Makefile ../Languages/Ruby/Makefile ../Languages/PHP/Makefile ../Languages/Kotlin/Makefile ../Languages/JavaScript/Makefile ../Languages/C#/Makefile ../Languages/Rust/Makefile ../Languages/Go/Makefile ../Languages/Scala/Makefile

cd ..

#Make RAPL lib
cd RAPL/
rm sensors.so
make

cd ..
      
echo "Size,Cost,Language,Program,Package,Core,GPU,DRAM,Time,Temperature,Memory" > measurements.csv

# Loop over size values
for size in 10 #100 1000
do
    # Update input arrays with new size
    cd Utils/
    python3 arrayUpdate.py $size ../Languages/Python_Interpreted/*.py ../Languages/Python_Compilled/*.py ../Languages/C/*.c ../Languages/Haskell/*.hs ../Languages/Java/*.java ../Languages/C++/*.cpp ../Languages/Prolog/*.pl ../Languages/Ruby/*.rb ../Languages/PHP/*.php ../Languages/Kotlin/*.kt ../Languages/JavaScript/*.js ../Languages/C#/*.cs ../Languages/Rust/*.rs ../Languages/Go/*.go ../Languages/Scala/*.scala
    cd ..

    # Build and measure C programs
    cd Languages/C/
    make
    make measure 

    # Append C measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$/.c/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,C ,/" >> ../../measurements.csv; 
    done



    make clean
    cd ../..

    # Build and measure Python Interpreted programs
    cd Languages/Python_Interpreted/
    make measure 

    # Append Python Interpreted measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$//')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,Python Interpreted ,/" | sed "s/.py//" >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure Python Compilled programs
    cd Languages/Python_Compilled/
    make measure 

    # Append Python Compilled measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$/.py/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,Python Compilled ,/" | sed "s/.py//" >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure Haskell programs
    cd Languages/Haskell/
    make measure 

    # Append Haskell measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$/.hs/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,Haskell ,/"  >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure Java programs
    cd Languages/Java/
    make measure 

    # Append Java measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.sh\.J$/.java/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,Java ,/" | sed "s/.sh//"  >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure C++ programs
    cd Languages/C++/
    make measure 

    # Append C++ measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$/.cpp/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,C++ ,/"  >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure Prolog programs
    cd Languages/Prolog/
    make measure 

    # Append Prolog measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$/.pl/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,Prolog ,/"  >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure Ruby programs
    cd Languages/Ruby/
    make measure 

    # Append Ruby measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$//')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,Ruby ,/" | sed "s/.rb//" >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure PHP programs
    cd Languages/PHP/
    make measure 

    # Append PHP measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$//')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,PHP ,/" | sed "s/.php//" >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure Kotlin programs
    cd Languages/Kotlin/
    make measure 

    # Append Kotlin measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.sh\.J$/.kt/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,Kotlin ,/" | sed "s/.sh//" >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure JavaScript programs
    cd Languages/JavaScript/
    make measure 

    # Append JavaScript measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.js\.J$/.js/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,JavaScript ,/" | sed "s/.js//" >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure C# programs
    cd Languages/C#/
    make measure 

    # Append C# measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$//; s/\.exe$/.cs/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,C# ,/" | sed "s/.exe//">> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure Rust programs
    cd Languages/Rust/
    make measure 

    # Append Rust measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$/.rs/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,Rust ,/" >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure Go programs
    cd Languages/Go/
    make measure 

    # Append Go measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.J$/.go/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,Go ,/" >> ../../measurements.csv; 
    done

    make clean
    cd ../..

    # Build and measure Scala programs
    cd Languages/Scala/
    make measure 

    # Append Scala measurement results to CSV file with size column
    for file in *.J;
        do 
            fp=$(echo "$file" | sed 's/\.sh\.J$/.scala/')
            scc $fp > temp_sloccount.txt 
            cost=$(python3 ../../Utils/getDevelopmentCost.py temp_sloccount.txt)
            tail -n +2 -q "$file" | sed "s/^/ $size,$cost,Scala ,/" | sed "s/.sh//" >> ../../measurements.csv; 
    done

    make clean
    cd ../..
done

cd RAPL/
make clean
cd ..

awk -F',' 'BEGIN{OFS=","} {print $2, $3, $1, $4, $5, $6, $7, $8, $9, $10, $11}' measurements.csv > tmp.csv
mv tmp.csv measurements.csv
