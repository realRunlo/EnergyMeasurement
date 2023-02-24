for size in 10 100 1000
do
    cd Utils/
    python3 arrayUpdate.py $size ../Python/*.py ../C/*.c
    cd ..

    cd C/
    make
    make measure 

    cat *.J | awk '!a[$0]++' > ../measurements.csv
    make clean
    cd ..

    cd Python/
    make measure 

    cat *.J | awk '!a[$0]++' >> ../measurements.csv
    make clean
    cd ..
done