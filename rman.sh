#!/usr/bin/bash
# $1 is the beginning of the chapter range
# #2 is the end of the chapter range
# $3 is the new name for the file
# $4 is the file extention if any

if [ -n "${4}" ]; then
tail=".${4}"
else
tail=""
fi

for(( count = $1; count <= $2; count++ ))
do
folder="_chapter ${count}${tail}"
if [ $count -eq 0 ]
then
mv "$folder" "${3}00${count}${tail}"
elif [ $count -ge 1 ] && [ $count -le 9 ]
then
mv "$folder" "${3}00${count}${tail}"
elif [ $count -ge 10 ] && [ $count -le 99 ]
then
mv "$folder" "${3}0${count}${tail}"
elif [ $count -ge 100 ] && [ $count -le 999 ]
then
mv "$folder" "${3}${count}${tail}"
fi
done
