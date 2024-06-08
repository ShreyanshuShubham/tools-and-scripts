#!/bin/bash

frame_rate=$(ffprobe -v 0 -of csv=p=0 -select_streams v:0 -show_entries stream=r_frame_rate "${1}")
echo $frame_rate
DIR="$(dirname "${1}")" 
mkdir "${DIR}/frames"
ffmpeg -i "${1}" -vf fps=$((${frame_rate}+1)) "${DIR}/frames/img%06d.${2}"

for i in {1..3}
do
    ./linux_czkawka_cli image -d "${DIR}/frames/" -D aen -c 32
done