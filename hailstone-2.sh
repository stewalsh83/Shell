#!/bin/sh

n=$1
echo $n
while [ $n "!=" 1 ]
do
   if [ $(( $n % 2 )) -eq 0 ]
   then
      n=$(( n / 2 ))
   else
      n=$((( n * 3) + 1 ))
   fi
   echo $n
done

# outputs the terms of the hailstone sequence starting at n,
# and stopping when 1 is encountered.