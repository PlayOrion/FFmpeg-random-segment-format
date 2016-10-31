#!/bin/bash
#/bin/bash
[[ $1 && $2 ]] || exit 1
DIR=$(dirname $0)
$DIR/ffmpeg -i $1 -r 25 -c:a libfaac -ab:a 128k -ac:a 2 -c:v mpeg2video -s:v 640x360 -aspect:v 16:9 -map 0 -f segment -segment_time 120 -segment_list $2.m3u8 -segment_format mpegts "$2-%20r.ts"