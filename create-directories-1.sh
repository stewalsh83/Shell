#!/bin/sh

for i in $(seq "$1")
do 
   mkdir "dir.$i"

done 

# creates new empty directories
# named dir.1, dir.2, dir.3, and so on up to dir.n.