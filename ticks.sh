#! /bin/bash

pid=$1

while [ "true" ]
do
ticks1=$(cut -d' ' -f14 /proc/6231/stat)
sleep 1
ticks2=$(cut -d' ' -f14 /proc/6231/stat)
diff=$(( $ticks2 - $ticks1 ))
echo $diff
