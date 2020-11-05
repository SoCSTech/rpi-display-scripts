# Raspberry Pi Yggdrasil Display Node Scripts
A repository of the scripts used to setup a Raspberry Pi (RPI) to serve content carousels from the Yggdrasil Service.

## Requirements
* RPI 3 or newer
* Raspbian OS
* An internet connection
* A display with a resolution of 1080p or higher

## Scripts
* [setup.sh](https://github.com/SoCSTech/rpi-display-scripts/blob/master/setup.sh) - The deployment script for automating the setup of the RPI as a display node
* [autostart](https://github.com/SoCSTech/rpi-display-scripts/blob/master/autostart) - The configuration file used by Raspbian to launch applications and scripts as the system boots
* [display.sh](https://github.com/SoCSTech/rpi-display-scripts/blob/master/display.sh) - Launches the Chromium browser and points it to the server hosting Yggdrasil, using the systems hostname as the carousel id.

## How does it work?
### Setup script
The setup script is used to automate the setup of a RPI as a Display node for Yggdrasil.

The script does the following:
* Updates the system package list and upgrades the packages to their current versions
* Install Unclutter, a package for hiding the system mouse when it is not in use
* Copies and overwrites the autostart configuration file to the raspbian default location
* Copies the [display.sh](https://github.com/SoCSTech/rpi-display-scripts/blob/master/display.sh) script to the users home directory
* Gives the [display.sh](https://github.com/SoCSTech/rpi-display-scripts/blob/master/display.sh) script execution rights

### Display script
The display script is what actually launches the chromium browser and points it to the Yggdrasil server.

The script does the following:
* Kills all Chromium browser isntances
* Gets the hostname of the machine
* Launches the Chromium Browser in Fullscreen, Incognito and Kiosk mode, with all error dialog boxes disabled

Note - Kiosk mode disables the ability to interact with the Browser

## Install
### Raspbian Install
1. Clone the repository
```bash
git clone https://github.com/SoCSTech/rpi-display-scripts.git
```

2. Move into the repository
```bash
cd rpi-display-scripts
```

3. Allow execution of the setup script
```bash
sudo chmod +x setup.sh
```

4. Execute the setup script
```bash
sudo ./setup.sh
```

5. Amend the RPIs hostname files to contain the ID of the desired Yggdrasil carousel
    * Edit /etc/hosts
    * Edit /etc/hostname


### MacOS Install
1. Install Google Chomre

2. Clone the repository
```bash
git clone https://github.com/SoCSTech/rpi-display-scripts.git
```

3. Move into the repository
```bash
cd rpi-display-scripts
```

4. Allow execution of the setup script
```bash
sudo chmod +x setup_mac.sh
```

5. Cache the sudo password for the setup script to leach
```bash
sudo ls
```

6. Run the setup script
```bash
./setup_mac.sh
```

7. Add Terminal to the User Login items
```
- Open "System Preferences"
- Click "Users & Groups"
- Click "Login Items"
- Click the "+"
- Navigate to "Applications/Utilities"
- Click "Terminal"
- Click "Add" to confirm
```

8. Set the User to login automaticall on boot
```
- Open "System Preferences"
- Click "Users & Groups"
- Click the padlock
- Enter the user password
- Click the "Automatic Login" menu
- Select the user you wish to login to
- Enter the user Password
- Click the padlock
```

