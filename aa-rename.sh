#!/usr/bin/bash
while getopts t:s:e:hi aflag; do
    case $aflag in
        a)title="hPHOTO-";;
        r)title="rPHOTO-";;
        v)title="video-";ext="mp4";;
        t)title=$OPTARG;;
        s)start=$OPTARG;;
        e)ext=$OPTARG;;
        h)echo help message;;
    esac
done

# for file in *.${ext}
# do
# if [ $start -ge 0 ];then

# fi
# done




# title=$1
# count=$2
# ext=$3
# for file in *.${ext}
# do
# mv "${file}" "${title}${count}.${ext}"
# # echo ${file}
# count=$((count+1))
# done