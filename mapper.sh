#! /bin/bash

#sjekker om det eksisterer:
if [ ! -e pw ]
then touch pw
fi
if [ ! -e ex ]
then mkdir ex
fi

#lager 150 passord:
for i in {1..150}
do
PWD=""
n=$(( $RANDOM % 10 ))
ord=$(shuf -n1 ord.txt)
PWD=$ord$n$ord
done
echo "$PWD" >> pwd

for number in {500..650}
do
dir=ex/ex"$number"
mkdir $dir

#innhold i filene:
echo "$number $PWD" > "$dir"/file1.txt
echo $(shuf -n1 ord.txt) "$number" > "$dir"/xfile.txt
touch "$dir"/rett.txt

# for å lage tilfeldige rettigheter:
a=$(( $RANDOM % 8 ))
b=$(( $RANDOM % 8 ))
c=$(( $RANDOM % 8 ))
chmod "$a$b$c" "$dir"/rett.txt
done
