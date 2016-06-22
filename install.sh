#!/bin/bash
me=`whoami`

mkdir ~/Pictures/Bing
sudo cp discover_session_bus.sh /opt/
sudo cp bing-wallpaper.py /opt/
sudo cp picture-fetcher.sh /etc/cron.daily/
sudo cp changer.sh /etc/cron.hourly/
sudo echo "@reboot DISPLAY=:0 /etc/cron.hourly/changer.sh" | sudo tee -a /var/spool/cron/crontabs/$me
sudo echo "0 * * * * /etc/cron.hourly/changer.sh" | sudo tee -a /var/spool/cron/crontabs/$me
