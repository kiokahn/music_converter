#!/bin/bash 

for i; do 
    fullpath=$i  
    dirname=$(dirname "$fullpath")    # 파일이름을 뺀 경로   
    basename=$(basename  "$fullpath") # 파일이름   
    filename=${basename%.*}   
    fileext=${basename#*.}

    echo $fullpath
    echo $dirname
    echo $basename
    echo $filename

    ffmpeg -i "$i" "$dirname/$filename.wav"
    mv "$dirname/$filename.wav" "$dirname/$filename.mp3"
    rm "$dirname/$filename.m4a"
done 