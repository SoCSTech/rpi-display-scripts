#!/bin/sh
pgrep -x "Google Chrome"
hostname=$(hostname -f)
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --noerrdialogs --disable-infobars --kiosk 10.5.11.20/yggdrasil/\#/$hostname --incognito
