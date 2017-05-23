#!/bin/bash
iostat -dkx | sed -e'1,3d' > /home/recaple/i.txt
cat /proc/net/dev | sed -e '1,2d' > /home/recaple/n.txt
mpstat | sed -e '1,3d' > /home/recaple/d.txt
netstat -nlptu | sed -e '1,2d' > /home/recaple/n.txt
df -i | sed -e '1d' > /home/recaple/o.txt
df | sed -e '1d' > /home/recaple/t.txt
#sed -i '/\/dev\//d' /home/recaple/test.txt
#sed -i '/\/var\//d' /home/recaple/test.txt
#sed -i '/\/proc\//d' /home/recaple/test.txt
sleep 15
iostat -dkx | sed -e'1,3d' > /home/recaple/i.txt
cat /proc/net/dev | sed -e '1,2d' > /home/recaple/n.txt
mpstat | sed -e '1,3d' > /home/recaple/d.txt
netstat -nlptu | sed -e '1,2d' > /home/recaple/n.txt
df -i | sed -e '1d' > /home/recaple/o.txt
df | sed -e '1d' > /home/recaple/t.txt
#sed -i '/\/dev\//d' /home/recaple/test.txt
#sed -i '/\/var\//d' /home/recaple/test.txt
#sed -i '/\/proc\//d' /home/recaple/test.txt
sleep 15
iostat -dkx | sed -e'1,3d' > /home/recaple/i.txt
cat /proc/net/dev | sed -e '1,2d' > /home/recaple/n.txt
mpstat | sed -e '1,3d' > /home/recaple/d.txt
netstat -nlptu | sed -e '1,2d' > /home/recaple/n.txt
df -i | sed -e '1d' > /home/recaple/o.txt
df | sed -e '1d' > /home/recaple/t.txt
#sed -i '/\/dev\//d' /home/recaple/test.txt
#sed -i '/\/var\//d' /home/recaple/test.txt
#sed -i '/\/proc\//d' /home/recaple/test.txt
sleep 15
iostat -dkx | sed -e'1,3d' > /home/recaple/i.txt
cat /proc/net/dev | sed -e '1,2d' > /home/recaple/n.txt
mpstat | sed -e '1,3d' > /home/recaple/d.txt
netstat -nlptu | sed -e '1,2d' > /home/recaple/n.txt
df -i | sed -e '1d' > /home/recaple/o.txt
df | sed -e '1d' > /home/recaple/t.txt
#sed -i '/\/dev\//d' /home/recaple/test.txt
#sed -i '/\/var\//d' /home/recaple/test.txt
#sed -i '/\/proc\//d' /home/recaple/test.txt
sleep 15

