#!/bin/sh

n=1
for i in "$@"
do
   echo "$n." "$i"
   n=$((n + 1))
done


# outputs its command-line arguments one per line, with each line numbered.