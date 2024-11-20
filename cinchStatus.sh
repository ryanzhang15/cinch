#!/usr/bin/env zsh

ping_ip="172.20.50.100" #CHANGE TO DESIRED IP TO BE CHECKED

osascript -e '
    tell application "System Events"        
        tell current location of network preferences
            set vpn to first service whose kind is 17
            set vpnName to name of vpn
            set state to connected of current configuration of vpn
            if state then
                log "The VPN <" & |vpnName| & "> is currently toggled ON."
            else
                log "The VPN <" & |vpnName| & "> is currently toggled OFF."
            end if
        end tell
    end tell
'
result="$(ping -c 3 "$ping_ip")"
if echo "$result" | grep -q "ttl"
then
    echo "VPN appears to be connected successfully."
else 
    echo "VPN connection check FAILED!"
fi