#! /bin/sh
. ./config.file

while true; do
	if [ -f ./index.html ]; then
		rm index.html	
	fi
	wget -o wget.log http://pogoda.yandex.by/minsk/ 	
	grep -Po '(?<=<div class="b-thermometer__now">)([^</div>]*)' index.html | awk '{print $1}' 

	sleep $PAUSE
done