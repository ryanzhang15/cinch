#!/usr/bin/env zsh

osascript -e '
    tell application "System Events"        
        tell current location of network preferences
            set vpn to first service whose kind is 17
            set vpnName to name of vpn
            set state to connected of current configuration of vpn
            if state then
                disconnect vpn
                log "The VPN <" & |vpnName| & "> is being toggled OFF..."
            else
                connect vpn
                log "The VPN <" & |vpnName| & "> is being toggled ON..."
            end if
        end tell
    end tell
'






