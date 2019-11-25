#!/bin/bash

var=`ls`
#the touch  and rm command helps the file not to append when it is run constantly

touch files.txt
rm files.txt
#while [[ z -lt 34 ]]
#do
 for files in $var
 do
  if [[ -f $files ]]
  then
  echo "$files" >> files.txt
  fi
 done
read -p "GUESS THE NUMBER OF FILES:    " input
echo "$input"
y=`wc -w files.txt|cut -d" " -f 1 `
z=y-1
if [[ $input -lt "$z" ]]
then
echo " Too small "
elif [[ $input -eq $z ]]
then
echo " Congratulations "
else [[ $input -gt "$z" ]]
echo "too large"
fi
rm files.txt
