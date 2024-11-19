# cinch
Personal tool for connecting to a VPN and checking connection status (for Macs running Z shell).

First, edit cinch.sh, changing the IP address to be pinged during a VPN status check (as indicated by the comment).
Then, simply run cinch.sh on zsh (or include it in your zshrc file for it to run automatically on Terminal startup).

Afterwards the following commands are available in the terminal:

### vpn
Toggles the first VPN in the list given from System Preferences.

### vpn
Checks status of VPN by first checking if it is on from System Preferences, then checking if the specified IP address can be pinged.