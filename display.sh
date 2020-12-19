#!/bin/sh
killall chromium-browser
hostname=$(hostname -f)
DISPLAY=:0 chromium-browser --noerrdialogs --disable-infobars --kiosk 10.5.11.20/yggdrasil/\#/$hostname --incognito
