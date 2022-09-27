#!/bin/bash

function powermenu {

    options="Cancel\nShutdown\nReboot\nLogout"

    selected=$(echo -e $options | dmenu -p "Power Menu" -fn "JetBrains Mono Nerd Font-10" -sb '#259286' -sf '#002831' -nb '#002831' -nf '#259286')

    if [[ $selected = "Shutdown" ]]; then
        poweroff

    elif [[ $selected = "Reboot" ]]; then
        reboot
    
    elif [[ $selected = "Logout" ]]; then
        #name=$(whoami)
        pkill -KILL -u $(whoami)
         
    elif [[ $selected = "Cancel" ]]; then
        return
    
    fi

}

powermenu
