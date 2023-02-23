
cd C/
make
make measure 

cat *.J | awk '!a[$0]++' > ../measurements.txt
make clean
cd ..