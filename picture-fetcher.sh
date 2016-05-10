#!/bin/sh
DATE=`date +%d-%m-%Y`

#only start the script if the todays picture doesn't exists
#if [ ! -f /home/dcrystalj/Pictures/Bing/bing_wp_$DATE".jpg" ]; then
#	echo 3
python3 /opt/bing-wallpapyer.py
#fi
