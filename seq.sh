#! /bin/bash

for i in $(seq 11 20)
do
ping -c 1 -w 1 128.39.89.$i | grep icmp
done
