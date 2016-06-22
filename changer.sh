#!/bin/bash

# Weird, but necessary thing to run with cron.

DIR="/home/dcrystalj/Pictures/Bing/"
sessionfile=`/opt/discover_session_bus.sh unity`
#sessionfile=`find "${HOME}/.dbus/session-bus/" -type f | head -n 1`
GSETTINGS_BACKEND=dconf
export `grep "DBUS_SESSION_BUS_ADDRESS" "${sessionfile}" | sed '/^#/d'`


#get last 20 pictures and randomly choose one
PIC=$(ls -t $DIR/*.jpg | head -n 20 | sort -R | head -n 1)

/usr/bin/gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
