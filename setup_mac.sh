#!/bin/sh
/bin/mkdir $HOME/autostart
/bin/cp -rf display_mac.sh $HOME/autostart/
sudo chmod +x $HOME/autostart/display_mac.sh

# Add the display script to the user Bash profile so it triggers when terminal opens
# TODO - Register on login item list for the user instead of by opening terminal
echo "$HOME/autostart/display_mac.sh" >> $HOME/.bash_profile
source $HOME/.bash_profile
