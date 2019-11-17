# rpi_display_scripts
A repository of the scripts used to setup a Raspberry Pi to serve content carousels from the Yggdrasil Service.

## Scripts
UNDER CONSTRUCTION

## How does it work?
### Setup.sh
The setup script is used to automate the setup of a Raspberry Pi as a Display node for Yggdrasil.

The script does the following
* Updates the system package list and upgrades the packages to their current versions
* Install Unclutter, a package for hiding the system mouse when it is not in use
* Copies and overwrites the autostart configuration file to the raspbian default location
* Copies the display.sh script to the users home directory
* Gives the display.sh script execution rights

## Usage
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
sudo chmod 777 setup.sh
```

4. Execute the setup script
```bash
sudo ./setup.sh
```
