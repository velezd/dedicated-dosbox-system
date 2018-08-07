#!/bin/bash

tmp_selection=/tmp/selection_tmp
loop=true

# Update
_update () {
    # Get update script
    wget https://zveleba.cz/downloads/update-dos.sh.signed
    if [[ $? == 0 ]]; then
        # Verify and strip sign
        gpg --decrypt -o update-dos.sh update-dos.sh.signed
        if [[ $? == 0 ]]; then
            # Run update
            sudo bash update-dos.sh
        else
            dialog --msgbox "ERROR: Could not verify update." 5 45
        fi
    else
        dialog --msgbox "ERROR: Unable to download update." 5 45
    fi
}

# Display battery status in dialog window
_battery () {
	status=$(cat /sys/class/power_supply/BAT0/status)
	level=$(cat /sys/class/power_supply/BAT0/capacity)

	sleep 3 | dialog --title "Battery" \
		--gauge "$status" 6 40 $level
}

# un-mount all automounted devices
_umount () {
	devices=$(mount | grep /media/usb | cut -d\  -f 1)
	
	for device in $devices; do
		pumount $device
		if [ $? -eq 0 ]; then
			dialog --msgbox "$device can be safelly removed" 5 50
		else
			dialog --msgbox "ERROR: $device cannot be removed" 5 50
		fi
	done
}

while $loop; do

	dialog --title "Options" \
		--nocancel \
		--menu "" 14 40 8 \
		1 "Sound mixer" \
		2 "Configure DOSBOX" \
		3 "Eject USB" \
		4 "Battery info" \
		5 "Update system" \
		6 "Reboot" \
		7 "Shutdown" \
		8 "Exit options" 2> $tmp_selection

	selection=$(cat $tmp_selection)

	case $selection in
		1) alsamixer ;;
		2) nano /home/zbeny/.dosbox/dosbox-0.74.conf ;;
		3) _umount ;;
		4) _battery ;;
		5) _update ;;
		6) shutdown -r now ;;
		7) shutdown -h now ;;
		8) loop=false
	esac

done

