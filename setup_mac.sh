#!/bin/sh
/bin/mkdir $HOME/autostart
/bin/cp -rf display_mac.sh $HOME/autostart/
chmod +x $HOME/autostart/display_mac.sh
#TODO - Register on login item list for the user instead of by opening terminal
echo "$HOME/autostart/display_mac.sh" >> $HOME/.bash_profile