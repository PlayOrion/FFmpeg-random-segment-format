 Random filename usage
 
 * use "%<size>r" at -segment_format. <size> is the length of random string generated, for example: "%20r"
 * command example:
 * ffmpeg -i $1 -r 25 -c:a libfaac -ab:a 128k -ac:a 2 -c:v mpeg2video -s:v 640x360 -aspect:v 16:9 -map 0 -f segment -segment_time 120 -segment_list $2.m3u8 -segment_format mpegts "$2-%20r.ts"
