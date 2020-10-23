#!/bin/sh
pgrep -x "Google Chrome"
hostname=$(hostname -f)
open "/Applications/Google Chrome.app" --args --noerrdialogs --disable-infobars --kiosk 10.5.11.20/yggdrasil/\#/$hostname --incognito
