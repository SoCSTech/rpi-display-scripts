#!/bin/sh
git pull
apt-get install -y unclutter
/bin/cp -rf autostart /home/pi/.config/lxsession/LXDE-pi/autostart
/bin/cp -rf display.sh /home/pi/display/sh
chmod 777 /home/pi/display.sh