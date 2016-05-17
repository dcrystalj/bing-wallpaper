#!/bin/bash
me=`whoami`

mkdir ~/Pictures/Bing
sudo cp discover_session_bus.sh /opt/
sudo cp bing-wallpaper.py /opt/
sudo cp picture-fetcher.sh /etc/cron.daily/
sudo cp changer.sh /etc/cron.hourly/
echo "@reboot DISPLAY=:0 /etc/crontab.hourly/changer.sh" >> /var/spool/cron/crontabs/$me
echo "0 * * * * /etc/crontab.hourly/changer.sh" >> /var/spool/cron/crontabs/$me
