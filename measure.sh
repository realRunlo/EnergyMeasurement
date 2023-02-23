
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