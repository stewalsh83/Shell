
url=$1
echo
echo

echo "Fetching $url"

wget -q -O - $url > y.htm

ls -l y.htm

videourl=` cat y.htm |

   sed 's|http|\nhttp|g' |

   grep -i http |

   grep googlevideo |

   tr '"' '\n' |

   grep googlevideo |

   grep videoplayback |

   grep 'itag=18' |

   sed "s|\\u0026|\&|g" |

   tr -d '\' `

echo $videourl
   
   wget -O yt.mp4 $videourl

echo
echo