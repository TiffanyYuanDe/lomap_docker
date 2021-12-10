#!/bin/bash

# lomap that works for python 3.9
git clone https://github.com/yzanhua/lomap.git

# install spot
wget -q -O - https://www.lrde.epita.fr/repo/debian.gpg | apt-key add -
sh -c "echo 'deb http://www.lrde.epita.fr/repo/debian/ stable/' >> /etc/apt/sources.list"
apt-get update
apt-get install -qqy spot libspot-dev spot-doc vim
apt-get install -qqy python3-spot


pip install six
pip install matplotlib
pip install numpy
apt-get install -qqy python-tk
pip install networkx==2.6
pip install pyyaml

# pip install pp # Optional
wget https://www.parallelpython.com/downloads/pp/pp-1.6.4.4.zip
unzip pp-1.6.4.4.zip 
cd pp-1.6.4.4
pip install .
cd ..

apt-get install -qqy cmake

# ltl2dstar
wget https://www.ltl2dstar.de/down/ltl2dstar-0.5.4.tar.gz
tar xf ltl2dstar-0.5.4.tar.gz
cd ltl2dstar-0.5.4
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ../src
make

mkdir ~/bin
cp ltl2dstar ~/bin/
echo 'export PATH="$PATH:$HOME/bin"' >> ~/.bashrc

cd /
rm -f /ltl2dstar-0.5.4.tar.gz 
rm -f /pp-1.6.4.4.zip 

echo 'export PYTHONPATH="${PYTHONPATH}:/lomap"' >> ~/.bashrc
echo 'export PS1="\e[0;34m\u@\w> \e[m"' >> ~/.bashrc


