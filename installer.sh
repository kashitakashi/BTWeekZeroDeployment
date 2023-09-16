#!/bin/bash
apt update
apt install tar unzip

wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz

tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin

wget https://github.com/Test2220/cheesy-arena-2220/archive/refs/heads/main.zip

unzip main.zip 

mv ./cheesy-arena-2220-main/* /CheesyArena/
CD /CheesyArena

go build
wget https://raw.githubusercontent.com/kashitakashi/BTWeekZeroDeployment/main/Cheesy-arena.service
systemctl link ./Cheesy-arena.service
