#!/bin/sh

uniq -c |
   grep -E -v '^\s+1\>' |
   {

      read count word
      echo $word
   }

# outputs the first token which occurs twice in a row
