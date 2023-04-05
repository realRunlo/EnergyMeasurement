echo "Setting up dependencies..."

echo "#### Installing Git"
sudo apt install git

echo "#### Installing CMake"
sudo apt install cmake

echo "#### Installing lm-sensors"
sudo apt install lm-sensors

echo "#### Installing Powercap"
git clone https://github.com/powercap/powercap.git
cd powercap
mkdir _build
cd _build
cmake ..
make
make install

cd ..
cd ..

echo "#### Installing package config"
sudo apt install pkg-config

echo "#### Installing Raplcap"
git clone https://github.com/powercap/raplcap.git
cd raplcap 
mkdir _build
cd _build
cmake ..
make
make install

cd ..
cd ..

echo "### Installing Java package"
sudo apt install default-jdk

echo "### Installing Prolog package"
sudo apt-add-repository ppa:swi-prolog/stable
sudo apt install swi-prolog

echo "### Installing Ruby package"
sudo apt install ruby-full

echo "### Installing PHP package"
sudo apt install php

echo "### Installing Kotlin package"
sudo apt install kotlin

echo "### Installing JavaScript package"
sudo apt install nodejs

echo "### Installing C# package"
sudo apt-get install mono-mcs