#!/bin/sh

for i in "$@"
do
   if test -f "$i"
   then
      echo "$i" file

   elif test -d "$i"
   then
      echo "$i" directory

   else
      echo "$i" does not exist

   fi

done

# for each argument,
# outputs a line indicating the type of thing the argument is
# sh file-system-type.sh /etc /etc/passwd /etc/fstab /foo/bar /etc/motd
