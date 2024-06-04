#!/bin/bash
for video in *.$1
do
echo $video
ffprobe -show_entries stream=index,codec_type:stream_tags=language -of compact "$video" 2>&1 | { while read line; do if $(echo "$line" | grep -q -i "stream #"); then echo "$line"; fi; done; while read -d $'\x0D' line; do if $(echo "$line" | grep -q "time="); then echo "$line" | awk '{ printf "%s\r", $8 }'; fi; done; }
done