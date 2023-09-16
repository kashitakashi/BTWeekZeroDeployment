#!/bin/bash
apt update
apt install tar unzip

wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz

tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin

wget https://github.com/Test2220/cheesy-arena-2220/archive/refs/heads/main.zip

unzip main.zip "cheesy-arena-2220-main/*" -d /CheesyArena

CD /CheesyArena

go build

wget https://github.com/kashitakashi/BTWeekZeroDeployment/blob/e25335a1a33122778713fec42ceac93644e30978/Cheesy-arena.service
 systemctl link ./Cheesy-arena.service