#! /bin/bash

ttl=1
host=$1
while [ "true" ]
do
        res=$(ping -c 1 -t $ttl $host | grep "Time to live exceeded")
        if [ ! "$res" ]
        then
                echo "Det er $(($ttl - 1)) rutere på vei til $host"
                exit
        else
                echo "$ttl $res"
                ((ttl++))
        fi
