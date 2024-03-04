#!/bin/bash
BASE="${1%%.*}"
if [ $2 == 'withaudio' ]
then
  echo "Compressing file with preserving audio channels"
  ffmpeg -i $1 -vsync vfr "${BASE}Converted.mp4"
  exit 0;
fi
echo "Compressing file with cut off audio channels"
ffmpeg -i $1 -vsync vfr -an "${BASE}Converted.mp4"
