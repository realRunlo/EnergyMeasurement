for size in 10 100 1000
do
    cd Utils/
    python3 arrayUpdate.py $size ../Python/*.py ../C/*.c
    cd ..

    cd C/
    make
    make measure 

    cat *.J > ../measurements.csv
    make clean
    cd ..

    cd Python/
    make measure 

    cat *.J >> ../measurements.csv
    make clean
    cd ..

done

# Remove linhas repetidas
awk '!a[$0]++' measurements.csv > tmp.csv
mv tmp.csv measurements.csv
       
# Adiciona título no início da linha       
sed -i '1s/^/Linguagem, /' measurements.csv

# Coloca todos os nomes dos programas para o formato "[Linguagem]_[Algoritmo de ordenação]"
sed -E 's/([a-zA-Z]+)\.([a-zA-Z]+) ,/\2 , \1 ,/g; s/([a-zA-Z]+)_([a-zA-Z]+) ,/\1 , \2 ,/g' measurements.csv > tmp.csv
mv tmp.csv measurements.csv