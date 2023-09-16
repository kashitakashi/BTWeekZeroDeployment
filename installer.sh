#!/bin/bash
apt update
apt install tar unzip

wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz

tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin

wget https://github.com/Test2220/cheesy-arena-2220/archive/refs/heads/main.zip

unzip main.zip 

mv ./cheesy-arena-2220-main/* /CheesyArena/
mv ./Cheesy-arena.service /CheesyArena/
CD /CheesyArena

go build
systemctl link ./Cheesy-arena.service
