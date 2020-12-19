#!/bin/sh

## Update the system
apt-get update
apt-get upgrade -y

## Make sure Unclutter is installed, unclutter removes the mouse from the screen in fullscreen
apt-get install -y unclutter

## Copy the scripts into their locations
/bin/cp -rf autostart /home/pi/.config/lxsession/LXDE-pi/autostart
/bin/cp -rf display.sh /home/pi/display.sh

## Give the display script the right privledges
chmod +x /home/pi/display.sh
