#!/usr/bin/env bash

case "$1" in
    --popup)
        yad=$(yad --width 300 --entry --undecorated --title "System Logout" --image=gnome-shutdown --text "Choose action:" --entry-text "Shutdown" "Reboot" "Logout" "Suspend")

        case "$yad" in
            Shutdown)
                poweroff
                ;;
            Reboot)
                reboot
                ;;
            Suspend)
                hibernate
                ;;
            Logout)
                i3-msg exit
                ;;
        esac
        ;;
    *)
        echo "#1"
        ;;
esac
