#!/data/data/com.termux/files/usr/bin/bash
#!/bin/bash

mine_verus() {
# Mining Algorithm
ALGO=verus

# Pool URL #
POOL=stratum+tcp://sg.vipor.net:5040

# Wallet address to mine (AVN coin recomended)#
WALLET=RNbSbbtzt7jYeHHCaBeruw4TBtDqmwtor5

# Pool Password (Optional) #
PASS="trmx"

# Mining thread to use #
# To know how many your own cpu threads, #
# Type lscpu on the terminal #
THR=8

# Miner config[Do not edit if you not understand] #

clear
./ccminer -a $ALGO -o $POOL -u $WALLET -p $PASS -t $THR
}
mine_verus
