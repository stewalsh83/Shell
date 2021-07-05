#!/bin/sh

n=$1

for i in $(seq -f "%06g" "$n")
do 
   mkdir "dir.$i"

done 

# each directory name contains exactly six digits. The names will be dir.000001, dir.000002, and so on.