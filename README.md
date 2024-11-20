# cinch
Personal tool for connecting to a VPN and checking connection status (for Macs running Z shell). May only work on MacOS Ventura.

First, edit cinchStatus.sh, changing the IP address to be pinged during a VPN status check (as indicated by the comment).
Optionally, the shell files can be aliased to shorter commands in the ~/.zshrc file.

The following scripts are available:

### cinchVpn.sh
Toggles the first VPN in the list given from System Preferences. 

### cinchStatus.sh
Checks status of VPN by first checking if it is on from System Preferences, then checking if the specified IP address can be pinged.