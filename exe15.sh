#!/bin/bash
cd /home/ncnhan2001/Downloads
DAY=$(date +%F)s

echo "Pleace enter the file extension:"
   read EXTENSION
   
echo "Pleace enter the prifix:(press enter for $DAY)"
   read PREFIX
   
for NAME in *.$EXTENSION
 do
   if [ -z "$PREFIX" ]
   then
   	echo "Renaming $NAME to ${DAY}-${NAME}"
   	mv $NAME ${DAY}-${NAME}
   else
   	echo "Renaming $NAME to ${PREFIX}-${NAME}"
   	mv $NAME ${PREFIX}-${NAME}
   fi
 done
