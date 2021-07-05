#!/bin/sh

read n
echo $n
for i in $(seq 19)
do
   if [ $(( $n % 2 )) -eq 0 ]
   then
      n=$(( n / 2 ))
   else
      n=$((( n * 3) + 1 ))
   fi
   echo $n
done

# outputs the first twenty numbers in the sequence.
