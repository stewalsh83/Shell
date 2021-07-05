# go to youtube, view source code, Ctrl+u, 
# search for googlevideo, Ctrl+f
# select URL with itag=18 (mp4)
#from "https:..." is the link you want.

#URLs with args look like: 
# prog?arg=value&arg=value%arg ...
# \\u0026 instead of & (ascii code)
# change backslashes \ to /
# to run from terminal -> (script name) (Plus link as first arg)
# example: name https://www.youtube.com/watch?v=rQZfCd9BOJE (test)
#-----------------------------------------------------------------------------
#URL to MP4 PART 1

url=$1 #paste URL as first arg

echo "Fetching $url" #gets URL

wget -q -O - $url #dump webpage/URL to command line
                  > y.htm #save to a file
ls -l y.htm #look at file

# save to a file and debug from there, (avoid setting off firewall)

#comment out wget -q -O - $url > y.htm
#-------------------------------------------------------------------------------------
#URL to MP4 PART 2

url=$1

echo "Fetching $url"

#wget -q -O - $url > y.htm

ls -l y.htm

cat y.htm | sed 's|http|\nhttp|g' | grep -i http # search for http & put new line in front of http
# from 2nd pipe grep only seaches for lines with http
#--------------------------------------------------------------------------------------------------------------
#URL to MP4 PART 3
#can comment out Fetching $url line + ls -l line
#add 2 echos at start and end to make it clearer

url=$1
echo
echo

#comment out echo "Fetching $url"

#comment out wget -q -O - $url > y.htm

#comment out ls -l y.htm

cat y.htm |

   sed 's|http|\nhttp|g' |

   grep -i http |

   grep googlevideo |

   tr '"' '\n' | #use tr to get rid of "" of new line \n

   grep googlevideo | #sreach again

   grep videoplayback # search for video play back

echo
echo
#--------------------------------------------------------------------------------------------
#URL to MP4 PART 4

url=$1
echo
echo

##echo "Fetching $url"

##wget -q -O - $url > y.htm

##ls -l y.htm

videourl=` cat y.htm | #create variable called videourl 

   sed 's|http|\nhttp|g' |

   grep -i http |

   grep googlevideo |

   tr '"' '\n' |

   grep googlevideo |

   grep videoplayback |

   grep 'itag=18' |
# URL with itag=18 for MP4 format
   sed "s|\\u0026|\&|g" |
# s = subsitute and g = everytime you see it change it   
#change \\u0026 to & with sed
# & has meaning so it needs \& to invoke a change
#\\ also has meaning so not changed
#guess: instead of fixing the \\ just delete all \ form URL.
   tr -d '\' ` # delete all \
   # might get a tr warning but should be ok
#capture URL as string by using back quotes around code `
#set variable videourl=` (from cat) to end of script
#`back quotes around the program making it the string url

echo $videourl

   wget -O y.mp4 $videourl #wget it, name and save (not quite -q)
echo
echo

#can remove double echos

#Don't run this one, I added the .sh so its easier to read
#Final version will not have .sh so save in bin and chmod +x